
$(document).ready(function(){
    jQuery.ajaxSetup({ 'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}});
    
    $(document).ready(function() {
      $("#roman_nuber_converter").submitWithAjaxOnChange();
    });

    jQuery.fn.submitWithAjaxOnChange = function() {
      this.submit(function()  {
        $.post(this.action, $(this).serialize(), function(data){$('#number_number_to_convert').val(data)}, "script");
        return false;
      })
      return this;
    };


});




