<?php
 namespace App\Controllers;
 
 use App\Models\MLogin;
 use App\Models\MPegawai;
 
 class LoginController extends RestfulController
 {
 
  public function login()
  {
  $email = $this->request->getVar('email');
  $password = $this->request->getVar('password');
 
  $model = new MPegawai();
  $pegawai = $model->where(['email' => $email])->first();
  if (!$pegawai) {
  return $this->responseHasil(400, false, "Email tidak ditemukan");
  }
  //if (!password_verify($password, $pegawai['password'])) {
    if ($password != $pegawai['password']) {
        return $this->responseHasil(400, false, "Password tidak valid");
  }
 
  $login = new MLogin();
  $auth_key = $this->RandomString();
  $login->save([
  'pegawai_id' => $pegawai['id'],
  'auth_key' => $auth_key
  ]);
  $data = [
  'token' => $auth_key,
  'user' => [
  'id' => $pegawai['id'],
  'nama' => $pegawai['nama'],
  'email' => $pegawai['email'],
  ]
  ];
  return $this->responseHasil(200, true, $data);
  }
 
  private function RandomString($length = 100)
  {
  $karakkter ='012345678dssd9abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
  $panjang_karakter = strlen($karakkter);
  $str = '';
 
  for ($i = 0; $i < $length; $i++) {
  $str .= $karakkter[rand(0, $panjang_karakter - 1)];
  }
  return $str;
  }
  } 