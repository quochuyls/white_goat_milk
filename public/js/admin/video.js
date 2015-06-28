$(document).ready(function () {
	$('#checkVideoBtn').click(function (e) {
		e.preventDefault();
		var defaultImg = '/images/admin/no-img.gif';
		$(this).prop('disabled', true);
		$('.parsley-error').hide();
		var url = $('#url').val();
		var requestURL = BASE_URL + '/admin/video/getVideo';
		if (url == '') {
			//console.log($('#url_err').text());
			$('#url_err').show();
			$(this).prop('disabled', false);
			return false;
		} else {
			$('#url_err').hide();
			//$(this).prop('disabled', true);
			$('#url-loading').show();
			$.ajax({
				url: requestURL,
				type: 'GET',
				data: { url: url, format: 'json'},
				dataType: 'JSON'
			})
				.done(function( response ) {
					if(response.success == 1){
						console.log(response.video);
						$('#prev_input_thumbnail').attr('src', response.video.thumbnail_url);
						$('#title').val(response.video.title);
						$('#youtube_id').val(response.id);
						$('#thumbnail').val(response.video.thumbnail_url);
					}else{
						$('#prev_input_thumbnail').attr('src', defaultImg);
						$('#url_err').text('Lỗi không tìm thấy video, vui lòng kiểm tra lại đường dẫn!');
						$('#url_err').show();
						$('#youtube_id').val('');
						$('#thumbnail').val('');
					}
				})
				.fail(function( response ) {
					$('#prev_input_thumbnail').attr('src', defaultImg);
					$('#url_err').text('Lỗi không tìm thấy video, vui lòng kiểm tra lại đường dẫn!');
					$('#url_err').show();
					$('#youtube_id').val('');
					$('#thumbnail').val('');
				})
				.always(function(response){
					console.log(response);
					$('#url-loading').hide();
					$('#checkVideoBtn').prop('disabled', false);
				}) ;
		}
	});

});
