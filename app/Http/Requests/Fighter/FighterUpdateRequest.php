<?php

namespace App\Http\Requests\Fighter;

use Illuminate\Foundation\Http\FormRequest;

class FighterUpdateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'f_name' => 'required | string',
            's_name' =>'required | string',
            'country_id' => '', 
            'weight' => 'required | integer',
            'age' => 'required | integer',
            'titles' => 'required | string',
        ];
    }
}
