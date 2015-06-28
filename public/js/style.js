$(window).scroll(function () {
  var $menu = $('.menu-bar'),
      $conten = $('.menu-bar'),
      scrollpos = $(window).scrollTop();
  if (scrollpos >= 100) {
      $menu.css( {
        "top" : "0",
        "position": "fixed",
      });
      $conten.css('top','0' );
  } else {
      $menu.css( {
        "position": "relative",
        "top" : "0",
      });
      $conten.css('top','0');
  }
});
$(function() {
	$('.childmenu, .link-milk').hide();
	$('.dichvu').hover(function(){
		$(this).children(".childmenu").stop().slideDown(200);
				},function(){
		$(this).children(".childmenu").stop().slideUp(200)
		})
	$('.section-milk-left').hover(function(){
			$(this).children('.link-milk').stop().slideDown(200);
		},function(){
			$(this).children('.link-milk').stop().slideUp(400)
		})
	$('.section-milk-right').hover(function(){
			$(this).children('.link-milk').stop().slideDown(200);
		},function(){
			$(this).children('.link-milk').stop().slideUp(400)
		})
	$('.noidung1, .noidung1a').click(function(){
		$(".text-1").stop().slideDown(800);
		$('.text-2, .text-3').stop().slideUp(800);
		$('.label-1').show();
		$('.label-2, .label-3').hide();
		$(".img2, .img3").css({width:'80px', height:'80px'});
		$(".img1").css({width:'150px', height:'150px'});
		$(".noidung1").css({border:'#0b540d dashed 3px'});
	})
	$('.noidung2, .noidung2a').click(function(){
		$('.text-2').stop().slideDown(800);
		$('.label-2').show();
		$('.label-1, .label-3').hide();
		$('.text-1, .text-3').stop().slideUp(800);
		$(".noidung2").css({border:'#0b540d dashed 3px'});
		$(".img1, .img3").css({width:'80px', height:'80px'});
		$(".img2").css({width:'150px', height:'150px'});
	})
	$('.noidung3, .noidung3a').click(function(){
		$('.text-3').stop().slideDown(800);
		$('.label-3').show();
		$('.label-2, .label-1').hide();
		$('.text-1, .text-2').stop().slideUp(800);
		$(".noidung3").css({border:'#0b540d dashed 3px'});
		$(".img1, .img2").css({width:'80px', height:'80px'});
		$(".img3").css({width:'150px', height:'150px'});
	})
})
if (!!jQuery('.content-section-2-right').offset()) {
        var stickyTop = jQuery('.content-section-2-right').offset().top;
        jQuery(window).scroll(function() {
        var windowTop = jQuery(window).scrollTop();
        if (stickyTop < windowTop){
            jQuery('.content-section-2-right').css({ position: 'fixed', top: '20px'});
        }
        else {
            jQuery('.content-section-2-right').css('position','static');
        }
    });
    }

$(document).ready(function() {
	var $year = $('#calendar-year #year').text();

	$('#calendar-month a').each(function() {
		var uri = ($(this).attr('data-href') + '/' + $year);
		$(this).attr('href', uri);
	});

	$('#calendar-year #Prev').click(function() {
		var $year = $('#calendar-year #year').text();
		var $nextYear = parseInt($year) - 1;
		$('#calendar-year #year').text($nextYear);
		$('#calendar-month a').each(function() {
			var uri = ($(this).attr('data-href') + '/' + $nextYear);
			$(this).attr('href', uri);
		});
	});

	$('#calendar-year #Next').click(function() {
		var $year = $('#calendar-year #year').text();
		var $nextYear = parseInt($year) + 1;
		$('#calendar-year #year').text($nextYear);
		$('#calendar-month a').each(function() {
			var uri = ($(this).attr('data-href') + '/' + $nextYear);
			$(this).attr('href', uri);
		});
	});
});

