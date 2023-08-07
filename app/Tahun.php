<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tahun extends Model
{
    protected $table = 'tahuns';
    protected $guarded = [];

    public function menu()
    {
        return $this->hasMany(Menu::class);
    }
}
