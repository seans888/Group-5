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
            $this->set_fields('id, title, description, SAO_SAO_Id');
            $this->set_values("?,?,?,?");

            $bind_params = array('issi',
                                 &$this->fields['id']['value'],
                                 &$this->fields['title']['value'],
                                 &$this->fields['description']['value'],
                                 &$this->fields['SAO_SAO_Id']['value']);

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
            $this->set_update("title = ?, description = ?, SAO_SAO_Id = ?");
            $this->set_where("id = ? AND SAO_SAO_Id = ?");

            $bind_params = array('ssiii',
                                 &$this->fields['title']['value'],
                                 &$this->fields['description']['value'],
                                 &$this->fields['SAO_SAO_Id']['value'],
                                 &$this->fields['id']['value'],
                                 $param['orig_SAO_SAO_Id']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("id = ? AND SAO_SAO_Id = ?");

        $bind_params = array('ii',
                             &$this->fields['id']['value'],
                             &$this->fields['SAO_SAO_Id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function delete_many($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("SAO_SAO_Id = ?");

        $bind_params = array('i',
                             &$this->fields['SAO_SAO_Id']['value']);

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
        $this->set_where("id = ? AND SAO_SAO_Id = ?");

        $bind_params = array('ii',
                             &$this->fields['id']['value'],
                             &$this->fields['SAO_SAO_Id']['value']);

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
        $this->set_where("id = ? AND SAO_SAO_Id = ? AND (id != ? OR SAO_SAO_Id != '$orig_SAO_SAO_Id')");

        $bind_params = array('iii',
                             &$this->fields['id']['value'],
                             &$this->fields['SAO_SAO_Id']['value'],
                             &$this->fields['id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
