<?php
require_once 'sst_class.php';
require_once 'student_affair_head_dd.php';
class student_affair_head_sst extends sst
{
    function __construct()
    {
        $this->fields        = student_affair_head_dd::load_dictionary();
        $this->relations     = student_affair_head_dd::load_relationships();
        $this->subclasses    = student_affair_head_dd::load_subclass_info();
        $this->table_name    = student_affair_head_dd::$table_name;
        $this->readable_name = student_affair_head_dd::$readable_name;
        parent::__construct();
    }
}
