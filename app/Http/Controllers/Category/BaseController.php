<?php

namespace App\Http\Controllers\Category;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Services\Category\Service;

class BaseController extends Controller
{
    protected $service;

    public function __construct(Service $service) {
        $this->service = $service;
    }
}
