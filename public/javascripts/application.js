function remove_fields(link) {
    $(link).prev("input[type=hidden]").val("1");
    $(link).closest(".fields").hide('slow');
}

function add_fields(link, association, content) {
    var new_id = new Date().getTime();
    var regexp = new RegExp("new_" + association, "g");
      $(link).parent().before(content.replace(regexp, new_id));
}

$(function() {

    $( "#liste" ).accordion({autoHeight: false}).hide();

    $(".clique").click(function(event){

    $('#liste').show();
// zone de drag
    $( "#liste li" ).draggable({
      appendTo: "body",
      helper: "clone",
    });

//zone de depose

    $('.bunga').droppable({
      hoverClass: "ui-state-hover",
      accept: "#liste li"
    });

//zone de code

    $('.bunga').bind('drop', function( ev, ui ) {
      $(this).insertAtCaret(ui.draggable.text());
      });
    });
  });


$.fn.insertAtCaret = function (myValue) {
  return this.each(function(){
  //IE support
  if (document.selection) {
    this.focus();
    sel = document.selection.createRange();
    sel.text = myValue;
    this.focus();
  }
  //MOZILLA / NETSCAPE support
  else if (this.selectionStart || this.selectionStart == '0') {
    var startPos = this.selectionStart;
    var endPos = this.selectionEnd;
    var scrollTop = this.scrollTop;
    this.value = this.value.substring(0, startPos)+ myValue+ this.value.substring(endPos,this.value.length);
    this.focus();
    this.selectionStart = startPos + myValue.length;
    this.selectionEnd = startPos + myValue.length;
    this.scrollTop = scrollTop;
  } else {
    this.value += myValue;
    this.focus();
  }
  });
};
