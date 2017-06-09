function showErrors(jqXHR, exception, error_selector, please_wait_selector)
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
              
          $( error_selector ).html( errorsHtml ); //appending to a <div id="form-errors"></div> inside form

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
        $(error_selector ).html( '<div class="alert alert-danger"><ul><li>'+msg+'</li></ul></div>' );   
        $(error_selector ).show('slow');
      }

      $(please_wait_selector).hide();       
}