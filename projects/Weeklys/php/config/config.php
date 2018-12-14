<?php

ini_set('error_reporting', E_ALL | E_STRICT);
ini_set('display_errors', 1);

define ('DB_HOST', 'localhost');
define ('DB_USER', 'weeklyUser');
define ('DB_PWD', '12345');
define ('DB_NAME', 'cook');
define ('MYSQL_DSN', 'mysql:host=' . DB_HOST . ';dbname=' . DB_NAME . ';charset=utf8');

?>