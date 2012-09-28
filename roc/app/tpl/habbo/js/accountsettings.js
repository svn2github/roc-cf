
function ChangeTab(totab){
	jQuery("#acc_content").fadeOut();
	jQuery.get("app/tpl/habbo/views/account.cfm", {tab: totab},function(data) {
		jQuery("#acc_content").html(data);
		jQuery("#settingsNavigation li").removeClass("selected");
		jQuery("#settingsNavigation #" + totab).addClass("selected");
		jQuery("#acc_content").fadeIn();
	});
}