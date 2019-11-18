/*
 * Author: Sambhaji Mane
 * Date: 08-03-2013
 * */
(function($)
{
	$.fn.change = function(action)
	{
		if (action === 0)
		{
			return this.each(function()
			{
				$(this).css({
				background : "rgb(239, 80, 88)",
				color : "white",
				border : "2px solid rgb(239, 80, 88)",
				boxShadow : "0 0 0 0 #ffffff"
				});
			});
		}
		else if (action === 2)
		{
			return this.each(function()
			{
				$(this).css({
				background : "rgb(255,255,255)",
				color : "#999999",
				border : "1px solid rgb (239, 80, 88)",
				boxShadow : "0 0 0 0 #ffffff"
				});
			});
		}
		else if (action === 1)
		{
			return this.each(function()
			{
				$(this).css({
				background : "rgb(255,255,255)",
				color : "#000000",
				border : "1px solid rgb (239, 80, 88)",
				boxShadow : "0 0 0 0 #ffffff"
				});
			});
		}
	};

	$.fn.scroll = function()
	{
		return this.each(function()
		{
			$('html, body').animate({
				scrollTop : $(this).offset().top
			}, 700);
		});
	};
}(jQuery));
