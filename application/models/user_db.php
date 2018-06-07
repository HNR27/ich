<?php 

/**
* 
*/
class user_db extends CI_Model
{
	
	public function __construct()
	{
		$this->load->database();
	}
	public function registersubmit($data)
	{
		$this->db->insert('f_user', $data);
	}

	function gets(){
		return $this->db->get('user')->result();
	}
	function get($id){}
	function add(){}
	function del($id){
		$this->db->delete("user" ,["id"=>$id]);
	}
	function edit($id){
		
	}
}
 ?>