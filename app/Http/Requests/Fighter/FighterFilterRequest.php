<?php

namespace App\Http\Requests\Fighter;

use Illuminate\Foundation\Http\FormRequest;

class FighterFilterRequest extends FormRequest
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
            'f_name' => 'string',
            's_name' =>'string',
            'country_id' => '',
            'weight' => 'integer',
            'age' => 'integer',
            'titles' => 'string'
        ];
    }
}
