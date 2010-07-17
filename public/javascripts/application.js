$(function () {
  $('h1')
    .mouseover(function () {
        $(this).css('cursor', 'pointer');
      })
    .click(function () {
        location.href = '/';
      });
});

