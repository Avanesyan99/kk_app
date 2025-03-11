<?php

namespace App\Http\Requests\Event;

use Illuminate\Foundation\Http\FormRequest;

class EventStoreRequest extends FormRequest
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
            'available' => 'required | in:international, teams-only',
            'image' => 'required | file | mimes:jpg,jpeg,png | max:10250',
            'country_id' => '',
            'date' => 'required | date | after_or_equal:today',
            'registration_start' => 'required | date | after_or_equal:today',
            'registration_end' => 'required | date | after:registration_start',
            'is_active' => 'boolean',
            'phone' => 'regex:/^\+?[0-9]{10,15}$/',
            'email' => 'email | unique:users,email',
            'websiteUrl' => 'url',
            'address' => 'string',
            'info' => 'required | text'
        ];
    }
}
