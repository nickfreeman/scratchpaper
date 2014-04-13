$(function(){

	adjustItems($(window).width());
	$(window).resize(function() {
	    adjustItems($(window).width());
	});

  var container = $('#masonry-container');

  $('#masonry-container').masonry({
    itemSelector : '.item',
    columnWidth: function( containerWidth) {
              if (containerWidth > 480) {
              	return 240;
              } else {
              	var colWidth = containerWidth * 0.5;
              	return colWidth;
              }
            },
    isAnimated: true,
    isFitWidth: true
  });

  $(".like-button").click(function(){
  	var likeCount = this.parentNode.getElementsByClassName('like-count')[0].innerHTML;
  	likeCount++;
  	this.parentNode.getElementsByClassName('like-count')[0].innerHTML = likeCount;
  	console.log(likeCount);
  });

});

function adjustItems(width) {
	width = parseInt(width);
	var elements = getElementsByClassName(document, "item"), n = elements.length;
   	var elements2 = getElementsByClassName(document, "item w2"), n2 = elements2.length;   	
   	var elements3 = getElementsByClassName(document, "img-container"), n3 = elements3.length;
   	var elements4 = getElementsByClassName(document, "pw2"), n4 = elements4.length;

	if (width < 480) {
   		for (var i = 0; i < n; i++) {
		    var e = elements[i];
		    e.style.width=width*.45 + "px";
		    e.style.height=width*.45 + "px";
		    // e.style.marginLeft=width*0.05 + "px";
		    // e.style.marginRight=width*0.05 + "px";
		    // e.style.marginBottom = 0;
		    // e.style.marginRight = 0;
		    e.style.margin=width*0.025 + "px";
		}
		for (var i = 0; i < n2; i++) {
		    var e2 = elements2[i];
		    e2.style.width=width*.95 + "px";
		    e2.style.height=width*.45 + "px";
		}
		for (var i = 0; i < n3; i++) {
		    var e3 = elements3[i];
		    e3.style.width=width*.40 + "px";
		    e3.style.height=width*.40 + "px";
		}
		for (var i = 0; i < n4; i++) {
		    var e4 = elements4[i];
		    e4.style.width=width*.40 + "px";
		    e4.style.height=width*.40 + "px";
		}
    } else {
    	for (var i = 0; i < n; i++) {
		    var e = elements[i];
		    e.style.width=220 + "px";
		    e.style.height=220 + "px";
		    e.style.margin=10 + "px";
		}
		for (var i = 0; i < n2; i++) {
		    var e2 = elements2[i];
		    e2.style.width=460 + "px";
		    e2.style.height=220 + "px";
		}
		for (var i = 0; i < n3; i++) {
		    var e3 = elements3[i];
		    e3.style.width=200 + "px";
		    e3.style.height=200 + "px";
		}
		for (var i = 0; i < n4; i++) {
		    var e4 = elements4[i];
		    e4.style.width=220 + "px";
		    e4.style.height=220 + "px";
		}
    	$("stylesheet").attr("href", "/assets/home.css.scss");
    }
}

function getElementsByClassName(node,classname) {
  if (node.getElementsByClassName) { // use native implementation if available
    return node.getElementsByClassName(classname);
  } else {
    return (function getElementsByClass(searchClass,node) {
        if ( node == null )
          node = document;
        var classElements = [],
            els = node.getElementsByTagName("*"),
            elsLen = els.length,
            pattern = new RegExp("(^|\\s)"+searchClass+"(\\s|$)"), i, j;

        for (i = 0, j = 0; i < elsLen; i++) {
          if ( pattern.test(els[i].className) ) {
              classElements[j] = els[i];
              j++;
          }
        }
        return classElements;
    })(classname, node);
  }
}

function updateCountdown() {
    // 140 is the max message length
    var remaining = 140 - jQuery('#idea_blurb').val().length;
    jQuery('#idea-countdown').text(remaining)
    //.text(remaining + ' characters remaining');
}

jQuery(document).ready(function($) {
    updateCountdown();
    $('#idea_blurb').change(updateCountdown);
    $('#idea_blurb').keyup(updateCountdown);
});
