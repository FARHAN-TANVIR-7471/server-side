<?php

namespace App\Http\Requests;

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
            'name' => 'required|max:255',
            'price' => 'required|max:10',
            'discount' => 'required|max:10',
            'gender_id' => 'required|max:10',
            'product_type_id' => 'required|max:10',
            'custom' => 'required|max:255',
            'number' => 'required|max:10',
            'size' => 'required|max:255',
            'description' => 'required',
            'image' => 'required|max:255',
            'color' => 'required|max:255',

        ];
    }
}
