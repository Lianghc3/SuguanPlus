$('.dropdown-toggle').dropdown();
$('[data-toggle="popover"]').popover();
$('[data-toggle="tooltip"]').tooltip();
$('.dorm-btn').on('click', function(){
  $(this).toggleClass('active');
});
var btnHeads = $('.btn-head');
function handler(idx) {
  return function() {
    var btns = $('.btn-group-vertical').eq(idx).find('a');
    for (var i = 0, len = btns.length; i < len; i++) {
      $(btns[i]).toggleClass('active');
    }
  }
}
for (var i = 0, len = btnHeads.length; i < len; i++) {
  $(btnHeads[i]).on('click', handler(i));
}

