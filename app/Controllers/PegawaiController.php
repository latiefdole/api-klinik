<?php

namespace App\Controllers;

use App\Models\MPegawai;
use App\Models\MLogin;

class PegawaiController extends RestfulController
{
    public function tambah()
     {
        $data = ['nip' => $this->request->getVar('nip')];
        $data += ['nama' => $this->request->getVar('nama')];
        $data += ['tanggal_lahir' => $this->request->getVar('tanggal_lahir')];
        $data += ['nomor_telepon' => $this->request->getVar('nomor_telepon')];
        $data += ['email' => $this->request->getVar('email')];
        $data += ['password' => $this->request->getVar('password')];
 
     $model = new MPegawai();
     $model->insert($data);
     $pegawai = $model->find($model->getInsertID());
     return $this->responseHasil(200, true, $pegawai);
     }
 
     public function list()
     {
     $model = new MPegawai();
     $pegawai = $model->findAll();
     return $this->responseHasil(200, true, $pegawai);
     }
 
     public function detail($id)
     {
     $model = new MPegawai();
     $pegawai = $model->find($id);
     return $this->responseHasil(200, true, $pegawai);
     }
 
     public function ubah($id)
     {
        $data = ['nip' => $this->request->getVar('nip')];
        $data += ['nama' => $this->request->getVar('nama')];
        $data += ['tanggal_lahir' => $this->request->getVar('tanggal_lahir')];
        $data += ['nomor_telepon' => $this->request->getVar('nomor_telepon')];
        $data += ['email' => $this->request->getVar('email')];
        $data += ['password' => $this->request->getVar('password')]; 
     $model = new MPegawai();
     $model->update($id, $data);
     $pegawai = $model->find($id);
 
     return $this->responseHasil(200, true, $pegawai);
     }
 
     public function hapus($id)
     {
      $model = new MPegawai();
      $modeltoken = new MLogin();
      $modeltoken->query("delete from login_token where pegawai_id =$id ");
      $pegawai = $model->delete($id);
    
     return $this->responseHasil(200, true, $pegawai);
     } 
}