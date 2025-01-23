<?php

namespace App\Http\Controllers\Fighter;

use App\Http\Controllers\Controller;
use App\Services\Fighter\Service;
use Illuminate\Http\Request;

class BaseController extends Controller
{
    public $service;

    public function __construct(Service $service) 
    {
        $this->service = $service;
    }
}
