$(document).ready(function(){
		$('.has-date-picker').daterangepicker({
		singleDatePicker: true,
		calender_style: "picker_2",
		format: 'DD-MM-YYYY'
	}, function (start, end, label) {
	});

	$('a[data-confirm]').click(function(ev) {
		var href = $(this).attr('href');
		var confirmModal =  '<div id="dataConfirmModal" class="modal fade" tabindex="-1" role="dialog">' +
			'<div class="modal-dialog modal-sm">' +
			'<div class="modal-content">' +
			'<div class="modal-header">' +
			'<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>' +
			'<h4 class="modal-title" id="myModalLabel2">THÔNG BÁO</h4>' +
			'</div>' +
			'<div class="modal-body">' +
			'<span>' + $(this).attr('data-confirm') + '</span>' +
			'</div>' +
			'<div class="modal-footer">' +
			'<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>' +
			'<button type="button" id="dataConfirmOK" data-dismiss="modal" class="btn btn-danger">Xóa</button>' +
			'</div>' +
			'</div>' +
			'</div>' +
			'</div>';

		if (!$('#dataConfirmModal').length) {
			$('body').append(confirmModal);
		}
		$('#dataConfirmOK').attr('href', href);
		$('#dataConfirmModal').modal({show:true});
		return false;
	});

});
$(document).on('click', '#dataConfirmOK',  function(e){
	console.log($(this).attr('href'));
	window.location.href = $(this).attr('href');
});
