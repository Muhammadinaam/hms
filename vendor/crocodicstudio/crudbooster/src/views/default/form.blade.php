@extends('crudbooster::admin_template')
@section('content')

<div >

  @if(CRUDBooster::getCurrentMethod() != 'getProfile' && $button_cancel)
  @if(g('return_url'))
  <p><a title='Return' href='{{g("return_url")}}'><i class='fa fa-chevron-circle-left '></i> &nbsp; {{trans("crudbooster.form_back_to_list",['module'=>CRUDBooster::getCurrentModule()->name])}}</a></p>       
  @else
  <p><a title='Main Module' href='{{CRUDBooster::mainpath()}}'><i class='fa fa-chevron-circle-left '></i> &nbsp; {{trans("crudbooster.form_back_to_list",['module'=>CRUDBooster::getCurrentModule()->name])}}</a></p>       
  @endif
  @endif

  <div class="panel panel-default">
   <div class="panel-heading">
     <strong><i class='{{CRUDBooster::getCurrentModule()->icon}}'></i> {!! $page_title or "Page Title" !!}</strong>
   </div> 

   <div class="panel-body" style="padding:20px 0px 0px 0px">
    <?php                               
    $action = (@$row)?CRUDBooster::mainpath("edit-save/$row->id"):CRUDBooster::mainpath("add-save");
    $return_url = ($return_url)?:g('return_url');          
    ?>
    <form class='form-horizontal' method='post' id="form" enctype="multipart/form-data" action='{{$action}}'>
      <input type="hidden" name="_token" value="{{ csrf_token() }}">    
      <input type='hidden' name='return_url' value='{{ @$return_url }}'/>                      
      <input type='hidden' name='ref_mainpath' value='{{ CRUDBooster::mainpath() }}'/>      
      <input type='hidden' name='ref_parameter' value='{{urldecode(http_build_query(@$_GET))}}'/>
      @if($hide_form)
      <input type="hidden" name="hide_form" value='{!! serialize($hide_form) !!}'>
      @endif
      <div class="box-body" id="parent-form-area">

        @if($command == 'detail')
        @include("crudbooster::default.form_detail")  
        @else
        @include("crudbooster::default.form_body")         
        @endif
      </div><!-- /.box-body -->

      <div class="box-footer" style="background: #F5F5F5">  

        <div class="form-group">
          <label class="control-label col-sm-2"></label>
          <div class="col-sm-10">
            @if($button_cancel && CRUDBooster::getCurrentMethod() != 'getDetail')                       
            @if(g('return_url'))
            <a href='{{g("return_url")}}' class='btn btn-default'><i class='fa fa-chevron-circle-left'></i> {{trans("crudbooster.button_back")}}</a>
            @else 
            <a href='{{CRUDBooster::mainpath("?".http_build_query(@$_GET)) }}' class='btn btn-default'><i class='fa fa-chevron-circle-left'></i> {{trans("crudbooster.button_back")}}</a>
            @endif
            @endif
            @if(CRUDBooster::isCreate() || CRUDBooster::isUpdate())

            @if(CRUDBooster::isCreate() && $button_addmore==TRUE && $command == 'add')                                                                                                     
            <input id="button_save_more" type="submit" name="submit" value='{{trans("crudbooster.button_save_more")}}' class='btn btn-success'>
            @endif

            @if($button_save && $command != 'detail')
            <input id="button_save" type="submit" name="submit" value='{{trans("crudbooster.button_save")}}' class='btn btn-success'>
            @endif

            @endif
          </div>
        </div>

      </div><!-- /.box-footer-->

    </form>

  </div>
</div>
</div><!--END AUTO MARGIN-->

<script type="text/javascript">

  $(document).ready(function(){

    $('.box-footer').append($(`<div id='errors' style="display: none;">
                              </div> `));

    $('.box-footer').append($(`<div id="please-wait" style="display: none;">
                                <h3>Please wait...</h3>
                              </div>`));

    redirect_url = '';

    $('#button_save_more').click(function(){
      redirect_url = window.location.href;  // back to same page
    });

    $('#button_save').click(function(){
      redirect_url = '';  // unset
    });

    $('#form').submit(function(e){

      $('#button_save_more, #button_save').attr('disabled', true);

      e.preventDefault();

      var formData = new FormData($('#form')[0]);

      $('#errors').hide('slow');

      $('#please-wait').show('slow');

      $.ajax({
        type: 'post',
        data: formData,
        cache: false,
        contentType: false,
        processData: false,
        url: "{{$action}}",
        success: function(data){
          if(data.message_type != 'success')
          {
            errorsHtml = '<div class="alert alert-danger">'+data.message+'</div>'
            $( '#errors' ).html( errorsHtml );
            $( '#errors' ).show('slow');
            $('#please-wait').hide('slow');
          }
          else if(data.message_type == 'success')
          {
            $( '#errors' ).hide('slow');
            $('#please-wait').hide('slow');


            swal({
                   title: "Success",
                   text: "Data Saved Successfully",
                   type: "success",
                   showCancelButton: false,
                   confirmButtonColor: "#DD6B55",
                   confirmButtonText: "Ok",
                   closeOnConfirm: false 
                  },
                    function(){
                      if(redirect_url == '')
                        window.location.href = data.redirect_url;    
                      else
                        window.location.href = redirect_url;
                  });
          }
        },
        error: function(jqXHR, exception){
          showErrors(jqXHR, exception);          
        },

      }).always(function(){
        $('#button_save_more, #button_save').attr('disabled', false);
      });

    });


    function showErrors(jqXHR, exception)
    {
      var msg = '';
          if (jqXHR.status === 0) {
              msg = 'Not connected.\n Verify Network.';
          } else if (jqXHR.status == 404) {
              msg = 'Requested page not found. [404]';
          }else if (jqXHR.status == 422) {
              
              //process validation errors here.
              errors = jqXHR.responseJSON; //this will get the errors response data.
              //show them somewhere in the markup
              //e.g
              errorsHtml = '<div class="alert alert-danger"><ul>';

              $.each( errors, function( key, value ) {
                  errorsHtml += '<li>' + value[0] + '</li>'; //showing only the first error.
              });
              errorsHtml += '</ul></div>';
                  
              $( '#errors' ).html( errorsHtml ); //appending to a <div id="form-errors"></div> inside form

          } else if (jqXHR.status == 500) {

              msg = 'Internal Server Error [500].';
          } else if (jqXHR.status == 401) {
              alert('Session Expired - 401');
          } else if (exception === 'parsererror') {
              msg = 'Requested JSON parse failed.';
          } else if (exception === 'timeout') {
              msg = 'Time out error.';
          } else if (exception === 'abort') {
              msg = 'Ajax request aborted.';
          } else {
              msg = 'Uncaught Error.\n' + jqXHR.responseText;
          }
          
          if(msg != '')
          {
            $('#errors' ).html( '<div class="alert alert-danger"><ul><li>'+msg+'</li></ul></div>' );   
            $('#errors' ).show('slow');
          }

          $('#please-wait').hide();       
    }

  });

  </script>

  @endsection