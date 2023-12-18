<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');
$routes->post('/login', 'LoginController::login');
//grup poli
$routes->group('poli', function ($routes) {
    $routes->post('/', 'PoliController::tambah');
    $routes->get('/', 'PoliController::list');
    $routes->get('(:segment)', 'PoliController::detail/$1');
    $routes->put('(:segment)', 'PoliController::ubah/$1');
    $routes->delete('(:segment)', 'PoliController::hapus/$1');
});
   //grup pegawai
$routes->group('pegawai', function ($routes) {
    $routes->post('/', 'PegawaiController::tambah');
    $routes->get('/', 'PegawaiController::list');
    $routes->get('(:segment)', 'PegawaiController::detail/$1');
    $routes->put('(:segment)', 'PegawaiController::ubah/$1');
    $routes->delete('(:segment)', 'PegawaiController::hapus/$1');
});
//grup pasien
$routes->group('pasien', function ($routes) {
    $routes->post('/', 'PasienController::tambah');
    $routes->get('/', 'PasienController::list');
    $routes->get('(:segment)', 'PasienController::detail/$1');
    $routes->put('(:segment)', 'PasienController::ubah/$1');
    $routes->delete('(:segment)', 'PasienController::hapus/$1');
});
