<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\dbmodule;
use App\helper;
use Illuminate\Support\Facades\DB;


class search extends Controller
{
    public function index(){

        $mid = $_POST['mid']; //'10';
        // $srch_text = $_POST['srch_text'];
        // $srch_field = $_POST['srch_field'];
        
        $postData = $_POST;
        $mdlsdata = DB::table('dznr_modules')
                ->selectRaw(' * ')
                ->where('id', '=', $mid)
                //->groupBy('status')
                ->get();
        $mdlsid =  $mdlsdata[0]->id;
        $mdltblname =  $mdlsdata[0]->table_name;
        $data['module_info'] =  $mdlsdata[0];

        $mdlfldsdata = DB::table('dznr_module_fields')
                        ->selectRaw(' * ')
                        ->where('dznr_moduleid', '=', $mdlsid)
                        //->groupBy('status')
                        ->get();
        $data['module_fields'] = $mdlfldsdata;
        $fldName = '';
        foreach($mdlfldsdata as $module_field){
            if($module_field->onlistpag == 'Y'){
                //$vtable_headings .= $module_field->field_label.',';
                $fldName .= $module_field->field_name.',';
                //echo $module_field['field_name'];
            }    
        }
        $fldName = substr($fldName,0, strlen($fldName)-1);

        $srchCond = array();
        $query = DB::table($mdltblname)
                        ->selectRaw($fldName);
        foreach($mdlfldsdata as $module_field2){
            $fldName2 = $module_field2->field_name;
            //echo $fldName.', ';
            if(isset($postData[$fldName2]) and $postData[$fldName2] != ""){
                //$vtable_headings .= $module_field->field_label.',';
                $query->orWhere($fldName2, 'like' ,"%".$postData[$fldName2]."%");
                //$query->Where($fldName2, '=' , $postData[$fldName2]);

                //echo $module_field['field_name'];
            }    
        }
        //$srchCond = substr($srchCond,0, strlen($srchCond)-4);
        //DB::enableQueryLog();
       $data_rows = $query->simplePaginate(1500);
                        ;
        //dd(DB::getQueryLog());
        $data_rows->appends(['mid'=>$mid])->links();
        $data['rows'] = $data_rows;
        //die();
       
        return view('backend/modules_data_list',$data);
    }

}
