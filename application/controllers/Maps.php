<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Maps extends CI_Controller {

	public function __construct() {
		parent::__construct();
        $this->load->model('wisata_model');

	}
    function index()
    {
        $data['wisata']=$this->wisata_model->get();
        $this->load->view("GIS/map",$data);
    }
    function cari(){
        $nama = $this->input->post('search');
        $data['wisata']=$this->wisata_model->search($nama);
        $this->load->view("GIS/detail",$data);
    }
    
}