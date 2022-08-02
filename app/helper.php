<?php
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

if(!function_exists('get_field_view')){
    function get_field_view($vfield_name,$vfield_data){
        return view('backend/components/'.$vfield_name, $vfield_data);
    }
}

if(!function_exists('pre')){
    function pre($arinput){
        echo '<pre>';
        print_r($arinput);
        echo '</pre>';
    }
}


if(!function_exists('display_menu')){
    function display_menu(){
        $str_menu = '';
        //DB::enableQueryLog();
        $mdlist = DB::table('dznr_modules')
                    ->selectRaw(' * ')
                    ->where('active', '=', '1')
                    ->where('table_name','=','')
                    ->orWhereNull('table_name')
                    //->orderBy('menu_seq')
                    ->get();
        //dd(DB::getQueryLog());
        foreach($mdlist as $menu){
            $str_menu .= '<li class="menu-title">'.$menu->module_name.'</li>';
            $str_menu .= sub_menus($menu->id);
        }
        return  $str_menu;
    }
}

if(!function_exists('sub_menus')){
    function sub_menus($mnuid){
        $str_sub_menu = '';
        //DB::enableQueryLog();
        $mdslist = DB::table('dznr_modules')
                    ->selectRaw(' * ')
                    ->where('active', '=', '1')
                    ->where('is_hidden', '=', 'N')
                    ->where('table_name', '!=', '')
                    ->orwhereNotNull('table_name')
                    ->where('parent_module', '=', $mnuid)
                    // ->where('parent_module', '=', '0')
                    //->orderBy('menu_seq')
                    ->get();
        //dd(DB::getQueryLog());
        foreach($mdslist as $smenu){
            if(isset($_GET['mid']) and $_GET['mid'] == $smenu->id){
                $str_sub_menu .=    '<li class="mm-active">
                                    <a href="module?mid='.$smenu->id.'" class="waves-effect">
                                        <i class="uil-home-alt"></i>
                                        <span>'.$smenu->module_name.'</span>
                                    </a>
                                </li>';
            }else{
                $str_sub_menu .=    '<li>
                                        <a href="module?mid='.$smenu->id.'" class="waves-effect">
                                            <i class="uil-home-alt"></i>
                                            <span>'.$smenu->module_name.'</span>
                                        </a>
                                    </li>';
            }
        }
        return  $str_sub_menu;
    }
}


if(!function_exists('get_list_values')){
    function get_list_values($vtable_name,$vfield_name){
        //echo 'vtable_name: '.$vtable_name.' , vfield_name: '.$vfield_name;
        $vlstvals = array();
        //DB::enableQueryLog();
        $tblist = DB::table($vtable_name)
                    ->selectRaw('id,'.$vfield_name)
                    ->where('active', '=', '1')
                    //->orderBy('menu_seq')
                    ->get();
        //dd(DB::getQueryLog());
        foreach($tblist as $optn){
            $vlstvals[$optn->id] = $optn->$vfield_name;
        }
        return $vlstvals;
    }
}

if(!function_exists('getfieldval')){
    function getfieldval($recid,$vtable_name,$vfield_name){
        $retrnval = '';
        if($recid != ''){
            //dd('recid: '.$recid.' , vtable_name: '.$vtable_name.' , vfield_name: '.$vfield_name);
            //DB::enableQueryLog();
            $tblist = DB::table($vtable_name)
                ->selectRaw($vfield_name)
                ->where('id', '=', $recid)
                //->orderBy('menu_seq')
                ->first();
            //dd($tblist);
            //dd(DB::getQueryLog());
            
            if(null !== $tblist){
                $retrnval = $tblist->$vfield_name;
            }else{
                $retrnval = '';
            }
        }else{
            $retrnval = '';
        }
        return($retrnval);
    }
}



