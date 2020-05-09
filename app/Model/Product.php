<?php

namespace App\Model;

use App\Model\Review;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
	protected $fillable = [
		'name','price','discount','gender_id','product_type_id','custom','number','size','description','image','color'
	];

    public function reviews(){

    	return $this->hasMany(Review::class);
    }
}
