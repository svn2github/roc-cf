$(document).ready(function(){
	$("span.joinnow").click(function(){
		$('.barline').animate({
			height: '264px'
		}, 'slow');
		$("span.joinnow").addClass("active");
		$("span.joinnow").css('background', 'url(img/frontpage/joinnow_arrow_flip.png) no-repeat');
		$("span.joinnow").hover(function(){
			$("span.joinnow").css('background', 'url(img/frontpage/joinnow_arrow_flip_over.png) no-repeat');
		},function(){
			$("span.joinnow").css('background', 'url(img/frontpage/joinnow_arrow_flip.png) no-repeat');
		});
	});
	$("span.join .active").click(function(){
		$('.barline').animate({
			height: '40px'
		}, 'slow');
		$("span.joinnow").removeClass("active");
		$("span.joinnow").css('background', 'url(img/frontpage/joinnow_arrow.png) no-repeat');
		$("span.joinnow").hover(function(){
			$("span.joinnow").css('background', 'url(img/frontpage/joinnow_arrow_over.png) no-repeat');
		},function(){
			$("span.joinnow").css('background', 'url(img/frontpage/joinnow_arrow.png) no-repeat');
		});
	});
});