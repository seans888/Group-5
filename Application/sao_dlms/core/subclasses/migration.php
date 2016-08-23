<?php
require_once 'migration_dd.php';
class migration extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = migration_dd::load_dictionary();
        $this->relations  = migration_dd::load_relationships();
        $this->subclasses = migration_dd::load_subclass_info();
        $this->table_name = migration_dd::$table_name;
        $this->tables     = migration_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('version, apply_time');
            $this->set_values("?,?");

            $bind_params = array('si',
                                 &$this->fields['version']['value'],
                                 &$this->fields['apply_time']['value']);

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
            $this->set_update("version = ?, apply_time = ?");
            $this->set_where("version = ?");

            $bind_params = array('sis',
                                 &$this->fields['version']['value'],
                                 &$this->fields['apply_time']['value'],
                                 $param['orig_version']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("version = ?");

        $bind_params = array('s',
                             &$this->fields['version']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function delete_many($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("version = ?");

        $bind_params = array('s',
                             &$this->fields['version']['value']);

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
        $this->set_where("version = ?");

        $bind_params = array('s',
                             &$this->fields['version']['value']);

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
        $this->set_where("version = ? AND (version != '$orig_version')");

        $bind_params = array('s',
                             &$this->fields['version']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
