<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Fighter extends Model
{
    use SoftDeletes;

    protected $guarded = '';
}
