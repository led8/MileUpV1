function handleEquipment(){
  $('#filter-form').submit(function(event){
    event.preventDefault();
    var form = $(this),
        url = $(form).attr("action"),
        type = $(form).attr("method");

    $.ajax({
      url: url,
      type: type,
      data: $(form).serialize(),
      success: function(data){
        console.log(data);
        $('.scrolling-wrapper').append(data);
      }
    });
  });
}

// METHOD CALL //

handleEquipment();
