<?php


$scriptLocation = __DIR__ . '/bin/';
$parameters = '127.0.0.1 1227';
$output = array();
exec($scriptLocation . '/ot_receiver_test ' . $parameters, $output);

var_dump($output);



