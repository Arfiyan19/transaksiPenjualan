<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class kategori extends Model
{
    protected $table = 'kategori';
    // protected $fillable = ['nama_kategori'];

    public function menu()
    {
        return $this->hasMany(Menu::class);
    }
}
