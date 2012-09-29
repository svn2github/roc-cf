
function ChangeTab(totab){
	jQuery("#acc_content").fadeOut();
	jQuery("#settingsNavigation li").removeClass("selected");
	jQuery("#settingsNavigation #" + totab).addClass("selected");
	jQuery.get("app/tpl/habbo/views/account.cfm", {tab: totab},function(data) {
		jQuery("#acc_content").html(data);
		jQuery("#acc_content").fadeIn();
	});
}

function SubmitUserSettings(updateMotto, emailNewsletterEnabled, blockNewFriends, hideOnlineStatus, hideInRoom){
	jQuery(".success").fadeIn();
	jQuery.post("app/func/updateUserSettings.cfm", 
	{ 
		updateMotto: updateMotto,
		emailNewsletterEnabled: emailNewsletterEnabled,
		blockNewFriends: blockNewFriends,
		hideOnlineStatus: hideOnlineStatus,
		hideInRoom: hideInRoom
	});
}