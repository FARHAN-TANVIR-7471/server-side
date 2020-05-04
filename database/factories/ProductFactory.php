<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model\Product;
use Faker\Generator as Faker;

$factory->define(Product::class, function (Faker $faker) {
    return [
        'name' => $faker -> word,
        'price' => $faker -> numberBetween(100,1000),
        'discount' => $faker -> numberBetween(10,30),
        'gender_id' => $faker -> numberBetween($min = 1, $max = 2),
        'product_type_id' => $faker -> numberBetween($min = 1, $max = 9),
        'custom' => $faker -> word,
        'number' => $faker ->  randomDigit,
        'size' => $faker -> word,
        'description' => $faker -> paragraph,
        'image' => $faker -> imageUrl($width = 640, $height = 480),
        'color' => $faker -> colorName
    ];
});
