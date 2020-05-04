 <?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            //$table->id();
            $table->increments('id');
            $table->string('name');
            $table->bigInteger('price');
            $table->bigInteger('discount');
            $table->integer('gender_id');
            $table->integer('product_type_id');
            $table->string('custom');
            $table->integer('number');
            $table->string('size');
            $table->text('description');
            $table->string('image');
            $table->string('color');

            $table->enum('trend', ['yes', 'no'])->default('yes');

            $table->enum('status', ['active', 'inactive'])->default('active');
            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
}
