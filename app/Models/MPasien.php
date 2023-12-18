<?php
namespace App\Models;
use CodeIgniter\Model;
class MPasien extends Model
{
    protected $table = 'pasien';
    protected $primaryKey = 'id'; 
    protected $allowedFields = ['nomor_rm','nama','tanggal_lahir','nomor_telepon', 'alamat'];
}