// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


function fetchCatNames(){
  $.ajax({
    method: 'get',
    url: '/api/cat_names',
    dataType: 'json',
    success: function(names){
      for (var i = 0; i < names.length; i++) {
        var listItem = $('<li>').text(names[i]['name']);
        $('body').append(listItem);
      }
    }
  })
}

function createCatName(newName){
  $.ajax({
    method: 'post',
    url: '/api/cat_names',
    dataType: 'json',
    data: {cat_name: {name: newName}},
    success: function(name){
      $('body').append(name['name']);
    }
  })
}
