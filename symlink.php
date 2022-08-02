<?php
// echo 'root: '.$_SERVER['DOCUMENT_ROOT'];

$targetfolder1 = $_SERVER['DOCUMENT_ROOT'].'/admin/laravel/storage/app/public';
$linkfolder1 = $_SERVER['DOCUMENT_ROOT'].'/admin/storage';
symlink($targetfolder1,$linkfolder1);

$targetfolder2 = $_SERVER['DOCUMENT_ROOT'].'/admin/laravel/storage/app/uploads';
$linkfolder2 = $_SERVER['DOCUMENT_ROOT'].'/admin/images';
symlink($targetfolder2,$linkfolder2);

$targetfolder3 = $_SERVER['DOCUMENT_ROOT'].'/admin/laravel/storage/app/uploads';
$linkfolder3 = $_SERVER['DOCUMENT_ROOT'].'/admin/files';
symlink($targetfolder3,$linkfolder3);

echo 'success';

?>