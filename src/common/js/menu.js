$(document).ready(function() {
	$("article.book > div.toc").slicknav({
		label : "",
		allowParentLinks : true,
		closeOnClick : true,
		init : function() {
			$("div.toc").addClass("js-on");
			$("article.book").addClass("js-on");
		},
		open : function(trigger) {
			if (trigger[0].className.indexOf("slicknav_btn") > -1) {
				$(".slicknav_menu").css("height", "60%");
			}
		},
		close : function(trigger) {
			if (trigger[0].className.indexOf("slicknav_btn") > -1) {
				$(".slicknav_menu").css("height", "");
			}
		}
	});
});