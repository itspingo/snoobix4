<div class="col-md-6 mt-3">
	<div class="form-group">
    <label class="form-label" for="@php echo $params->field_name; @endphp">@php echo $params->field_label; @endphp</label>

@php
    $vfldName = $params->field_name;
    if(!Empty($data_row)){ 
        $selected = $data_row[0]->$vfldName; 
    }else{
        $selected = '';
    }
    $options = get_list_values($params->listmodulename, $params->listmoduleitem);
    //pre($options);
 @endphp

		 <select class="form-control" name="{{$params->field_name}}" id="{{$params->field_name}}"> 
		   <option value="">--Select--</option>
		   @foreach ($options as $key => $value)
			<option value="{{ $key }}" {{ ( $key == $selected) ? 'selected' : '' }}> 
				{{ $value }} 
			</option>
		  @endforeach    
		</select>

		<input
			type="hidden"
			id="@php $fldid = $params->field_name; echo 'h'.$fldid; @endphp"
			name="@php $fldnam = $params->field_name; echo 'h'.$fldnam; @endphp"
			value="@php if(!Empty($data_row)){ echo $data_row[0]->$vfldName; } @endphp"
		/>
 </div>
 <div id="diverr_{{$params->field_name}}" text-danger></div>
</div>