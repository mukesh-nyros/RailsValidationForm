# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  
  
  $("#validform_Username").blur ->
    $(this).next("p").remove()
    un = $(this).val()
    regex = /^[a-zA-Z][a-zA-Z0-9]{4,7}$/
    if un.length==0
      $(this).after "<p>Username should not be null</p>"
      $(this).css "border", "solid red"
      $("p").css("color","red");
      $(this).focus()
      return
    else if regex.test(un)
      $(this).css("border","2px solid grey")
      return
    else 
      $(this).after "<p>Username must contain {5-8} Alphanumeric characters</p>"
      $(this).css "border", "solid red"
      $("p").css("color","red");
      $(this).focus()
      return

 

  $("#validform_Password").blur ->
    $(this).next("p").remove()
    pwd = $(this).val()
    regex = /^[a-zA-Z0-9]{4,7}$/
    if pwd.length==0
      $(this).after "<p>Password should not be empty</p>"
      $(this).css "border", "solid red"
      $("p").css("color","red");
      $(this).focus()
      return
    else if regex.test(pwd)
      $(this).css("border","2px solid grey")
      return
    else
      $(this).after "<p>Password must contain {5-8} Alphanumeric characters</p>"
      $(this).css "border", "2px solid red"
      $("p").css("color","red");
      $(this).focus()
      return


  $('#validform_DateofBirth').blur ->
    $(this).next("p").remove();
    d = $(this).val()
    regex=///^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$///
    if d.length==0
      $(this).after "<p>Date of Birth should not be null</p>"
      $(this).css "border", "solid red"
      $("p").css("color","red");
      $(this).focus()
      return
    else if d.match(regex)
      $(this).css("border","2px solid grey")
      return
    else
      $(this).after("<p>Date of Birth format {mm/dd/yyyy} Please provide valid{months/days} </p>");
      $(this).css("border","2px solid red")
      $("p").css("color","red");
      $(this).focus()
      return  



  $("#validform_Phone").blur ->
    $(this).next("p").remove()
    mobile = $(this).val()
    regex = /^\+91\s\(?([0-9]{3})\)?[-]?([0-9]{3})[-]?([0-9]{4})$/
    if mobile.length==0
      $(this).after "<p>Phone number should not be empty</p>"
      $(this).css "border", "solid red"
      $("p").css("color","red");
      $(this).focus()
      return
    else if mobile.match(regex)
      $(this).css("border","2px solid grey")
      return
    else 
      $(this).after "<p>Enter phonenumber in the format:[+91 000-885-9894]</p>"
      $(this).css "border", "2px solid red"
      $("p").css("color","red");
      $(this).focus()
      return


  $('#validform_Email').blur ->
    $(this).next("p").remove()
    em = $(this).val()
    regex=///^[a-zA-Z]+[A-Za-z0-9]*@[a-zA-Z0-9]+\.com$///
    if !regex.test(em)
      $(this).after("<p>Email pattern {abc@gmail.com}</p>")
      $(this).css("border","2px solid red")
      $("p").css("color","red");
      $(this).focus()
      return
    else
      $(this).css("border","2px solid grey")
      return  
