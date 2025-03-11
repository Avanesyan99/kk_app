<?php

namespace App\Http\Controllers\Admin\Fighter;

use App\Http\Controllers\Controller;
use App\Services\Event\Service;
use Illuminate\Http\Request;

class BaseController extends Controller
{
    public $service;

    public function __construct(Service $service) {
        $this->service = $service;
    }
}
 