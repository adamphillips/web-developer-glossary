$(document).ready(function() {
  $('a[rel=external]').click(function() {
    var href = $(this).attr('href');
    window.open(href);
    return false;
  })
})
