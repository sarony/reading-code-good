$(document).ready(function(){

  function scrolling(){
    $("body").animate({
      scrollTop: scrollToPosition
    }, 600);
  }

  if ($(window).width() > 640){
    padding = 60
  } else {
    padding = 200
  }

  $(".js-faqs-nav").on("click", function(){
    scrollToPosition = ($( $(this).attr('href')).offset().top) - padding
    scrolling();
  });

  $(".js-resources-nav").on("click", function(){
    scrollToPosition = ($( $(this).attr('href')).offset().top) - padding
    scrolling();
  });

  $(".js-codebases-nav").on("click", function(){
    if ($(window).width() < 640){
      padding = 220
    }
    scrollToPosition = ($( $(this).attr('href')).offset().top) - padding
    scrolling();
  });

  $(".js-about-nav").on("click", function(){
    scrollToPosition = ($( $(this).attr('href')).offset().top) - padding
    scrolling();
  });





});