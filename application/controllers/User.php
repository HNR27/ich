<?php
/**
* 
*/
class User extends CI_controller
{
	public function __construct()
	{
		parent ::__construct();
		$this->load->helper('url');
		$this->load->model('user_db');
	}
	
	public function form()
	{
		$this->load->view("form_v");
	}
	public function index()
	{
		$this->load->view("welcome_message");
	}
	public function Add()
	{
		echo $username = $this->input->post("username");echo "</br>";
		echo $password = $this->input->post("password");echo "</br>";
		echo $fullname = $this->input->post("fullname");echo "</br>";
		echo $level = $this->input->post("level");
		$data = array(
			'username' => $username,
			'password' => $password,
			'fullname' => $fullname,
			'level' => $level
		);
		$this->user_db->registersubmit($data);
	}
	public function index(){
		// $this->load->model('Dataku');

		$dt['tbuser']=$this->user_db->gets();

		$this->load->view('table' , $dt);
	}
	public function add(){}
	public function del($id){
		$this->user_db->del($id);
		redirect('user');
	}
	public function edit($id){}
	public function detail($id){}
}
}