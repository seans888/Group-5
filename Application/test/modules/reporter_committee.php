<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('View committee');

require 'reporter_class.php';
$reporter = cobalt_load_class('committee_rpt');

//$reporter->print_settings(); //You can uncomment this line to get the PHP code for the settings arrays. You can
                               //use one or more of the arrays to customize the report output or deal with special cases 
                               //(adding special aliases, overriding labels for tables with similar field names, etc)

require 'components/reporter_interface_proc.php';
require 'components/reporter_interface_head.php';

for($i=0; $i<$num_fields; ++$i)
{
    init_var($text_field[$i]);
    require 'components/reporter_interface_body.php';
}

require 'components/reporter_interface_foot.php';