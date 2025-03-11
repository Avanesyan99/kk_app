<?php

namespace App\Http\Controllers\Category;

use App\Http\Controllers\Category\BaseController;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Http\Requests\Category\CategoryStoreRequest;


class CategoryStoreController extends BaseController
{
    public function __invoke(CategoryStoreRequest $request)
    {
        $data = $request->validated();
        $this->service->store($data);
        return redirect()->route('admin_category.index' );
    }

}
