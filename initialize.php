<?php
$dev_data = array('id'=>'-1','firstname'=>'Developer','lastname'=>'','username'=>'dev_oretnom','password'=>'5da283a2d990e8d8512cf967df5bc0d0','last_login'=>'','date_updated'=>'','date_added'=>'');
if(!defined('base_url')){
	$protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off') ? 'https' : 'http';
	$host = $_SERVER['HTTP_HOST'];
	$document_root = isset($_SERVER['DOCUMENT_ROOT']) ? str_replace('\\', '/', realpath($_SERVER['DOCUMENT_ROOT'])) : '';
	$app_root = str_replace('\\', '/', realpath(__DIR__));
	$path = '';
	if($document_root && strpos($app_root, $document_root) === 0){
		$path = trim(substr($app_root, strlen($document_root)), '/');
	}
	define('base_url', $protocol . '://' . $host . (!empty($path) ? '/' . $path : '') . '/');
}
if(!defined('base_app')) define('base_app', str_replace('\\','/',__DIR__).'/' );
if(!defined('dev_data')) define('dev_data',$dev_data);
if(!defined('DB_SERVER')) define('DB_SERVER','localhost');
if(!defined('DB_USERNAME')) define('DB_USERNAME','root');
if(!defined('DB_PASSWORD')) define('DB_PASSWORD','');
if(!defined('DB_NAME')) define('DB_NAME','vehicle_service_db');
?>

