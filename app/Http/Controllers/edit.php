<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\dbmodule;
use Illuminate\Support\Facades\DB;
use form;

class edit extends Controller
{
    public function index(){

        $mid = $_GET['mid']; //'10';
        $rid = $_GET['rid']; //'10';

        $mdlsdata = DB::table('dznr_modules')
                ->selectRaw(' * ')
                ->where('id', '=', $mid)
                //->groupBy('status')
                ->get();
        $mdlsid =  $mdlsdata[0]->id;
        $mdltblname =  $mdlsdata[0]->table_name;
        $data['module_info'] =  $mdlsdata[0];
        $edit_view_file = $mdlsdata[0]->view_file;
        $mdlfldsdata = DB::table('dznr_module_fields')
                        ->selectRaw(' * ')
                        ->where('dznr_moduleid', '=', $mdlsid)
                        ->orderBy('display_seq')
                        ->get();
        //dd($mdlfldsdata);                
        $data['module_fields'] = $mdlfldsdata;
        $data['action']= 'update?mid='.$mid.'&rid='.$rid;
        // $fldName = '';
        // foreach($mdlfldsdata as $module_field){
        //         $fldName .= $module_field->field_name.',';
        // }
        // $fldName = substr($fldName,0, strlen($fldName)-1);

        
        $data['row'] = DB::table($mdltblname)
                         ->selectRaw('*')
                         ->where('id', '=', $rid)
                         ->get();
        //dd($data_row);
        if($edit_view_file != ''){
            return view('backend/'.$edit_view_file, $data);
        }else{
            return view('backend/module_data_edit',$data);
        }
    }
}
