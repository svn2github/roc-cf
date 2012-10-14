
function RemoveExpert(uid){
	jQuery("#" + uid).fadeOut();
	jQuery.get("app/func/removeExpert.cfm", {uid: uid});
}
