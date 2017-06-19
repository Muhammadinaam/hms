<!DOCTYPE html>
<html>
<head>
	<title>Print</title>

	<style type="text/css">
		table {
		    border-collapse: collapse;
		}

		table, th, td {
		    border: 1px solid black;
		}

		.patient_info_table {
			width: 48%;
			float: left;
			margin-bottom: 10px;
		}

		.hospital_info_table {
			width: 48%;
			float: right;
			margin-bottom: 10px;
		}

		.vital_signs_table {
			width: 30%;
			float: left;
		}

		.symptoms_diagnosis_medicines_table {
			width: 68%;
			float: right;
		}

		.table_heading {
			background-color: lightgray;
			-webkit-print-color-adjust: exact; 
			font-weight: bold;
			padding: 5px;
			text-align: center;
		}

		.info {
			font-weight: bold;
		}

		.clear-both {
			clear: both;
		}

		.visit_information_heading {
			text-align: center;
			background-color: lightgray;
			-webkit-print-color-adjust: exact;

		}

		.visit_information_heading h3 {
			padding: 10px;

		}

		.vital_signs_table .info {
			width: 50%;
			text-align: center;
		}

		.symptoms_diagnosis_medicines_table td, .vital_signs_table td {
			padding: 10px;
		}

		@media print {
		  .dont-print {
		    display: none !important;
		  }
		}

	</style>

</head>
<body>

<img src="{{asset($header_image)}}" width="100%">

<br><br>

<table class="patient_info_table">
	<tr>
		<td class="table_heading" colspan="2">
			Patient Information
		</td>
	</tr>

	<tr>
		<td>Name</td> <td class="info">{{$opd_visit->patient_name}}</td>
	</tr>

	<tr>
		<td>Father / Guardian Name</td> <td class="info">{{$opd_visit->guardian_name}}</td>
	</tr>

	<tr>
		<td>Gender</td> <td class="info">{{$opd_visit->gender}}</td>
	</tr>

	<tr>
		<td>Age</td> <td class="info">{{ \Carbon\Carbon::now()->diffInYears(\Carbon\Carbon::parse($opd_visit->created_at)) + $opd_visit->age}}</td>
	</tr>
</table>

<table class="hospital_info_table">
	<tr>
		<td class="table_heading" colspan="2">
			Hospital Information
		</td>
	</tr>

	<tr>
		<td>Visit Date</td> <td class="info">{{\Carbon\Carbon::parse($opd_visit->created_at)->format('d-M-Y')}}</td>
	</tr>
	<tr>
		<td>Visit No.</td> <td class="info">{{$opd_visit->id}}</td>
	</tr>
	<tr>
		<td>Token No.</td> <td class="info">{{$opd_visit->token_number}}</td>
	</tr>
	<tr>
		<td>Doctor</td> <td class="info">{{$opd_visit->doctor_name}}<br>{{$opd_visit->doctor_qualification}}</td>
	</tr>
	<tr>
		<td>Fee Received</td> <td class="info">{{$opd_visit->opd_fee}}</td>
	</tr>
</table>


<div class="clear-both visit_information_heading">
	<h3>VISIT INFORMATION</h3>
</div>


<table class="vital_signs_table">
	<tr>
		<td class="table_heading" colspan="2">
			Vital Signs
		</td>
	</tr>

	<tr>
		<td>BP</td> <td class="info">{{$opd_visit->bp_up}} / {{$opd_visit->bp_down}}</td>
	</tr>
	<tr>
		<td>Temperature</td> <td class="info">{{$opd_visit->temperature}}</td>
	</tr>

	<tr>
		<td>Blood Sugar</td> <td class="info">{{$opd_visit->blood_sugar}}</td>
	</tr>

	<tr>
		<td>Weight</td> <td class="info">{{$opd_visit->weight}}</td>
	</tr>

	<tr>
		<td>Pulse Rate</td> <td class="info">{{$opd_visit->pulse_rate}}</td>
	</tr>

</table>

<table class="symptoms_diagnosis_medicines_table">
	<tr>
		<td class="table_heading" colspan="2">
			Symptoms
		</td>
	</tr>
	<tr>
		<td colspan="2">
		&nbsp;
		</td>
	</tr>

	<tr>
		<td class="table_heading" colspan="2">
			Diagnosis
		</td>
	</tr>
	<tr>
		<td colspan="2">
		&nbsp;
		</td>
	</tr>

	<tr>
		<td class="table_heading" colspan="2">
			Clinic Medicines
		</td>
	</tr>
	
	@for($i = 0; $i < 5; $i++)
	<tr>
		<td>&nbsp;</td> <td>&nbsp;</td>
	</tr>
	@endfor
	

	<tr>
		<td class="table_heading" colspan="2">
			Medicines From Outsides
		</td>
	</tr>
	@for($i = 0; $i < 5; $i++)
	<tr>
		<td>&nbsp;</td> <td>&nbsp;</td>
	</tr>
	@endfor
</table>

<div class="clear-both"></div>

<br>
<button class="dont-print" style="float: right;" onclick="print_page()">Print</button>

<script type="text/javascript">
	function print_page()
	{
		window.print();
		window.location = "{{url('admin/opd_visits')}}";
	}
</script>

</body>
</html>