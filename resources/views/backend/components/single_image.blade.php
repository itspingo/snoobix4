@php
	$maxlength = isset($params->max) ? $params->max : '';
	$required = isset($params->isrequired) && $params->isrequired=='Y' ? 'required="required"': '';
	//pre($params);
	$vfldName = $params->field_name;
 @endphp

<div class="col-md-6 mt-3">
	<div class="form-group">
		<label class="form-label" for="@php echo $params->field_name; @endphp">@php echo $params->field_label; @endphp</label>
		<input
			type="file"
			id="@php echo $params->field_name; @endphp"
			name="@php echo $params->field_name; @endphp"
			class="form-control"
			@php echo $required; @endphp
			>
			<div>			   
			    @php 
					if(!Empty($data_row)){ 
						//echo '<a target="_BLANK" href="https://cartmycar.co.za/home/photo?img='.$data_row[0]->$vfldName.'" >'.$data_row[0]->$vfldName.'</a>';
						echo '<a target="_BLANK" href="https://cartmycar.co.za/admin/images/'.$data_row[0]->$vfldName.'" >'.$data_row[0]->$vfldName.'</a>';
					} 
				@endphp
			   
			   {{-- <a target="_BLANK" href="{{ 'https://cartmycar.co.za/home/photo?img='.$data_row[0]->$vfldName }}">{{ $data_row[0]->$vfldName }}</a> --}}
			   
			</div>
			
		<input
			type="hidden"
			id="@php $fldid = $params->field_name; echo 'h'.$fldid; @endphp"
			name="@php $fldnam = $params->field_name; echo 'h'.$fldnam; @endphp"
			value="@php if(!Empty($data_row)){ echo $data_row[0]->$vfldName; } @endphp"
		/>
		
	</div>
	<div id="diverr_{{$params->field_name}}" text-danger></div>
</div>
