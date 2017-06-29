<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminOpdVisitsController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = true;
			$this->button_edit = true;
			$this->button_delete = true;
			$this->button_detail = false;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = false;
			$this->table = "opd_visits";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"ID","name"=>"id"];
			$this->col[] = ["label"=>"Doctor","name"=>"doctor_id","join"=>"doctors,name"];
			$this->col[] = ["label"=>"Patient","name"=>"patient_id","join"=>"patients,name"];
			$this->col[] = ["label"=>"Patient NIC","name"=>"patient_id","join"=>"patients,cnic"];
			$this->col[] = ["label"=>"Token Number","name"=>"token_number"];
			$this->col[] = ["label"=>"Date Of Visit","name"=>"date_of_visit"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];

			$this->form[] = ['type'=>'html','html'=>'<div class="row">'];
			$this->form[] = ['type'=>'html','html'=>'<div class="col-md-6">'];
			$this->form[] = ['type'=>'html','html'=>'<fieldset>'];
			$this->form[] = ['type'=>'html','html'=>'<legend>Visit Information</legend>'];			

			$this->form[] = ['label'=>'Doctor','name'=>'doctor_id','type'=>'datamodal','validation'=>'required|min:1|max:255','width'=>'col-sm-10','datamodal_table'=>'doctors','datamodal_columns'=>'name,qualification,opd_current_token_number,opd_fee','datamodal_columns_alias'=>'Name,Qualification,Token Number,Fee','datamodal_size'=>'large','datamodal_select_to'=>'opd_fee:doctor_fee,opd_current_token_number:token_number'];
			$this->form[] = ['label'=>'Patient','name'=>'patient_id','type'=>'datamodal','validation'=>'required|min:1|max:255','width'=>'col-sm-10','datamodal_table'=>'patients','datamodal_columns'=>'name,guardian_name,cnic,phone,address','datamodal_columns_alias'=>'Name,Guardian Name,CNIC,Phone,Address','datamodal_size'=>'large','datamodal_module_path'=>'patients/add'];
			$this->form[] = ['label'=>'Token Number','name'=>'token_number','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Doctor Fee','name'=>'doctor_fee','type'=>'number','validation'=>'required|min:1|max:255','width'=>'col-sm-10','readonly'=>'true'];

			$this->form[] = ['type'=>'html','html'=>'</fieldset>'];
			$this->form[] = ['type'=>'html','html'=>'</div>'];

			
			$this->form[] = ['type'=>'html','html'=>'<div class="col-md-6">'];
			$this->form[] = ['type'=>'html','html'=>'<fieldset>'];
			$this->form[] = ['type'=>'html','html'=>'<legend>Vital Signs</legend>'];

			$this->form[] = ['label'=>'Bp Up','name'=>'bp_up','type'=>'number','validation'=>'','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Bp Down','name'=>'bp_down','type'=>'number','validation'=>'','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Temperature','name'=>'temperature','type'=>'number','validation'=>'','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Blood Sugar','name'=>'blood_sugar','type'=>'number','validation'=>'','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Weight','name'=>'weight','type'=>'number','validation'=>'','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Pulse','name'=>'pulse_rate','type'=>'number','validation'=>'','width'=>'col-sm-10'];

			$this->form[] = ['type'=>'html','html'=>'</fieldset>'];
			$this->form[] = ['type'=>'html','html'=>'</div>'];
			$this->form[] = ['type'=>'html','html'=>'</div>'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Doctor','name'=>'doctor_id','type'=>'datamodal','validation'=>'required|min:1|max:255','width'=>'col-sm-10','datamodal_table'=>'doctors','datamodal_columns'=>'name,qualification,opd_current_token_number,opd_fee','datamodal_columns_alias'=>'Name,Qualification,Token Number,Fee','datamodal_size'=>'large'];
			//$this->form[] = ['label'=>'Patient','name'=>'patient_id','type'=>'datamodal','validation'=>'required|min:1|max:255','width'=>'col-sm-10','datamodal_table'=>'patients','datamodal_columns'=>'name,guardian_name,cnic,phone,address','datamodal_columns_alias'=>'Name,Guardian Name,CNIC,Phone,Address','datamodal_size'=>'large','datamodal_module_path'=>'patients/add'];
			//$this->form[] = ['label'=>'Token Number','name'=>'token_number','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Doctor Fee','name'=>'doctor_fee','type'=>'number','validation'=>'required|min:1|max:255','width'=>'col-sm-10','readonly'=>'true'];
			//$this->form[] = ['label'=>'Bp Up','name'=>'bp_up','type'=>'number','validation'=>'numeric','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'Bp Down','name'=>'bp_down','type'=>'number','validation'=>'nu','width'=>'col-sm-9'];
			# OLD END FORM

			/* 
	        | ---------------------------------------------------------------------- 
	        | Sub Module
	        | ----------------------------------------------------------------------     
			| @label          = Label of action 
			| @path           = Path of sub module
			| @foreign_key 	  = foreign key of sub table/module
			| @button_color   = Bootstrap Class (primary,success,warning,danger)
			| @button_icon    = Font Awesome Class  
			| @parent_columns = Sparate with comma, e.g : name,created_at
	        | 
	        */
	        $this->sub_module = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font awesome class icon. e.g : fa fa-bars
	        | @color 	   = Default is primary. (primary, warning, succecss, info)     
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        | 
	        */
	        $this->addaction = array();

	        $this->addaction[] = ['label'=>'Print','url'=>CRUDBooster::adminPath('opd_visits/[id]/print'),'icon'=>'fa fa-print','color'=>'success'];


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Button Selected
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @icon 	   = Icon from fontawesome
	        | @name 	   = Name of button 
	        | Then about the action, you should code at actionButtonSelected method 
	        | 
	        */
	        $this->button_selected = array();

	                
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add alert message to this module at overheader
	        | ----------------------------------------------------------------------     
	        | @message = Text of message 
	        | @type    = warning,success,danger,info        
	        | 
	        */
	        $this->alert        = array();
	                

	        
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add more button to header button 
	        | ----------------------------------------------------------------------     
	        | @label = Name of button 
	        | @url   = URL Target
	        | @icon  = Icon from Awesome.
	        | 
	        */
	        $this->index_button = array();



	        /* 
	        | ---------------------------------------------------------------------- 
	        | Customize Table Row Color
	        | ----------------------------------------------------------------------     
	        | @condition = If condition. You may use field alias. E.g : [id] == 1
	        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.        
	        | 
	        */
	        $this->table_row_color = array();     	          

	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | You may use this bellow array to add statistic at dashboard 
	        | ---------------------------------------------------------------------- 
	        | @label, @count, @icon, @color 
	        |
	        */
	        $this->index_statistic = array();



	        /*
	        | ---------------------------------------------------------------------- 
	        | Add javascript at body 
	        | ---------------------------------------------------------------------- 
	        | javascript code in the variable 
	        | $this->script_js = "function() { ... }";
	        |
	        */
	        $this->script_js = NULL;


            /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code before index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it before index table
	        | $this->pre_index_html = "<p>test</p>";
	        |
	        */
	        $this->pre_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code after index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it after index table
	        | $this->post_index_html = "<p>test</p>";
	        |
	        */
	        $this->post_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include Javascript File 
	        | ---------------------------------------------------------------------- 
	        | URL of your javascript each array 
	        | $this->load_js[] = asset("myfile.js");
	        |
	        */
	        $this->load_js = array();
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Add css style at body 
	        | ---------------------------------------------------------------------- 
	        | css code in the variable 
	        | $this->style_css = ".style{....}";
	        |
	        */
	        $this->style_css = NULL;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include css File 
	        | ---------------------------------------------------------------------- 
	        | URL of your css each array 
	        | $this->load_css[] = asset("myfile.css");
	        |
	        */
	        $this->load_css = array();
	        
	        if(CRUDBooster::getCurrentMethod() == 'getEdit' || CRUDBooster::getCurrentMethod() == 'postEditSave' )
			{
				$this->form[] = ['type'=>'html','html'=>'<div id="show_in_edit_only" class="row">'];

				$this->form[] = ['type'=>'html','html'=>'<div class="col-md-12">'];
				$this->form[] = ['type'=>'html','html'=>'<fieldset>'];
				$this->form[] = ['type'=>'html','html'=>'<legend>Detail</legend>'];

				$show_symptoms = DB::table('cms_settings')->where('name','show_symptoms_in_opd_visit')->where('group_setting','OPD Visit Settings')->first()->content;
				if($show_symptoms == 'Yes')
				{
					$this->form[] = ['type'=>'html','html'=>'<div class="col-md-6">'];
					$this->form[] = ['type'=>'html','html'=>'<fieldset>'];
					$this->form[] = ['type'=>'html','html'=>'<legend>Symptoms</legend>'];
					$this->form[] = ['label'=>'Symptoms','name'=>'symptom_id', 'relationship_table' => 'opd_visit_symptoms','type'=>'select2','datatable'=>'symptoms,name','datatable_ajax'=>false];

					$this->form[] = ['label'=>'New Symptoms','name'=>'new_symptoms','type'=>'text','placeholder'=>'Headache,Vomitting'];
					$this->form[] = ['type'=>'html','html'=>'</fieldset>'];
					$this->form[] = ['type'=>'html','html'=>'</div>'];
				}


				$show_diagnoses = DB::table('cms_settings')->where('name','show_diagnoses_in_opd_visit')->where('group_setting','OPD Visit Settings')->first()->content;
				if($show_diagnoses == 'Yes')
				{
					$this->form[] = ['type'=>'html','html'=>'<div class="col-md-6">'];
					$this->form[] = ['type'=>'html','html'=>'<fieldset>'];
					$this->form[] = ['type'=>'html','html'=>'<legend>Diagnoses</legend>'];
					$this->form[] = ['label'=>'Diagnoses','name'=>'diagnosis_id', 'relationship_table' => 'opd_visit_diagnoses','type'=>'select2','datatable'=>'diagnoses,name','datatable_ajax'=>false];

					$this->form[] = ['label'=>'New Diagnoses','name'=>'new_diagnoses','type'=>'text','placeholder'=>'Acne,Asthama'];
					$this->form[] = ['type'=>'html','html'=>'</fieldset>'];
					$this->form[] = ['type'=>'html','html'=>'</div>'];
				}


				$facilities_columns[] = ['label'=>'Facility','name'=>'facility_id','type'=>'datamodal','datamodal_table'=>'facilities','datamodal_columns'=>'name,unit,cost,sale_price','datamodal_columns_alias'=>'Name,Unit,Cost,Sale Price','datamodal_select_to'=>'sale_price:sale_price','datamodal_where'=>'','datamodal_size'=>'large','required'=>true];

				$facilities_columns[] = ['label'=>'Days','name'=>'days','type'=>'number'];
				$facilities_columns[] = ['label'=>'Direction','name'=>'direction','type'=>'text','placeholder'=>'1+1+1 or 1 tablet daily three times'];
				$facilities_columns[] = ['label'=>'Qty','name'=>'qty','type'=>'number','required'=>true];
				
				$facilities_columns[] = ['label'=>'Price','name'=>'sale_price','type'=>'number','readonly'=>true,'required'=>true];

				$facilities_columns[] = ['label'=>'Sub Total','name'=>'sub_total','type'=>'number','formula'=>"[qty] * [sale_price]","readonly"=>true,'required'=>true];

				$this->form[] = ['label'=>'Facilities','name'=>'facilities','type'=>'child','columns'=>$facilities_columns,'table'=>'opd_visit_facilities','foreign_key'=>'opd_visit_id'];


				$this->form[] = ['label'=>'Total Charges','name'=>'total_charges','type'=>'number',"readonly"=>true];

				$this->form[] = ['type'=>'html','html'=>'</fieldset>'];
				$this->form[] = ['type'=>'html','html'=>'</div>'];

				$this->form[] = ['type'=>'html','html'=>'</div>'];
			}

			$this->script_js = "

				$(document).ready(function(){
					var doctor_fee = +$('#doctor_fee').val();

					setInterval(function(){
						var total = 0;
						$('table#table-facilities .sub_total').each(function(){
							var amount = +$(this).text();
							total += amount;
						});
						$('#total_charges').val(total + doctor_fee);
					}, 500);
				});

			";
	        
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for button selected
	    | ---------------------------------------------------------------------- 
	    | @id_selected = the id selected
	    | @button_name = the name of button
	    |
	    */
	    public function actionButtonSelected($id_selected,$button_name) {
	        //Your code here
	            
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate query of index result 
	    | ---------------------------------------------------------------------- 
	    | @query = current sql query 
	    |
	    */
	    public function hook_query_index(&$query) {
	        //Your code here
	            
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate row of index table html 
	    | ---------------------------------------------------------------------- 
	    |
	    */    
	    public function hook_row_index($column_index,&$column_value) {	        
	    	//Your code here
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before add data is execute
	    | ---------------------------------------------------------------------- 
	    | @arr
	    |
	    */
	    public function hook_before_add(&$postdata) {        
	        //Your code here
	    	$postdata['date_of_visit'] = \Carbon\Carbon::now()->format('Y-m-d H:i:s');

	    	// increase token number of doctor
	    	DB::table('doctors')->where('id', $postdata['doctor_id'])
	    				->update(['opd_current_token_number' => $postdata['token_number'] + 1]);


			$this->before_add_or_edit($postdata);
	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after add public static function called 
	    | ---------------------------------------------------------------------- 
	    | @id = last insert id
	    | 
	    */
	    public function hook_after_add($id) {        
	        //Your code here
			$this->after_add_or_edit($id);
	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before update data is execute
	    | ---------------------------------------------------------------------- 
	    | @postdata = input post data 
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_edit(&$postdata,$id) {        
	        //Your code here

			$this->before_add_or_edit($postdata);
	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after edit public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_edit($id) {
	        //Your code here 
	    	$this->after_add_or_edit($id);
	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command before delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_delete($id) {
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_delete($id) {
	        //Your code here

	    }



	    //By the way, you can still create your own method in here... :) 

	    public function before_add_or_edit(&$postdata)
	    {
	    	unset($postdata['new_symptoms']);
			unset($postdata['new_diagnoses']);
			unset($postdata['total_charges']);
	    }

	    public function after_add_or_edit($id)
	    {
	    	// update cost and subtotal
	    	$opd_facilities = DB::table('opd_visit_facilities')->where('opd_visit_id', $id)->get();

	    	foreach ($opd_facilities as $key => $opd_facility) {
	    		$cost = DB::table('facilities')->where('id', $opd_facility->facility_id)->first()->cost;

	    		DB::table('opd_visit_facilities')
	    			->where('id', $opd_facility->id)
	    			->update([
	    				'cost' => $cost,
	    			]);
	    	}

	    	//new symptoms
	    	if(request()->new_symptoms != '')
	    	{
	    		$new_symptoms = explode(',', request()->new_symptoms);

	    		foreach ($new_symptoms as $key => $value) {
	    			$value = trim($value);
	    			$item = DB::table('symptoms')->where('name', $value)->first();

	    			$item_id = 0;

	    			if( $item == null )
	    			{
	    				$item_id = DB::table('symptoms')->insertGetId(['name'=>$value]);
	    			}	
	    			else
	    				$item_id = $item->id;

	    			DB::table('opd_visit_symptoms')->insert(['opd_visit_id'=>$id, 'symptom_id'=>$item_id]);
	    		}	    		
	    	}

	    	//new diagnoses
	    	if(request()->new_diagnoses != '')
	    	{
	    		$new_diagnoses = explode(',', request()->new_diagnoses);

	    		foreach ($new_diagnoses as $key => $value) {
	    			$value = trim($value);
	    			$item = DB::table('diagnoses')->where('name', $value)->first();

	    			$item_id = 0;

	    			if( $item == null )
	    			{
	    				$item_id = DB::table('diagnoses')->insertGetId(['name'=>$value]);
	    			}	
	    			else
	    				$item_id = $item->id;

	    			DB::table('opd_visit_diagnoses')->insert(['opd_visit_id'=>$id, 'diagnosis_id'=>$item_id]);
	    		}	    		
	    	}
	    }

	    public function getAdd(){
			$this->cbLoader();
			if(!CRUDBooster::isCreate() && $this->global_privilege==FALSE || $this->button_add==FALSE) {
				CRUDBooster::insertLog(trans('crudbooster.log_try_add',['module'=>CRUDBooster::getCurrentModule()->name ]));
				CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
			}

			$page_title      = trans("crudbooster.add_data_page_title",['module'=>CRUDBooster::getCurrentModule()->name]);
			//$page_menu       = Route::getCurrentRoute()->getActionName();
			$command 		 = 'add';

			$patient_id = request()->patient_id;

			$initial_data = array();
			
			//$patient_id = '1';
			if($patient_id != '')
			{
				$patient = DB::table('patients')->where('id', $patient_id)->first();

				$initial_data['patient_id'] = [ 'id' => $patient->id, 'display' => $patient->name ];
			}

			return view('crudbooster::default.form',compact('page_title','page_menu','command', 'initial_data'));
		}

		public function afterPostAddSave($id)
		{
			
			$message = 'Saved Successfully';
			$type = 'success';
			$to = CRUDBooster::adminPath('opd_visits/'. $id . '/print');

			$resp = response()->json(['message'=>$message,'message_type'=>$type,'redirect_url'=>$to])->send();
			exit;
		}

		public function print_visit($id)
		{
			$opd_visit = DB::table('opd_visits')
						->leftJoin('patients', 'patients.id', '=', 'opd_visits.patient_id')
						->leftJoin('doctors', 'doctors.id', '=', 'opd_visits.doctor_id')
						->select('opd_visits.*', 'patients.name as patient_name', 'patients.guardian_name',
							'patients.gender', 'patients.age', 'patients.address', 'doctors.name as doctor_name',
							'doctors.qualification as doctor_qualification', 'doctors.opd_fee')
						->where('opd_visits.id', $id)->first();

			$header_image = DB::table('cms_settings')
			->where('name', 'header_image')
			->where('group_setting', 'OPD Visit Settings')
			->first()->content;

			$symptoms = DB::table('opd_visit_symptoms')
							->join('symptoms', 'symptoms.id', '=', 'opd_visit_symptoms.symptom_id')
							->where('opd_visit_symptoms.opd_visit_id', $id)
							->get();

			$diagnoses = DB::table('opd_visit_diagnoses')
							->join('diagnoses', 'diagnoses.id', '=', 'opd_visit_diagnoses.diagnosis_id')
							->where('opd_visit_diagnoses.opd_visit_id', $id)
							->get();

			$facilities = DB::table('opd_visit_facilities')
							->join('facilities', 'facilities.id', '=', 'opd_visit_facilities.facility_id')
							->where('opd_visit_facilities.opd_visit_id', $id)
							->get();

			//get print page size
			$page_size = DB::table('cms_settings')
			->where('name', 'print_size')
			->where('group_setting', 'OPD Visit Settings')
			->first()->content;

			if($page_size == 'Brief')
			{
				$view = 'opd_visits.print_brief';
			}
			else if($page_size == 'Detailed')
			{
				$view = 'opd_visits.print_detailed';
			}

			$show_symptoms = DB::table('cms_settings')->where('name','show_symptoms_in_opd_visit')->where('group_setting','OPD Visit Settings')->first()->content;
			$show_diagnoses = DB::table('cms_settings')->where('name','show_diagnoses_in_opd_visit')->where('group_setting','OPD Visit Settings')->first()->content;

			return view($view, compact('header_image', 'opd_visit', 'symptoms', 'diagnoses', 'facilities', 'show_symptoms', 'show_diagnoses'));
		}


	}