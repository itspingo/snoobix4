<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\dashboard;
use App\Http\Controllers\module;
use App\Http\Controllers\add;
use App\Http\Controllers\save;
use App\Http\Controllers\search;
use App\Http\Controllers\update;
use App\Http\Controllers\edit;
use App\Http\Controllers\delete;
use App\Http\Controllers\sendmail;

use App\Http\Controllers\designer;
use App\Http\Controllers\designer_add;
use App\Http\Controllers\designer_edit;
// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/', function () {
    return view('auth/login');
});
Route::get('/home', [HomeController::class, 'index'])->middleware(['auth'])->name('home');
// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->middleware(['auth'])->name('dashboard');
Route::get('/dashboard' , [dashboard::class,'index'])->middleware(['auth']);
Route::get('/module' , [module::class,'index'])->middleware(['auth']);
Route::get('/add' , [add::class,'index'])->middleware(['auth']);
Route::post('/save' , [save::class,'index'])->middleware(['auth']);
Route::any('/update' , [update::class,'index'])->middleware(['auth']);
Route::post('/search' , [search::class,'index'])->middleware(['auth']);
Route::get('/edit' , [edit::class,'index'])->middleware(['auth']);
Route::get('/delete' , [delete::class,'index'])->middleware(['auth']);
// Route::get('/show_img' , [show_img::class,'index']);

Route::get('/designer', [designer::class,'index'])->middleware(['auth']);
Route::get('/designer_add' , [designer_add::class,'index'])->middleware(['auth']);
Route::get('/ajax_module_fields' , [designer_add::class,'ajax_module_fields']);
Route::get('/show_sidepanel' , [designer_add::class,'show_sidepanel']);
Route::get('/ajax_item_properties' , [designer_add::class,'ajax_item_properties']);
Route::post('/designer_add/save' , [designer_add::class,'save']);
Route::get('/ajax_table_fields' , [designer_add::class,'ajax_table_fields']);
Route::get('/dznr_delete' , [designer_add::class,'dznr_delete']);
Route::get('/designer_edit' , [designer_edit::class,'index'])->middleware(['auth']);
Route::post('/designer_edit' , [designer_edit::class,'update']);

Route::get('/sendmail' , [sendmail::class,'index']);
Route::get('/send-mail', function () {
    $details = [
        'title' => $_GET['title'],
        'body' => $_GET['email']
    ];
    
    \Mail::to($_GET['toemail'])->send(new \App\Mail\MyTestMail($details));
    dd("Email is Sent.");
});

// require __DIR__.'/auth.php';
Auth::routes();
Auth::routes(['register' => false]);  /* its not working */
