<?php
require_once 'sao_dd.php';
class sao extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = sao_dd::load_dictionary();
        $this->relations  = sao_dd::load_relationships();
        $this->subclasses = sao_dd::load_subclass_info();
        $this->table_name = sao_dd::$table_name;
        $this->tables     = sao_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('SAO_Id, SAO_Name, SAO_Cont, SAO_Add, SAO_emailAdd');
            $this->set_values("?,?,?,?,?");

            $bind_params = array('issss',
                                 &$this->fields['SAO_Id']['value'],
                                 &$this->fields['SAO_Name']['value'],
                                 &$this->fields['SAO_Cont']['value'],
                                 &$this->fields['SAO_Add']['value'],
                                 &$this->fields['SAO_emailAdd']['value']);

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
            $this->set_update("SAO_Name = ?, SAO_Cont = ?, SAO_Add = ?, SAO_emailAdd = ?");
            $this->set_where("SAO_Id = ?");

            $bind_params = array('ssssi',
                                 &$this->fields['SAO_Name']['value'],
                                 &$this->fields['SAO_Cont']['value'],
                                 &$this->fields['SAO_Add']['value'],
                                 &$this->fields['SAO_emailAdd']['value'],
                                 &$this->fields['SAO_Id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("SAO_Id = ?");

        $bind_params = array('i',
                             &$this->fields['SAO_Id']['value']);

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
        $this->set_where("SAO_Id = ?");

        $bind_params = array('i',
                             &$this->fields['SAO_Id']['value']);

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
        $this->set_where("SAO_Id = ? AND (SAO_Id != ?)");

        $bind_params = array('ii',
                             &$this->fields['SAO_Id']['value'],
                             &$this->fields['SAO_Id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
