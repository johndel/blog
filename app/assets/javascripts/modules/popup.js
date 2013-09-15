$(function() {
  $(document).on("click", ".popup", function(e) {
    popupCenter($(this).attr("href"), "JohnDel's Blog");
    e.stopPropagation(); return false;
  });
});

function popupCenter(url, name) {
  var width = 600;
  var height = 300;
  var left = (screen.width/2)-(width/2);
  var top = (screen.height/2)-(height/2);
  return window.open(url, name, "menubar=no,toolbar=no,status=no,width="+width+",height="+height+",toolbar=no,left="+left+",top="+top);
}