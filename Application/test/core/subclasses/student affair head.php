<?php
require_once 'student affair head_dd.php';
class student affair head extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = student affair head_dd::load_dictionary();
        $this->relations  = student affair head_dd::load_relationships();
        $this->subclasses = student affair head_dd::load_subclass_info();
        $this->table_name = student affair head_dd::$table_name;
        $this->tables     = student affair head_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('SAH_Id, SAH_Name, SAH_Cont, SAH_Add, SAH_emailAdd');
            $this->set_values("?,?,?,?,?");

            $bind_params = array('issss',
                                 &$this->fields['SAH_Id']['value'],
                                 &$this->fields['SAH_Name']['value'],
                                 &$this->fields['SAH_Cont']['value'],
                                 &$this->fields['SAH_Add']['value'],
                                 &$this->fields['SAH_emailAdd']['value']);

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
            $this->set_update("SAH_Name = ?, SAH_Cont = ?, SAH_Add = ?, SAH_emailAdd = ?");
            $this->set_where("SAH_Id = ?");

            $bind_params = array('ssssi',
                                 &$this->fields['SAH_Name']['value'],
                                 &$this->fields['SAH_Cont']['value'],
                                 &$this->fields['SAH_Add']['value'],
                                 &$this->fields['SAH_emailAdd']['value'],
                                 &$this->fields['SAH_Id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("SAH_Id = ?");

        $bind_params = array('i',
                             &$this->fields['SAH_Id']['value']);

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
        $this->set_where("SAH_Id = ?");

        $bind_params = array('i',
                             &$this->fields['SAH_Id']['value']);

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
        $this->set_where("SAH_Id = ? AND (SAH_Id != ?)");

        $bind_params = array('ii',
                             &$this->fields['SAH_Id']['value'],
                             &$this->fields['SAH_Id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
