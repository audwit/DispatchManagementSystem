/*  Navigation Function  */

$j(document).ready(function(){
	$j("div.daughterWindow").each(function(){
		if($j(this).find('td.daughterWindow_bottomcol').html() == '')$j(this).find('td.daughterWindow_bottomcol').remove();
	});
	if($j.browser.msie == true && $j.browser.version < 7.0){
		$j('#TopNavHeaderRight li.special').css({"padding":"8px 0px 0px 5px;"});
	}
	$j("#TopHeader li").hover(
		function () {
			var ie6fix = "";
			if($j.browser.msie == true && $j.browser.version < 7.0){
				var w = $j(this).find("div.daughterWindow").width();
				var h = $j(this).find("div.daughterWindow").height();
				var ie6fix = '<iframe style="display:none;display:block;position:absolute;top:0px;left:-3px;z-index:-1;filter:mask();width:'+Number(w+3)+'px;height:'+Number(h+1)+'px;"></iframe>';
			}
			if($j(this).find("div.daughterWindow").length > 0){
				$j("#TopHeader li").find("div.daughterWindow").each(function(){$j(this).hide();});
				$j(this).find("div.daughterWindow").show();
				$j(this).find("div.daughterWindow").append(ie6fix);
				$j(this).find("div.daughterWindow").css({"top":$j(this).parent().position().top + 30,"left":$j(this).position().left});
				//$j(this).css("background","url('js/header.background.ornge.arrowup.gif') no-repeat 15px 24px");
				$j(this).find("table.DWTable").css("border-top","0px");
				
				var hoverwidth = $j(this).find("table.DWTable").innerWidth();
				var hoverleft = $j(this).find("div.daughterWindow").position().left;
				
				var header_right = $j("#TopHeader").position().left + $j("#TopHeader").width();
				var hoverbox_right = hoverleft + hoverwidth;
				
				if(hoverbox_right > header_right){
					var inViewX = hoverbox_right - header_right;
					$j(this).find("div.daughterWindow").css({"left":$j(this).position().left - inViewX});

				}
			}
		},	
		function () {

			if($j(this).find("div.daughterWindow").length > 0){
				$j(this).find("div.daughterWindow").hide();
				$j(this).css("background","none");
			}
		}
	);
});

function DoPrintProdPage(){
	window.print(); 
}
 
function DoEmailProdPage(){
	var myWindow = window.open('http://beta.cmegroup.com/popup/email.html','_blank','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no,width=565,height=350');
}

function AboutThisReportLink(link){
	var myWindow = window.open(link,'_blank','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=no, copyhistory=no,width=565,height=350');
} 