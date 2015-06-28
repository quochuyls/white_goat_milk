<?php namespace Modules\Admin\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class VideoRequest extends FormRequest
{

	/**
	 * Determine if the user is authorized to make this request.
	 *
	 * @return bool
	 */
	public function authorize()
	{
		return true;
	}

	/**
	 * Get the validation rules that apply to the request.
	 *
	 * @return array
	 */
	public function rules()
	{
		return [
			'title' => 'required',
			'url' => 'url|required'
		];
	}

	public function messages()
	{
		return [
			'title.required' => 'Bạn cần nhập tên video.',
			'url.required' => 'Bạn cần nhập đường dẫn của video.',
			'url.url' => 'Nhập đúng dạng đường dẫn của video.',
			'position.required' => 'Bạn cần nhập giá cho sản phẩm.'
		];
	}

}
