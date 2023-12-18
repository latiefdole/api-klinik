<?php
namespace App\Models;
use CodeIgniter\Model;
class MPoli extends Model
{
    protected $table = 'poli';
    protected $primaryKey = 'id'; 
    protected $allowedFields = ['nama_poli'];
}