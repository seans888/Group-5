<?php
require_once 'org_dd.php';
class org extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = org_dd::load_dictionary();
        $this->relations  = org_dd::load_relationships();
        $this->subclasses = org_dd::load_subclass_info();
        $this->table_name = org_dd::$table_name;
        $this->tables     = org_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('Org_Id, Org_Name, Org_Representative, Org_Members, Org_Contact, Org_Dept, SAO_SAO_Id');
            $this->set_values("?,?,?,?,?,?,?");

            $bind_params = array('isssssi',
                                 &$this->fields['Org_Id']['value'],
                                 &$this->fields['Org_Name']['value'],
                                 &$this->fields['Org_Representative']['value'],
                                 &$this->fields['Org_Members']['value'],
                                 &$this->fields['Org_Contact']['value'],
                                 &$this->fields['Org_Dept']['value'],
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
            $this->set_update("Org_Name = ?, Org_Representative = ?, Org_Members = ?, Org_Contact = ?, Org_Dept = ?, SAO_SAO_Id = ?");
            $this->set_where("Org_Id = ?");

            $bind_params = array('sssssii',
                                 &$this->fields['Org_Name']['value'],
                                 &$this->fields['Org_Representative']['value'],
                                 &$this->fields['Org_Members']['value'],
                                 &$this->fields['Org_Contact']['value'],
                                 &$this->fields['Org_Dept']['value'],
                                 &$this->fields['SAO_SAO_Id']['value'],
                                 &$this->fields['Org_Id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("Org_Id = ?");

        $bind_params = array('i',
                             &$this->fields['Org_Id']['value']);

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
        $this->set_where("Org_Id = ?");

        $bind_params = array('i',
                             &$this->fields['Org_Id']['value']);

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
        $this->set_where("Org_Id = ? AND (Org_Id != ?)");

        $bind_params = array('ii',
                             &$this->fields['Org_Id']['value'],
                             &$this->fields['Org_Id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
