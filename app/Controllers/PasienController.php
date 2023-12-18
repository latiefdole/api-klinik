<?php

namespace App\Controllers;

use App\Models\MPasien;

class PasienController extends RestfulController
{
    public function tambah()
     {
        $data = ['nomor_rm' => $this->request->getVar('nomor_rm')];
        $data += ['nama' => $this->request->getVar('nama')];
        $data += ['tanggal_lahir' => $this->request->getVar('tanggal_lahir')];
        $data += ['nomor_telepon' => $this->request->getVar('nomor_telepon')];
        $data += ['alamat' => $this->request->getVar('alamat')];
        
     $model = new MPasien();
     $model->insert($data);
     $pasien = $model->find($model->getInsertID());
     return $this->responseHasil(200, true, $data);
     }
 
     public function list()
     {
     $model = new MPasien();
     //$pasien = $this->db->query("Select * from pasien");
     $pasien = $model->findAll(); //select * from pasien
     return $this->responseHasil(200, true, $pasien);
     }
 
     public function detail($id)
     {
     $model = new MPasien();
     $pasien = $model->find($id); //select * from pasien where id='$id'
     return $this->responseHasil(200, true, $pasien);
     }
 
     public function ubah($id)
     {
        $data = ['nomor_rm' => $this->request->getVar('nomor_rm')];
        $data += ['nama' => $this->request->getVar('nama')];
        $data += ['tanggal_lahir' => $this->request->getVar('tanggal_lahir')];
        $data += ['nomor_telepon' => $this->request->getVar('nomor_telepon')];
        $data += ['alamat' => $this->request->getVar('alamat')];
         
     $model = new MPasien();
     $model->update($id, $data);
     $pasien = $model->find($id);
 
     return $this->responseHasil(200, true, $pasien);
     }
 
 
     public function hapus($id)
     {
     $model = new MPasien();
     $pasien = $model->delete($id);
    
     return $this->responseHasil(200, true, $pasien);
     } 
}