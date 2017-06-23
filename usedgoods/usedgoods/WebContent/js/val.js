$(function() {
	$('#number').blur(function() {
		var storage = $('#storage').val();
		var num = $('#number').val();
		storage = Number(storage);
		num = Number(num);
		if (storage < num) {
			$('#acc').html('库存不足');
		} else {
			var price = $('#price').val();
			price = Number(price);
			$('#acc').html(num * price + '元');
		}
	});
});