<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TestDatabase extends Model
{
    use HasFactory;
    // Khai bao db muốn sài 
    protected $connection = 'mysql2';
    protected $table = 'user';
    protected $fillable = [
        'name',
        'address',
        'phone',
    ];
}
