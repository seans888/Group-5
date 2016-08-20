<?php
require_once 'calevent_dd.php';
class calevent extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = calevent_dd::load_dictionary();
        $this->relations  = calevent_dd::load_relationships();
        $this->subclasses = calevent_dd::load_subclass_info();
        $this->table_name = calevent_dd::$table_name;
        $this->tables     = calevent_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('calEvent_Id, calEvent_Name, calEvent_Attendee, calEvent_Loc, calEvent_Time, calEvent_Date, SAO_SAO_Id');
            $this->set_values("?,?,?,?,?,?,?");

            $bind_params = array('isssssi',
                                 &$this->fields['calEvent_Id']['value'],
                                 &$this->fields['calEvent_Name']['value'],
                                 &$this->fields['calEvent_Attendee']['value'],
                                 &$this->fields['calEvent_Loc']['value'],
                                 &$this->fields['calEvent_Time']['value'],
                                 &$this->fields['calEvent_Date']['value'],
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
            $this->set_update("calEvent_Name = ?, calEvent_Attendee = ?, calEvent_Loc = ?, calEvent_Time = ?, calEvent_Date = ?, SAO_SAO_Id = ?");
            $this->set_where("calEvent_Id = ? AND SAO_SAO_Id = ?");

            $bind_params = array('sssssiii',
                                 &$this->fields['calEvent_Name']['value'],
                                 &$this->fields['calEvent_Attendee']['value'],
                                 &$this->fields['calEvent_Loc']['value'],
                                 &$this->fields['calEvent_Time']['value'],
                                 &$this->fields['calEvent_Date']['value'],
                                 &$this->fields['SAO_SAO_Id']['value'],
                                 &$this->fields['calEvent_Id']['value'],
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
        $this->set_where("calEvent_Id = ? AND SAO_SAO_Id = ?");

        $bind_params = array('ii',
                             &$this->fields['calEvent_Id']['value'],
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
        $this->set_where("calEvent_Id = ? AND SAO_SAO_Id = ?");

        $bind_params = array('ii',
                             &$this->fields['calEvent_Id']['value'],
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
        $this->set_where("calEvent_Id = ? AND SAO_SAO_Id = ? AND (calEvent_Id != ? OR SAO_SAO_Id != '$orig_SAO_SAO_Id')");

        $bind_params = array('iii',
                             &$this->fields['calEvent_Id']['value'],
                             &$this->fields['SAO_SAO_Id']['value'],
                             &$this->fields['calEvent_Id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
