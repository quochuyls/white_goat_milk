<?php namespace Modules\Admin\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Support\Facades\Input;
use Modules\Admin\Entities\Videos;
use Pingpong\Modules\Routing\Controller;
use Session;
use Modules\Admin\Http\Requests\VideoRequest;
use Modules\Admin\Helpers\NiceSlug as NiceSlug;

class VideosController extends Controller
{

	const YOUTUBE_DATA_URL = 'http://www.youtube.com/oembed?url={URL}&format={FORMAT}';

	public function __construct()
	{
		$this->middleware('adminAuth');
	}

	public function index()
	{
		$videos = \Modules\Admin\Entities\Videos::publish();
		return view('admin::videos.index', compact('videos'));
	}


	public function edit($id)
	{
		$video = Videos::find($id);
		//dd($video);
		//dd(strtotime($video->publish_at));
		return view('admin::videos.edit', compact('video'));
	}


	public function create()
	{
		$video = new Videos();
		return view('admin::videos.create',  compact('video'));

	}


	public function update(VideoRequest $request)
	{
		$data = $request->all();
		$id = Input::get('id');

		$data['slug'] = NiceSlug::to_slug($request->get('title'));
		if($request->has('publish_at') && $request->get('publish_at') != '' ){
			$data['publish_at'] = date('Y-m-d 00:00:00', strtotime($request->get('publish_at')));
		}
        $now = Carbon::now();
        $data['updated_at'] = $now;

		Videos::find($id)->update($data);
		return \Redirect::route('admin.video')->with('message', 'Sửa video thành công');
	}
	public function show($id)
	{
		$video = Videos::find($id);
		return view('admin::videos.show', compact('video'));

	}

	public function store(VideoRequest $request)
	{
		$video = Videos::create($request->all());
		if ($request->has('publish_at') && $request->get('publish_at') != '') {
			$video->publish_at = date('Y-m-d 00:00:00', strtotime($request->get('publish_at')));
		}
		$video->slug = NiceSlug::to_slug($video->title);
		$video->save();
		return \Redirect::route('admin.video')->with('message', 'Thêm video mới thành công');
	}

	public function destroy($id)
	{
		Videos::find($id)->update(['delete_flag' => 1]);
		return \Redirect::route('admin.video')->with('message', 'Xóa video thành công');

	}


	public function ajaxGetVideo()
	{
		$url = trim(Input::get('url'));
		$videoId = $this->getYoutubeIdFromUrl($url);
		$format = 'json';
		$result = [
			'success' => 0,
			'message' => 'Canot see video',
			'video' => ''
		];

		if ($videoId) {
			$requestUrl = str_replace(['{URL}', '{FORMAT}'], [$url, $format], self::YOUTUBE_DATA_URL);
			$data = $this->_get_url($requestUrl);
			if (!isset($data->responseText)) {
				$result['video'] = json_decode($data);
				$result['id'] = $videoId;
				$result['message'] = 'See video file';
				$result['success'] = 1;
			}
		}
		return json_encode($result);
	}

	/**
	 * @param $url
	 * @param int $javascript_loop
	 * @param int $timeout
	 * @return array
	 */

	private function _get_url($url, $javascript_loop = 0, $timeout = 5)
	{
		$url = str_replace("&amp;", "&", urldecode(trim($url)));

		$cookie = tempnam("/tmp", "CURLCOOKIE");
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows; U; Windows NT 5.1; rv:1.7.3) Gecko/20041001 Firefox/0.10.1");
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_COOKIEJAR, $cookie);
		curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
		curl_setopt($ch, CURLOPT_ENCODING, "");
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_AUTOREFERER, true);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);    # required for https urls
		curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
		curl_setopt($ch, CURLOPT_TIMEOUT, $timeout);
		curl_setopt($ch, CURLOPT_MAXREDIRS, 10);
		$content = curl_exec($ch);
		$response = curl_getinfo($ch);
		curl_close($ch);
		return $content;
	}

	private function getYoutubeIdFromUrl($url)
	{
		$url = trim($url);
		$pattern =
			'%^# Match any youtube URL
    (?:https?://)?  # Optional scheme. Either http or https
    (?:www\.)?      # Optional www subdomain
    (?:             # Group host alternatives
      youtu\.be/    # Either youtu.be,
    | youtube\.com  # or youtube.com
      (?:           # Group path alternatives
        /embed/     # Either /embed/
      | /v/         # or /v/
      | .*v=        # or /watch\?v=
      )             # End path alternatives.
    )               # End host alternatives.
    ([\w-]{10,12})  # Allow 10-12 for 11 char youtube id.
    ($|&).*         # if additional parameters are also in query string after video id.
    $%x';
		$result = preg_match($pattern, $url, $matches);
		if ($result) {
			return $matches[1];
		}
		return false;
	}
}
