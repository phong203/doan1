<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Activate extends Model
{
    protected $table = 'Activates';
	protected $primaryKey = 'Id';
	protected $fillable = [];
	protected $hidden = [];
	public $incrementing = true;
	public $timestamps = false;
}