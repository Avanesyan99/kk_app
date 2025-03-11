<?php

namespace App\Http\Requests\Event;

use Illuminate\Foundation\Http\FormRequest;

class EventUpdateRequest extends FormRequest
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
            'title' => 'required | string',
            'type' => 'required | in:tournament, camp, seminar',
            'image' => 'required | file | mimes:jpg,jpeg,png | max:10250',
            'country_id' => '',
            'date' => 'required | date | after_or_equal:today',
            'is_active' => 'boolean',
            'info' => 'required | string'
        ];
    }
}
