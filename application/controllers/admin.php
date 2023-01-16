<?php defined('BASEPATH') OR exit('No direct script access allowed');

class admin extends CI_Controller {

	public function __construct() {
		parent::__construct();
        $this->load->model('Wisata_model');
	}
    function index()
    {
        $data['tb_wisata'] = $this->Wisata_model->get();
        $this->load->view("auth/dashboard", $data);
    }

    public function login()
    {
        $this->load->view("auth/sign-in");
    }

    public function cekLogin()
    {
        if ($this->input->post('username') == "Admin" && $this->input->post('password') == "Admin"){
            redirect ('index.php/admin');
        } else {
            redirect('index.php/admin/login');
        }
    }

    public function hapus($id)
	{
		$this->Wisata_model->delete($id);
		$error = $this->db->error();
		if ($error['code'] != 0) {
			$this->session->set_flashdata('message', '<div class="alert alert-danger text-white font-weight-bold" role="alert"><i class="ni ni-books"></i>Data User tidak dapat dihapus (sudah berelasi)!</div>');
		} else {
			$this->session->set_flashdata('message', '<div class="alert alert-success text-white font-weight-bold" role="alert"><i
			class="ni ni-like-2"></i>Data User Berhasil Dihapus!</div>');
		}
		redirect('index.php/admin');
	}

    public function tambah()
	{
		$data['tb_wisata'] = $this->Wisata_model->get();
		$this->form_validation->set_rules('latitude', 'Latitude', 'required', ['required' => 'Latitude Wajib di isi']);
		$this->form_validation->set_rules('longitude', 'Longitude', 'required', ['required' => 'Longitude prodi Wajib di isi']);
		$this->form_validation->set_rules('nama', 'Nama', 'required', ['required' => 'Nama Jalan Wajib di isi']);
		$this->form_validation->set_rules('alamat', 'Alamat', 'required', ['required' => 'Alamat Wajib di isi']);
		$this->form_validation->set_rules('foto','Foto', 'required', ['required' => 'Url Gambar Wajib Di Isi']);
		$this->form_validation->set_rules('kategori','kategori', 'required', ['required' => 'Kategori Wajib Di Isi']);
		if ($this->form_validation->run() == false) {
			$this->load->view("wisata/tambah_wisata", $data);
		} else {
			$data = [
				'latitude' => $this->input->post('latitude'),
				'longitude' => $this->input->post('longitude'),
				'nama' => $this->input->post('nama'),
				'alamat' => $this->input->post('alamat'),
				'foto' => $this->input->post('foto'),
				'kategori' => $this->input->post('kategori'),
			];
			$this->Wisata_model->insert($data);
			$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data Jalan Berhasil Ditambah!</div>');
			redirect('index.php/admin');
		}
	}

	public function edit($id)
	{
		$data['tb_wisata'] = $this->Wisata_model->getById2($id);
		$this->form_validation->set_rules('latitude', 'Latitude', 'required', ['required' => 'Latitude Wajib di isi']);
		$this->form_validation->set_rules('longitude', 'Longitude', 'required', ['required' => 'Longitude prodi Wajib di isi']);
		$this->form_validation->set_rules('nama', 'Nama', 'required', ['required' => 'Nama Jalan Wajib di isi']);
		$this->form_validation->set_rules('alamat', 'Alamat', 'required', ['required' => 'Alamat Wajib di isi']);
		$this->form_validation->set_rules('foto','Foto', 'required', ['required' => 'Url Gambar Wajib Di Isi']);
		$this->form_validation->set_rules('kategori','kategori', 'required', ['required' => 'Kategori Wajib Di Isi']);
		if ($this->form_validation->run() == false) {
			$this->load->view("wisata/edit_wisata", $data);
		} else {
			$data = [
				'latitude' => $this->input->post('latitude'),
				'longitude' => $this->input->post('longitude'),
				'nama' => $this->input->post('nama'),
				'alamat' => $this->input->post('alamat'),
				'foto' => $this->input->post('foto'),
				'kategori' => $this->input->post('kategori'),
			];
            $id = $this->input->post('id');
			$this->Wisata_model->update(['id' => $id], $data);
			redirect('index.php/admin');
			}
		}
}