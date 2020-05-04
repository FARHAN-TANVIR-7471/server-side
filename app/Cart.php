<?php

namespace App;

use App\Model\Product;
use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    protected $guarded = [];

    public function product()
    {
        return $this->belongsTo('App\Model\Product');
    }
}
