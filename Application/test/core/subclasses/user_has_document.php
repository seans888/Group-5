<?php
require_once 'user_has_document_dd.php';
class user_has_document extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = user_has_document_dd::load_dictionary();
        $this->relations  = user_has_document_dd::load_relationships();
        $this->subclasses = user_has_document_dd::load_subclass_info();
        $this->table_name = user_has_document_dd::$table_name;
        $this->tables     = user_has_document_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('User_User_Id, User_Org_Rep_Org_Rep_Id, User_Org_Rep_Org_Org_Id, User_Org_Rep_Org_SAO_SAO_Id, Document_Doc_Id, Document_docRequest_docRequest_Id, Document_docRequest_SAO_SAO_Id');
            $this->set_values("?,?,?,?,?,?,?");

            $bind_params = array('iiiiiii',
                                 &$this->fields['User_User_Id']['value'],
                                 &$this->fields['User_Org_Rep_Org_Rep_Id']['value'],
                                 &$this->fields['User_Org_Rep_Org_Org_Id']['value'],
                                 &$this->fields['User_Org_Rep_Org_SAO_SAO_Id']['value'],
                                 &$this->fields['Document_Doc_Id']['value'],
                                 &$this->fields['Document_docRequest_docRequest_Id']['value'],
                                 &$this->fields['Document_docRequest_SAO_SAO_Id']['value']);

            $this->stmt_prepare($bind_params);
        }

        $this->stmt_execute();
        return $this;
    }

    function edit($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('UPDATE');
            $this->set_update("User_User_Id = ?, User_Org_Rep_Org_Rep_Id = ?, User_Org_Rep_Org_Org_Id = ?, User_Org_Rep_Org_SAO_SAO_Id = ?, Document_Doc_Id = ?, Document_docRequest_docRequest_Id = ?, Document_docRequest_SAO_SAO_Id = ?");
            $this->set_where("User_User_Id = ? AND User_Org_Rep_Org_Rep_Id = ? AND User_Org_Rep_Org_Org_Id = ? AND User_Org_Rep_Org_SAO_SAO_Id = ? AND Document_Doc_Id = ? AND Document_docRequest_docRequest_Id = ? AND Document_docRequest_SAO_SAO_Id = ?");

            $bind_params = array('iiiiiiiiiiiiii',
                                 &$this->fields['User_User_Id']['value'],
                                 &$this->fields['User_Org_Rep_Org_Rep_Id']['value'],
                                 &$this->fields['User_Org_Rep_Org_Org_Id']['value'],
                                 &$this->fields['User_Org_Rep_Org_SAO_SAO_Id']['value'],
                                 &$this->fields['Document_Doc_Id']['value'],
                                 &$this->fields['Document_docRequest_docRequest_Id']['value'],
                                 &$this->fields['Document_docRequest_SAO_SAO_Id']['value'],
                                 $param['orig_User_User_Id'],
                                 $param['orig_User_Org_Rep_Org_Rep_Id'],
                                 $param['orig_User_Org_Rep_Org_Org_Id'],
                                 $param['orig_User_Org_Rep_Org_SAO_SAO_Id'],
                                 $param['orig_Document_Doc_Id'],
                                 $param['orig_Document_docRequest_docRequest_Id'],
                                 $param['orig_Document_docRequest_SAO_SAO_Id']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("User_User_Id = ? AND User_Org_Rep_Org_Rep_Id = ? AND User_Org_Rep_Org_Org_Id = ? AND User_Org_Rep_Org_SAO_SAO_Id = ? AND Document_Doc_Id = ? AND Document_docRequest_docRequest_Id = ? AND Document_docRequest_SAO_SAO_Id = ?");

        $bind_params = array('iiiiiii',
                             &$this->fields['User_User_Id']['value'],
                             &$this->fields['User_Org_Rep_Org_Rep_Id']['value'],
                             &$this->fields['User_Org_Rep_Org_Org_Id']['value'],
                             &$this->fields['User_Org_Rep_Org_SAO_SAO_Id']['value'],
                             &$this->fields['Document_Doc_Id']['value'],
                             &$this->fields['Document_docRequest_docRequest_Id']['value'],
                             &$this->fields['Document_docRequest_SAO_SAO_Id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function delete_many($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("User_User_Id = ? AND User_Org_Rep_Org_Rep_Id = ? AND User_Org_Rep_Org_Org_Id = ? AND User_Org_Rep_Org_SAO_SAO_Id = ? AND Document_Doc_Id = ? AND Document_docRequest_docRequest_Id = ? AND Document_docRequest_SAO_SAO_Id = ?");

        $bind_params = array('iiiiiii',
                             &$this->fields['User_User_Id']['value'],
                             &$this->fields['User_Org_Rep_Org_Rep_Id']['value'],
                             &$this->fields['User_Org_Rep_Org_Org_Id']['value'],
                             &$this->fields['User_Org_Rep_Org_SAO_SAO_Id']['value'],
                             &$this->fields['Document_Doc_Id']['value'],
                             &$this->fields['Document_docRequest_docRequest_Id']['value'],
                             &$this->fields['Document_docRequest_SAO_SAO_Id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function select()
    {
        $this->set_query_type('SELECT');
        $this->exec_fetch('array');
        return $this;
    }

    function check_uniqueness($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('SELECT');
        $this->set_where("User_User_Id = ? AND User_Org_Rep_Org_Rep_Id = ? AND User_Org_Rep_Org_Org_Id = ? AND User_Org_Rep_Org_SAO_SAO_Id = ? AND Document_Doc_Id = ? AND Document_docRequest_docRequest_Id = ? AND Document_docRequest_SAO_SAO_Id = ?");

        $bind_params = array('iiiiiii',
                             &$this->fields['User_User_Id']['value'],
                             &$this->fields['User_Org_Rep_Org_Rep_Id']['value'],
                             &$this->fields['User_Org_Rep_Org_Org_Id']['value'],
                             &$this->fields['User_Org_Rep_Org_SAO_SAO_Id']['value'],
                             &$this->fields['Document_Doc_Id']['value'],
                             &$this->fields['Document_docRequest_docRequest_Id']['value'],
                             &$this->fields['Document_docRequest_SAO_SAO_Id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }

    function check_uniqueness_for_editing($param)
    {
        $this->set_parameters($param);
        //Next two lines just to get the orig_ pkey(s) from $param
        $this->escape_arguments($param);
        extract($param);

        $this->set_query_type('SELECT');
        $this->set_where("User_User_Id = ? AND User_Org_Rep_Org_Rep_Id = ? AND User_Org_Rep_Org_Org_Id = ? AND User_Org_Rep_Org_SAO_SAO_Id = ? AND Document_Doc_Id = ? AND Document_docRequest_docRequest_Id = ? AND Document_docRequest_SAO_SAO_Id = ? AND (User_User_Id != '$orig_User_User_Id' OR User_Org_Rep_Org_Rep_Id != '$orig_User_Org_Rep_Org_Rep_Id' OR User_Org_Rep_Org_Org_Id != '$orig_User_Org_Rep_Org_Org_Id' OR User_Org_Rep_Org_SAO_SAO_Id != '$orig_User_Org_Rep_Org_SAO_SAO_Id' OR Document_Doc_Id != '$orig_Document_Doc_Id' OR Document_docRequest_docRequest_Id != '$orig_Document_docRequest_docRequest_Id' OR Document_docRequest_SAO_SAO_Id != '$orig_Document_docRequest_SAO_SAO_Id')");

        $bind_params = array('iiiiiii',
                             &$this->fields['User_User_Id']['value'],
                             &$this->fields['User_Org_Rep_Org_Rep_Id']['value'],
                             &$this->fields['User_Org_Rep_Org_Org_Id']['value'],
                             &$this->fields['User_Org_Rep_Org_SAO_SAO_Id']['value'],
                             &$this->fields['Document_Doc_Id']['value'],
                             &$this->fields['Document_docRequest_docRequest_Id']['value'],
                             &$this->fields['Document_docRequest_SAO_SAO_Id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
