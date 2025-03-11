<?php

namespace App\Http\Controllers\Fighter;

use App\Http\Controllers\Fighter\BaseController;
use App\Http\Requests\Fighter\FighterStoreRequest;
use Illuminate\Http\Request;
use App\Models\Fighter;
use App\Models\Country;
use App\Models\Category;


class FIghterStoreController extends BaseController
{
    public function __invoke(FighterStoreRequest $request)
    {
        $data = $request->validated();
        $this->service->store($data);
        return redirect()->route('fighter.index');
    }
}