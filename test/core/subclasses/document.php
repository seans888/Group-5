<?php
require_once 'document_dd.php';
class document extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = document_dd::load_dictionary();
        $this->relations  = document_dd::load_relationships();
        $this->subclasses = document_dd::load_subclass_info();
        $this->table_name = document_dd::$table_name;
        $this->tables     = document_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('Doc_Id, Doc_Name, Doc_Description, docRequest_docRequest_Id, docRequest_SAO_SAO_Id, Adviser_Adv_Id, Adviser_Org_Org_Id, Adviser_Org_SAO_SAO_Id, Student Affair Head_SAH_Id, SAO_SAO_Id');
            $this->set_values("?,?,?,?,?,?,?,?,?,?");

            $bind_params = array('issiiiiiii',
                                 &$this->fields['Doc_Id']['value'],
                                 &$this->fields['Doc_Name']['value'],
                                 &$this->fields['Doc_Description']['value'],
                                 &$this->fields['docRequest_docRequest_Id']['value'],
                                 &$this->fields['docRequest_SAO_SAO_Id']['value'],
                                 &$this->fields['Adviser_Adv_Id']['value'],
                                 &$this->fields['Adviser_Org_Org_Id']['value'],
                                 &$this->fields['Adviser_Org_SAO_SAO_Id']['value'],
                                 &$this->fields['Student Affair Head_SAH_Id']['value'],
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
            $this->set_update("Doc_Name = ?, Doc_Description = ?, docRequest_docRequest_Id = ?, docRequest_SAO_SAO_Id = ?, Adviser_Adv_Id = ?, Adviser_Org_Org_Id = ?, Adviser_Org_SAO_SAO_Id = ?, Student Affair Head_SAH_Id = ?, SAO_SAO_Id = ?");
            $this->set_where("Doc_Id = ? AND docRequest_docRequest_Id = ? AND docRequest_SAO_SAO_Id = ? AND Adviser_Adv_Id = ? AND Adviser_Org_Org_Id = ? AND Adviser_Org_SAO_SAO_Id = ? AND Student Affair Head_SAH_Id = ? AND SAO_SAO_Id = ?");

            $bind_params = array('ssiiiiiiiiiiiiiii',
                                 &$this->fields['Doc_Name']['value'],
                                 &$this->fields['Doc_Description']['value'],
                                 &$this->fields['docRequest_docRequest_Id']['value'],
                                 &$this->fields['docRequest_SAO_SAO_Id']['value'],
                                 &$this->fields['Adviser_Adv_Id']['value'],
                                 &$this->fields['Adviser_Org_Org_Id']['value'],
                                 &$this->fields['Adviser_Org_SAO_SAO_Id']['value'],
                                 &$this->fields['Student Affair Head_SAH_Id']['value'],
                                 &$this->fields['SAO_SAO_Id']['value'],
                                 &$this->fields['Doc_Id']['value'],
                                 $param['orig_docRequest_docRequest_Id'],
                                 $param['orig_docRequest_SAO_SAO_Id'],
                                 $param['orig_Adviser_Adv_Id'],
                                 $param['orig_Adviser_Org_Org_Id'],
                                 $param['orig_Adviser_Org_SAO_SAO_Id'],
                                 $param['orig_Student Affair Head_SAH_Id'],
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
        $this->set_where("Doc_Id = ? AND docRequest_docRequest_Id = ? AND docRequest_SAO_SAO_Id = ? AND Adviser_Adv_Id = ? AND Adviser_Org_Org_Id = ? AND Adviser_Org_SAO_SAO_Id = ? AND Student Affair Head_SAH_Id = ? AND SAO_SAO_Id = ?");

        $bind_params = array('iiiiiiii',
                             &$this->fields['Doc_Id']['value'],
                             &$this->fields['docRequest_docRequest_Id']['value'],
                             &$this->fields['docRequest_SAO_SAO_Id']['value'],
                             &$this->fields['Adviser_Adv_Id']['value'],
                             &$this->fields['Adviser_Org_Org_Id']['value'],
                             &$this->fields['Adviser_Org_SAO_SAO_Id']['value'],
                             &$this->fields['Student Affair Head_SAH_Id']['value'],
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
        $this->set_where("docRequest_docRequest_Id = ? AND docRequest_SAO_SAO_Id = ? AND Adviser_Adv_Id = ? AND Adviser_Org_Org_Id = ? AND Adviser_Org_SAO_SAO_Id = ? AND Student Affair Head_SAH_Id = ? AND SAO_SAO_Id = ?");

        $bind_params = array('iiiiiii',
                             &$this->fields['docRequest_docRequest_Id']['value'],
                             &$this->fields['docRequest_SAO_SAO_Id']['value'],
                             &$this->fields['Adviser_Adv_Id']['value'],
                             &$this->fields['Adviser_Org_Org_Id']['value'],
                             &$this->fields['Adviser_Org_SAO_SAO_Id']['value'],
                             &$this->fields['Student Affair Head_SAH_Id']['value'],
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
        $this->set_where("Doc_Id = ? AND docRequest_docRequest_Id = ? AND docRequest_SAO_SAO_Id = ? AND Adviser_Adv_Id = ? AND Adviser_Org_Org_Id = ? AND Adviser_Org_SAO_SAO_Id = ? AND Student Affair Head_SAH_Id = ? AND SAO_SAO_Id = ?");

        $bind_params = array('iiiiiiii',
                             &$this->fields['Doc_Id']['value'],
                             &$this->fields['docRequest_docRequest_Id']['value'],
                             &$this->fields['docRequest_SAO_SAO_Id']['value'],
                             &$this->fields['Adviser_Adv_Id']['value'],
                             &$this->fields['Adviser_Org_Org_Id']['value'],
                             &$this->fields['Adviser_Org_SAO_SAO_Id']['value'],
                             &$this->fields['Student Affair Head_SAH_Id']['value'],
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
        $this->set_where("Doc_Id = ? AND docRequest_docRequest_Id = ? AND docRequest_SAO_SAO_Id = ? AND Adviser_Adv_Id = ? AND Adviser_Org_Org_Id = ? AND Adviser_Org_SAO_SAO_Id = ? AND Student Affair Head_SAH_Id = ? AND SAO_SAO_Id = ? AND (Doc_Id != ? OR docRequest_docRequest_Id != '$orig_docRequest_docRequest_Id' OR docRequest_SAO_SAO_Id != '$orig_docRequest_SAO_SAO_Id' OR Adviser_Adv_Id != '$orig_Adviser_Adv_Id' OR Adviser_Org_Org_Id != '$orig_Adviser_Org_Org_Id' OR Adviser_Org_SAO_SAO_Id != '$orig_Adviser_Org_SAO_SAO_Id' OR Student Affair Head_SAH_Id != '$orig_Student Affair Head_SAH_Id' OR SAO_SAO_Id != '$orig_SAO_SAO_Id')");

        $bind_params = array('iiiiiiiii',
                             &$this->fields['Doc_Id']['value'],
                             &$this->fields['docRequest_docRequest_Id']['value'],
                             &$this->fields['docRequest_SAO_SAO_Id']['value'],
                             &$this->fields['Adviser_Adv_Id']['value'],
                             &$this->fields['Adviser_Org_Org_Id']['value'],
                             &$this->fields['Adviser_Org_SAO_SAO_Id']['value'],
                             &$this->fields['Student Affair Head_SAH_Id']['value'],
                             &$this->fields['SAO_SAO_Id']['value'],
                             &$this->fields['Doc_Id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
