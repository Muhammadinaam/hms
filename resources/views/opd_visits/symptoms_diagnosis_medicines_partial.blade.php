<table class="symptoms_diagnosis_medicines_table">

	@if($show_symptoms == 'Yes' && count($symptoms) > 0)
	<tr>
		<td class="table_heading" colspan="2">
			Symptoms
		</td>
	</tr>
	<tr>
		<td colspan="2">
			&nbsp;
			@if(count($symptoms) > 0)
			{{ implode(', ', $symptoms->pluck('name')->toArray() ) }}
			@endif
		</td>
	</tr>
	@endif


	@if($show_diagnoses == 'Yes' && count($diagnoses) > 0)
	<tr>
		<td class="table_heading" colspan="2">
			Diagnosis
		</td>
	</tr>
	<tr>
		<td colspan="2">
			&nbsp;
			@if(count($diagnoses) > 0)
			{{ implode(', ', $diagnoses->pluck('name')->toArray() ) }}
			@endif
		</td>
	</tr>
	@endif



	@if(count($facilities))
	<tr>
		<td class="table_heading" colspan="2">
			Clinic Medicines / Facilities
		</td>
	</tr>


	@foreach($facilities as $facility)
	<tr>
		<td>{{$facility->name}}</td> <td>{{$facility->direction}}</td>
	</tr>
	@endforeach
	@endif

<!-- 
			<tr>
				<td class="table_heading" colspan="2">
					Medicines From Outsides
				</td>
			</tr>
			@for($i = 0; $i < 5; $i++)
			<tr>
				<td>&nbsp;</td> <td>&nbsp;</td>
			</tr>
			@endfor -->
		</table>