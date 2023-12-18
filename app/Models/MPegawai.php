<?php
namespace App\Models;
use CodeIgniter\Model;
class MPegawai extends Model
{
    protected $table = 'pegawai';
    protected $primaryKey = 'id'; 
    protected $allowedFields = ['nip','nama','tanggal_lahir','nomor_telepon', 'email', 'password'];
}