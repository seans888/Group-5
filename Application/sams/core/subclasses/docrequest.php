<?php
require_once 'docrequest_dd.php';
class docrequest extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = docrequest_dd::load_dictionary();
        $this->relations  = docrequest_dd::load_relationships();
        $this->subclasses = docrequest_dd::load_subclass_info();
        $this->table_name = docrequest_dd::$table_name;
        $this->tables     = docrequest_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('docRequest_Id, docRequest_Title, docRequest_Desc, user_id');
            $this->set_values("?,?,?,?");

            $bind_params = array('issi',
                                 &$this->fields['docRequest_Id']['value'],
                                 &$this->fields['docRequest_Title']['value'],
                                 &$this->fields['docRequest_Desc']['value'],
                                 &$this->fields['user_id']['value']);

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
            $this->set_update("docRequest_Title = ?, docRequest_Desc = ?, user_id = ?");
            $this->set_where("docRequest_Id = ?");

            $bind_params = array('ssii',
                                 &$this->fields['docRequest_Title']['value'],
                                 &$this->fields['docRequest_Desc']['value'],
                                 &$this->fields['user_id']['value'],
                                 &$this->fields['docRequest_Id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("docRequest_Id = ?");

        $bind_params = array('i',
                             &$this->fields['docRequest_Id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function delete_many($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("");

        $bind_params = array('',
                             );

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
        $this->set_where("docRequest_Id = ?");

        $bind_params = array('i',
                             &$this->fields['docRequest_Id']['value']);

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


        $this->set_query_type('SELECT');
        $this->set_where("docRequest_Id = ? AND (docRequest_Id != ?)");

        $bind_params = array('ii',
                             &$this->fields['docRequest_Id']['value'],
                             &$this->fields['docRequest_Id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
