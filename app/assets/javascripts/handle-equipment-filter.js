// function handleEquipment(){
//   $('#filters-form').submit(function(event){
//     event.preventDefault();
//     var form = $(this),
//         url = $(form).attr("action"),
//         type = $(form).attr("method");

//     $.ajax({
//       url: url,
//       type: type,
//       data: $(form).serialize(),
//       success: function(data){
//         console.log(data);
//         $('.equipments-list').remove();
//         $('.map').remove();
//         $('.map-container').append(data);
//       }
//     });
//   });
// }

// // METHOD CALL //

// handleEquipment();
