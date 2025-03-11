<?php

namespace App\Services\Category;

use App\Models\Category;
use App\Http\Requests\Category\CategoryStoreRequest;

class Service {
    public function store($data) {
        $weight = $data['weight'];
        unset($data['weight']);
        $category = Category::create($data);
        return [
            'category' => $category,
            'weight' => $weight
        ];
    }

    public function update() {
        
    }
}