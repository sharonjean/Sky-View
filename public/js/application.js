$(document).ready(function () {

/*
*  question id = question_ID where 'ID' references its own id
*  question_id = question_ID where 'ID' references its own id
*
*
* */

  $('#questionForm').on('submit', postQuestion);
  // $('#answerForm').on('submit', postAnswer);
  // $('#commentForm').on('submit', postComment);
  $('.expandQuestion').on('click', showFormAndAnswers);
  // $('#expandAnswer').on('click', showFormAndComments);


});

var postQuestion = function(event){
  event.preventDefault()
  var route = $('#questionForm').attr('action');
  console.log('route')
  var value = $(this).serialize();
  debugger
  $.post(route, value, printQuestion);
}

var printQuestion = function(response){
debugger
  console.log('response')
  console.log(response)
  debugger;
  $('#all_questions').prepend(response)
}

var showFormAndAnswers = function(event){
  console.log("hello")
  event.preventDefault()
  var route = $(this).attr('href')
  $.get(route, expandQuestion)
}

var expandQuestion = function(response){
  $('#answer_1').after(response)
}


var postAnswer = function(){
  // here's something
  //do post to database
  //get response
  //put post onto homepage
}


var postComment = function(){
  //do post to database
  //get response
  //put post onto homepage
}
