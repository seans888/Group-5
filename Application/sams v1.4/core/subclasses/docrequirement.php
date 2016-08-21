<?php
require_once 'docrequirement_dd.php';
class docrequirement extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = docrequirement_dd::load_dictionary();
        $this->relations  = docrequirement_dd::load_relationships();
        $this->subclasses = docrequirement_dd::load_subclass_info();
        $this->table_name = docrequirement_dd::$table_name;
        $this->tables     = docrequirement_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('id, name, spec, User_id, User_Person_id, User_Person_Org_id, Org_id, Org_calEvent_id, Org_calEvent_User_id, Org_calEvent_User_Person_id, Org_calEvent_User_Person_Org_id');
            $this->set_values("?,?,?,?,?,?,?,?,?,?,?");

            $bind_params = array('issiiiiiiii',
                                 &$this->fields['id']['value'],
                                 &$this->fields['name']['value'],
                                 &$this->fields['spec']['value'],
                                 &$this->fields['User_id']['value'],
                                 &$this->fields['User_Person_id']['value'],
                                 &$this->fields['User_Person_Org_id']['value'],
                                 &$this->fields['Org_id']['value'],
                                 &$this->fields['Org_calEvent_id']['value'],
                                 &$this->fields['Org_calEvent_User_id']['value'],
                                 &$this->fields['Org_calEvent_User_Person_id']['value'],
                                 &$this->fields['Org_calEvent_User_Person_Org_id']['value']);

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
            $this->set_update("id = ?, name = ?, spec = ?, User_id = ?, User_Person_id = ?, User_Person_Org_id = ?, Org_id = ?, Org_calEvent_id = ?, Org_calEvent_User_id = ?, Org_calEvent_User_Person_id = ?, Org_calEvent_User_Person_Org_id = ?");
            $this->set_where("id = ?");

            $bind_params = array('issiiiiiiiii',
                                 &$this->fields['id']['value'],
                                 &$this->fields['name']['value'],
                                 &$this->fields['spec']['value'],
                                 &$this->fields['User_id']['value'],
                                 &$this->fields['User_Person_id']['value'],
                                 &$this->fields['User_Person_Org_id']['value'],
                                 &$this->fields['Org_id']['value'],
                                 &$this->fields['Org_calEvent_id']['value'],
                                 &$this->fields['Org_calEvent_User_id']['value'],
                                 &$this->fields['Org_calEvent_User_Person_id']['value'],
                                 &$this->fields['Org_calEvent_User_Person_Org_id']['value'],
                                 $param['orig_id']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("id = ?");

        $bind_params = array('i',
                             &$this->fields['id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function delete_many($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("id = ?");

        $bind_params = array('i',
                             &$this->fields['id']['value']);

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
        $this->set_where("id = ?");

        $bind_params = array('i',
                             &$this->fields['id']['value']);

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
        $this->set_where("id = ? AND (id != '$orig_id')");

        $bind_params = array('i',
                             &$this->fields['id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
