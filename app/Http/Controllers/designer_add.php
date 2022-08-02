<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\dbmodule;
use Illuminate\Support\Facades\DB;

class designer_add extends Controller
{
    public function index(){
        $dbname = DB::connection()->getDatabaseName();
        $data['dbtables'] = DB::table('information_schema.tables')
                            ->selectRaw('table_name')
                            ->where('table_schema', '=', $dbname)
                            ->orderBy('table_name')
                            ->get();

       $data['curnt_table_columns'] = array();
      
       $data['menu_headings'] = DB::table('dznr_modules')
                                    ->selectRaw(' * ')
                                    ->where('active', '=', 'Y')
                                    ->where('table_name', '=', '')
                                    //->orderBy('menu_seq')
                                    ->get();

        //dd($data);
       
        //return view('backend/designer/addedit',$data);
        return view('backend/dznr/addedit',$data);
    }

    /*
    public function show_sidepanel(){
        return view('backend/designer/sidepanel');
    }

    public function ajax_item_properties(){
        $itemtype = $_GET['itemtype'];
	    $vdivid = $_GET['divid'];
        //echo 'item type: '.$itemtype.' , divid: '.$vdivid;
        $data['itemtype'] = $itemtype;
        $data['vdivid'] = $vdivid;
        return view('backend/designer/ajax_item_properties',$data);
    }
    */

    public function ajax_module_fields(){
        $dbname = DB::connection()->getDatabaseName();
        $tblname = $_GET['tblnam'];
        $data['curnt_table_columns'] = DB::table('information_schema.columns')
                            ->selectRaw('*')
                            ->where('table_schema', '=', $dbname )
                            ->where('table_name', '=',  $tblname )
                            ->get();

        $data['dbtables'] = DB::table('information_schema.tables')
                            ->selectRaw('table_name')
                            ->where('table_schema', '=', $dbname)
                            ->orderBy('table_name')
                            ->get();

        return view('backend/dznr/ajax_module_fields',$data);                    

    }

    public function ajax_table_fields(){
        $dbname = DB::connection()->getDatabaseName();
        $tblname = $_GET['tblnam'];
        $data['recno'] = $_GET['rno'];
        $data['list_table_columns'] = DB::table('information_schema.columns')
                            ->selectRaw('*')
                            ->where('table_schema', '=', $dbname )
                            ->where('table_name', '=',  $tblname )
                            ->get();
        return view('backend/dznr/ajax_listable_fields',$data);            

    }

    public function save(){
        //$dbname = DB::connection()->getDatabaseName();
        $newModuleInfo = array(
            'module_name' => $_POST['module_name'],
            'module_type' => $_POST['module_type'],
            'module_icon' => $_POST['module_icon'],
            'parent_module' => $_POST['parent_module'],
            'is_hidden' => $_POST['is_hidden'],
            'table_name' => $_POST['module_table']
        );
        $dznrMdlid = DB::table('dznr_modules')
                         ->insertGetId($newModuleInfo);

        $dznrMdlFldid='';
        for($i=0; $i<count($_POST['field_name']); $i++){
            $newModuleFields = array(
                'dznr_moduleid' => $dznrMdlid,
                'field_name' => $_POST['field_name'][$i],
                'field_label' => $_POST['field_label'][$i],
                'field_type' => $_POST['field_type'][$i],
                'isrequired' => $_POST['isrequired'][$i],
                'display_seq' => $_POST['display_seq'][$i],
                'input_length' => ($_POST['input_length'][$i])?$_POST['input_length'][$i]:0,
                'listmodulename' => $_POST['listmodulename'][$i],
                'listmoduleitem' => $_POST['listmoduleitem'][$i],
                'onlistpag' => $_POST['onlistpag'][$i]
            );
            //print_r($newModuleFields);
            
             $dznrMdlFldid = DB::table('dznr_module_fields')
                             ->insertGetId($newModuleFields);
            
            if($dznrMdlFldid){
                // post_insert_functions(['id'=>$dznrMdlFldid]);
            }
        }
        //dd(count($_POST['field_name']));
        return redirect('/designer_add')->with('msg_success','Module info is saved successfuly');;
        // return view('backend/dznr/ajax_module_fields',$data);                    

    }

    public function dznr_delete(){
        $mid = $_GET['mid'];
        $isdel = DB::table('dznr_module_fields')
                         ->where('dznr_moduleid', '=', $mid)
                         ->delete();

        if($isdel){
            $isdel = DB::table('dznr_modules')
                         ->where('id', '=', $mid)
                         ->delete();  
        }
       return redirect('/designer')->with('msg_success','Record is deleted successfuly');;
        
    }



}
