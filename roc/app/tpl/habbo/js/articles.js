
function ChangeStory(tostory){
	jQuery("#acc_content").fadeOut();
	jQuery("#settingsNavigation li").removeClass("selected");
	jQuery("#settingsNavigation #" + tostory).addClass("selected");
	jQuery.get("app/tpl/habbo/views/articles.cfm", {story: tostory},function(data) {
		jQuery("#acc_content").html(data);
		jQuery("#acc_content").fadeIn();
	});
}
