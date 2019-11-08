<?php


$scriptLocation = __DIR__ . '/bin/';
$parameters = '1227';
$output = array();
exec($scriptLocation . '/ot_sender_test ' . $parameters, $output);

var_dump($output);



