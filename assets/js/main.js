$(document).ready(function() {
  // Make external links open in a new window
  $('a[rel=external]').click(function() {
    var href = $(this).attr('href');
    window.open(href);
    return false;
  })

  // Make all images in the content area responsive
  $('.content img').addClass('img-responsive');
})
