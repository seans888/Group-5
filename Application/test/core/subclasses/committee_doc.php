<?php
require_once 'documentation_class.php';
require_once 'committee_dd.php';
class committee_doc extends documentation
{
    function __construct()
    {
        $this->fields        = committee_dd::load_dictionary();
        $this->relations     = committee_dd::load_relationships();
        $this->subclasses    = committee_dd::load_subclass_info();
        $this->table_name    = committee_dd::$table_name;
        $this->readable_name = committee_dd::$readable_name;
        parent::__construct();
    }
}
