<!DOCTYPE html>
<html>
<head>
	<title>Print</title>

	<style type="text/css">
		

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

		.hospital_info_table td, .patient_info_table td {
			border-bottom: 1px solid lightgray;
		}

		.vital_signs_table {
			width: 100%;
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

		.label {
			
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
			font-weight: bold;
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

	<br>

	<table style="width: 100%">
		<tr>
			<td>Visit No: <b>{{$opd_visit->id}}</b></td>
			<td style="text-align: right;">Token No: <b>{{$opd_visit->token_number}}</b></td>
		</tr>
	</table>

	<table class="patient_info_table">
			<tr>
				<td class="table_heading" colspan="2">
					Patient Information
				</td>
			</tr>

			<tr>
				<td class="label">Name</td> <td class="info">{{$opd_visit->patient_name}}</td>
			</tr>

			<tr>
				<td class="label">Gender</td> <td class="info">{{$opd_visit->gender}}</td>
			</tr>

			<tr>
				<td class="label">Age</td> <td class="info">{{ \Carbon\Carbon::now()->diffInYears(\Carbon\Carbon::parse($opd_visit->created_at)) + $opd_visit->age}}</td>
			</tr>
		</table>

		<table class="hospital_info_table">
			<tr>
				<td class="table_heading" colspan="2">
					Hospital Information
				</td>
			</tr>

			<tr>
				<td class="label">Visit Date</td> <td class="info">{{\Carbon\Carbon::parse($opd_visit->created_at)->format('d-M-Y')}}</td>
			</tr>
			<tr>
				<td class="label">Doctor</td> <td class="info">{{$opd_visit->doctor_name}}</td>
			</tr>
			<tr>
				<td class="label">Fee Received</td> <td class="info">{{$opd_visit->opd_fee}}</td>
			</tr>
		</table>


<!-- <div class="clear-both visit_information_heading">
	<h3>VISIT INFORMATION</h3>
</div> -->

<div class="clear-both"></div>

<table class="vital_signs_table">
	

	<tr>
				<td class="table_heading" colspan="6">
					Vital Signs
				</td>
			</tr>

			<tr>
				<td>Blood Pressure</td> <td class="info">{{ $opd_visit->bp_up != 0 ? round($opd_visit->bp_up,0) : '___'}} / {{ $opd_visit->bp_down != 0 ? round($opd_visit->bp_down,0) : '___'}}</td>
				<td>Temperature</td> <td class="info">{{ $opd_visit->temperature != 0 ? round($opd_visit->temperature, 0) : '___'}}</td>
				<td>Blood Sugar</td> <td class="info">{{ $opd_visit->blood_sugar != 0 ? round($opd_visit->blood_sugar, 0) : '___'}}</td>
			</tr>
				

			<!-- <tr>
				<td>Weight</td> <td class="info">{{round($opd_visit->weight, 0)}}</td>
				<td colspan="2">Pulse Rate</td> <td colspan="2" class="info">{{round($opd_visit->pulse_rate, 0)}}</td>
			</tr> -->

</table>

<hr>


<div class="clear-both"></div>

<br>
<button class="dont-print" style="float: right;" onclick="print_page()">Print</button>

<script type="text/javascript" src="{{asset('js/jquery-3.2.1.min.js')}}"></script>

<script type="text/javascript">
	$(document).ready(function(){
		window.print();
		setTimeout("closePrintView()", 3000);
		

	});

	function closePrintView() {
        //window.location = "{{url('admin/opd_visits')}}";
        document.location.href = "{{url('admin/opd_visits')}}";
    }

</script>

</body>
</html>