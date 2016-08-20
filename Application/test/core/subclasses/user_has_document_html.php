<?php
require_once 'user_has_document_dd.php';
class user_has_document_html extends html
{
    function __construct()
    {
        $this->fields        = user_has_document_dd::load_dictionary();
        $this->relations     = user_has_document_dd::load_relationships();
        $this->subclasses    = user_has_document_dd::load_subclass_info();
        $this->table_name    = user_has_document_dd::$table_name;
        $this->readable_name = user_has_document_dd::$readable_name;
    }
}
