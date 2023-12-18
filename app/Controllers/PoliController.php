<?php

namespace App\Controllers;

use App\Models\MPoli;

class PoliController extends RestfulController
{
    public function tambah()
     {
     $data = ['nama_poli' => $this->request->getVar('nama_poli')];
 
     $model = new MPoli();
     $model->insert($data);
     $poli = $model->find($model->getInsertID());
     return $this->responseHasil(200, true, $poli);
     }
 
     public function list()
     {
     $model = new MPoli();
     $poli = $model->findAll();
     return $this->responseHasil(200, true, $poli);
     }
 
     public function detail($id)
     {
     $model = new MPoli();
     $poli = $model->find($id);
     return $this->responseHasil(200, true, $poli);
     }
 
     public function ubah($id)
     {
     $data = ['nama_poli' => $this->request->getVar('nama_poli')];
 
     $model = new MPoli();
     $model->update($id, $data);
     $poli = $model->find($id);
 
     return $this->responseHasil(200, true, $poli);
     }
 
 
     public function hapus($id)
     {
     $model = new MPoli();
     $poli = $model->delete($id);
    
     return $this->responseHasil(200, true, $poli);
     } 
}