<?php
require_once 'document_dd.php';
class document_html extends html
{
    function __construct()
    {
        $this->fields        = document_dd::load_dictionary();
        $this->relations     = document_dd::load_relationships();
        $this->subclasses    = document_dd::load_subclass_info();
        $this->table_name    = document_dd::$table_name;
        $this->readable_name = document_dd::$readable_name;
    }
}
