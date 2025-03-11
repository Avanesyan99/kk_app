<?php

namespace App\Http\Controllers\Fighter;

use App\Http\Controllers\Fighter\BaseController;
use App\Http\Requests\Fighter\FighterUpdateRequest;
use Illuminate\Http\Request;
use App\Models\Fighter;
use App\Models\Country;
use App\Models\Category;


class FighterUpdateController extends BaseController
{
    public function __invoke(FighterUpdateRequest $request,Fighter $fighter)
    {
        $data = $request->validated();
        $this->service->update($fighter, $data);
        
        return redirect()->route('fighter.show', $fighter->id);
    }
}