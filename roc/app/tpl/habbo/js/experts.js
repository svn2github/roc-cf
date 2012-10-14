
function RemoveExpert(uid){
	jQuery("#" + uid).fadeOut();
	jQuery.post("app/func/removeExpert.cfm", {uid: uid} );
}
