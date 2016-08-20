<?php
require_once 'org_rep_dd.php';
class org_rep extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = org_rep_dd::load_dictionary();
        $this->relations  = org_rep_dd::load_relationships();
        $this->subclasses = org_rep_dd::load_subclass_info();
        $this->table_name = org_rep_dd::$table_name;
        $this->tables     = org_rep_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('Org_Rep_Id, Org_Rep_Lname, Org_Rep_Fname, Org_Rep_Midinit, Org_Org_Id, Org_SAO_SAO_Id');
            $this->set_values("?,?,?,?,?,?");

            $bind_params = array('isssii',
                                 &$this->fields['Org_Rep_Id']['value'],
                                 &$this->fields['Org_Rep_Lname']['value'],
                                 &$this->fields['Org_Rep_Fname']['value'],
                                 &$this->fields['Org_Rep_Midinit']['value'],
                                 &$this->fields['Org_Org_Id']['value'],
                                 &$this->fields['Org_SAO_SAO_Id']['value']);

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
            $this->set_update("Org_Rep_Lname = ?, Org_Rep_Fname = ?, Org_Rep_Midinit = ?, Org_Org_Id = ?, Org_SAO_SAO_Id = ?");
            $this->set_where("Org_Rep_Id = ? AND Org_Org_Id = ? AND Org_SAO_SAO_Id = ?");

            $bind_params = array('sssiiiii',
                                 &$this->fields['Org_Rep_Lname']['value'],
                                 &$this->fields['Org_Rep_Fname']['value'],
                                 &$this->fields['Org_Rep_Midinit']['value'],
                                 &$this->fields['Org_Org_Id']['value'],
                                 &$this->fields['Org_SAO_SAO_Id']['value'],
                                 &$this->fields['Org_Rep_Id']['value'],
                                 $param['orig_Org_Org_Id'],
                                 $param['orig_Org_SAO_SAO_Id']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("Org_Rep_Id = ? AND Org_Org_Id = ? AND Org_SAO_SAO_Id = ?");

        $bind_params = array('iii',
                             &$this->fields['Org_Rep_Id']['value'],
                             &$this->fields['Org_Org_Id']['value'],
                             &$this->fields['Org_SAO_SAO_Id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function delete_many($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("Org_Org_Id = ? AND Org_SAO_SAO_Id = ?");

        $bind_params = array('ii',
                             &$this->fields['Org_Org_Id']['value'],
                             &$this->fields['Org_SAO_SAO_Id']['value']);

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
        $this->set_where("Org_Rep_Id = ? AND Org_Org_Id = ? AND Org_SAO_SAO_Id = ?");

        $bind_params = array('iii',
                             &$this->fields['Org_Rep_Id']['value'],
                             &$this->fields['Org_Org_Id']['value'],
                             &$this->fields['Org_SAO_SAO_Id']['value']);

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
        $this->set_where("Org_Rep_Id = ? AND Org_Org_Id = ? AND Org_SAO_SAO_Id = ? AND (Org_Rep_Id != ? OR Org_Org_Id != '$orig_Org_Org_Id' OR Org_SAO_SAO_Id != '$orig_Org_SAO_SAO_Id')");

        $bind_params = array('iiii',
                             &$this->fields['Org_Rep_Id']['value'],
                             &$this->fields['Org_Org_Id']['value'],
                             &$this->fields['Org_SAO_SAO_Id']['value'],
                             &$this->fields['Org_Rep_Id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
