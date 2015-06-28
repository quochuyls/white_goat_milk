<?php namespace Modules\Admin\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
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
			'title_vi' => 'required',
			'description_vi' => 'required',
			'content_vi' => 'required',
			'price_vi' => 'required',
			'unit_vi' => 'required',
			'product_code_vi' => 'required',
			'thumbnail' => 'image',
			'icon' => 'image'
		];
	}

	public function messages()
	{
		return [
			'title_vi.required' => 'Bạn cần nhập tên sản phẩm.',
			'description_vi.required' => 'Bạn cẩn nhập mô tả sản phẩm.',
			'content_vi.required' => 'Bạn cẩn nhập bài viết về sản phẩm.',
			'price_vi.required' => 'Bạn cần nhập giá cho sản phẩm.',
			'unit_vi.required' => 'Bạn cần nhập đơn vị cho sản phẩm.',
			'product_code_vi.required' => 'Bạn cần nhập qui cách đóng gói cho sản phẩm.',
			'thumbnail.required' => 'Bạn cần nhập ảnh dại diện cho sản phẩm.',
			'thumbnail.image' => 'Hình ảnh đại diện phải là hình có đuôi mở rộng là PNG hoặc JPG.',
			'icon.image' => 'Icon sản phẩm phải là hình có đuôi mở rộng là PNG hoặc JPG.',



		];
	}

}
