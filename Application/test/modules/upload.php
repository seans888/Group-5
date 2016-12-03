<?php
	require 'path.php';
	init_cobalt('Add document');
	require 'subclasses/document.php';
	require 'subclasses/document_html.php';
	require_once 'global_config.php';

	if(xsrf_guard()){
		init_var($_POST['btn_cancel']);
		init_var($_POST['btn_submit']);

		$dbh_document = new document();
		$object_name = $dbh_document;

		if($_POST['btn_cancel']){
			redirect('../modules/document/listview_document.php?query_string');
		}

		if($_POST['btn_submit']){
			$arr_form_data['file_name'] = $_FILES['file'];
			$arr_form_data['description'] = $_POST['desc'];
			$arr_form_data['share_option'] = $_POST['name'];

			$message .= $dbh_document->sanitize($arr_form_data)->lst_error;
			extract($arr_form_data);

			if($dbh_document->check_uniqueness($arr_form_data)->is_unique){
				//No duplicate, add record to db
			}else{
				$message = "";
			}

			if($message == ""){
				$datacon = new data_abstraction();
				$datacon->set_query_type("INSERT");
				$datacon->set_fields(`name`, `description`, `file_size`, `share_option_id`);
				$datacon->set_values("?", "?", "?", "?");

				$bind_params = array("ssii", &$arr_form_data['file_name'], &$arr_form_data['description'], 1000, 1);
				$datacon->stmt_prepare($bind_params);
				$datacon->stmt_execute();
			}
		}
	}

	$dbh_document = new document;
	$object_name = 'dbh_document';
	require 'components/create_form_data.php';

	$html = new document_html();

	$html->draw_header('Upload Document');
	$html->draw_container_div_start();
	$html->draw_fieldset_header("Upload Document");
	$html->draw_fieldset_body_start();

	echo "<table>";
		$html->draw_file_upload('File','file',FALSE,TRUE,'');
		$query = "SELECT name FROM share_option";
		$html->draw_select_field_from_query($query,'name',array('name'),'Share With','name',FALSE,TRUE,'','');
		$html->draw_text_field('Description','desc',FALSE,'textarea',TRUE,'');
	echo "</table>";

	$html->draw_fieldset_body_end();
	$html->draw_fieldset_footer_start();
	$html->draw_submit_cancel();
	$html->draw_fieldset_footer_end();
?>

