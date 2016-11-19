<?php
require_once 'calendar_event_dd.php';
class calendar_event extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = calendar_event_dd::load_dictionary();
        $this->relations  = calendar_event_dd::load_relationships();
        $this->subclasses = calendar_event_dd::load_subclass_info();
        $this->table_name = calendar_event_dd::$table_name;
        $this->tables     = calendar_event_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('id, timestamp, name, description, date, eventTime, venue, attendee');
            $this->set_values("?,?,?,?,?,?,?,?");

            $bind_params = array('isssssss',
                                 &$this->fields['id']['value'],
                                 &$this->fields['timestamp']['value'],
                                 &$this->fields['name']['value'],
                                 &$this->fields['description']['value'],
                                 &$this->fields['date']['value'],
                                 &$this->fields['eventTime']['value'],
                                 &$this->fields['venue']['value'],
                                 &$this->fields['attendee']['value']);

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
            $this->set_update("timestamp = ?, name = ?, description = ?, date = ?, eventTime = ?, venue = ?, attendee = ?");
            $this->set_where("id = ?");

            $bind_params = array('sssssssi',
                                 &$this->fields['timestamp']['value'],
                                 &$this->fields['name']['value'],
                                 &$this->fields['description']['value'],
                                 &$this->fields['date']['value'],
                                 &$this->fields['eventTime']['value'],
                                 &$this->fields['venue']['value'],
                                 &$this->fields['attendee']['value'],
                                 &$this->fields['id']['value']);

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


        $this->set_query_type('SELECT');
        $this->set_where("id = ? AND (id != ?)");

        $bind_params = array('ii',
                             &$this->fields['id']['value'],
                             &$this->fields['id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
