<?php namespace Pingpong\Modules\Process;

use Illuminate\Console\Command;
use Illuminate\Support\Str;
use Pingpong\Modules\Repository;
use Symfony\Component\Process\Process;

class Installer {

    /**
     * The module name.
     * 
     * @var string
     */
    protected $name;
    
    /**
     * The version of module being installed.
     * 
     * @var string
     */
    protected $version;

    /**
     * The module repository instance.
     * 
     * @var \Pingpong\Modules\Repository
     */
    protected $repository;

    /**
     * The console command instance.
     * 
     * @var \Illuminate\Console\Command
     */
    protected $console;

    protected $path;

    /**
     * The constructor.
     * 
     * @param string  $name
     * @param string  $version
     * @param string  $type
     * @param boolean $tree
     */
    public function __construct($name, $version = null, $type = null, $tree = false)
    {
        $this->name = $name;
        $this->version = $version;
        $this->type = $type;
        $this->tree = $tree;
    }

    /**
     * Set destination path.
     * 
     * @param string $path
     * @return $this
     */
    public function setPath($path)
    {
        $this->path = $path;

        return $this;
    }

    /**
     * Set the module repository instance.
     * 
     * @param \Pingpong\Modules\Repository $repository
     * @return $this
     */
    public function setRepository(Repository $repository)
    {
        $this->repository = $repository;

        return $this;
    }

    /**
     * Set console command instance.
     * 
     * @param \Illuminate\Console\Command $console
     * @return $this
     */
    public function setConsole(Command $console)
    {
        $this->console = $console;

        return $this;
    }

    /**
     * Run the installation process.
     * 
     * @return \Symfony\Component\Process\Process
     */
    public function run()
    {
        switch ($this->type) {
            case 'github':
            case 'bitbucket':
                if ($this->tree) {
                    return $this->installViaSubtree();
                }

                return $this->installViaGit();
                break;
            
            default:
                return $this->installViaComposer();
                break;
        }
    }

    /**
     * Get destination path.
     * 
     * @return string
     */
    public function getDestinationPath()
    {
        if ($this->path) {
            return $this->path;
        }

        return $this->repository->getModulePath($this->getModuleName());
    }

    /**
     * Get git repo url.
     * 
     * @return string|null
     */
    public function getRepoUrl()
    {
        switch ($this->type) {
            case 'github':
                return "git@github.com:$this->name.git";
                break;

            case 'bitbucket':
                return "git@bitbucket.org:$this->name.git";
                break;
            
            default:
                return null;
                break;
        }
    }

    /**
     * Get branch name.
     * 
     * @return string
     */
    public function getBranch()
    {
        return is_null($this->version) ? 'master' : $this->version;
    }

    /**
     * Get module name.
     * 
     * @return string
     */
    public function getModuleName()
    {
        $parts = explode('/', $this->name);

        return Str::studly(end($parts));   
    }

    /**
     * Get composer package name.
     * 
     * @return string
     */
    public function getPackageName()
    {
        if (is_null($this->version)) {
            return $this->name . ':dev-master';
        }

        return $this->name . ':' . $this->version;
    }

    /**
     * Install the module via git.
     * 
     * @return \Symfony\Component\Process\Process
     */
    public function installViaGit()
    {
        $process = new Process(sprintf(
            'cd %s && git clone %s %s && git checkout %s',
            base_path(),
            $this->getRepoUrl(),
            $this->getDestinationPath(),
            $this->getBranch()
        ));

        $process->run(function($type, $line)
        {
            $this->console->line($line);
        });

        return $process;
    }

    /**
     * Install the module via git subtree.
     * 
     * @return \Symfony\Component\Process\Process
     */
    public function installViaSubtree()
    {
        $process = new Process(sprintf(
            'cd %s && git remote add %s %s && git subtree add --prefix=%s --squash %s %s',
            base_path(),
            $this->getModuleName(),
            $this->getRepoUrl(),
            $this->getDestinationPath(),
            $this->getModuleName(),
            $this->getBranch()
        ));

        $process->run(function($type, $line)
        {
            $this->console->line($line);
        });

        return $process;
    }

    /**
     * Install the module via composer.
     * 
     * @return \Symfony\Component\Process\Process
     */
    public function installViaComposer()
    {
        $process = new Process(sprintf(
            'cd %s && composer require %s',
            base_path(),
            $this->getPackageName()
        ));

        $process->run(function($type, $line)
        {
            $this->console->line($line);
        });

        return $process;
    }

}