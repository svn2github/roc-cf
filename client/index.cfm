<cfif Not StructKeyExists(Session, 'id')>
	<cflocation url = "../" addtoken = "no">
</cfif>
<cfinclude template="..\system\templates\header.cfm">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/swfobject/2.2/swfobject.js"></script>
<style type="text/css">
* { margin: 0; padding: 0; }
html, #client { height: 100%; text-align: left; background-color: black; }
#client { position: absolute; overflow: hidden; left: 0; top: 0; right: 0; bottom: 0; }
</style>
<script type="text/javascript">

	var BaseUrl = "http://cdn.uber.meth0d.org/localgordon";

    var flashvars =
	{
            "client.starting" : "Welcome to uberHotel BETA! Now loading.", 
            "client.allow.cross.domain" : "1", 
            "client.notify.cross.domain" : "0", 
            "connection.info.host" : "' . EMU_IP . '", 
            "connection.info.port" : "' . EMU_PORT . '", 
            "site.url" : "http://www.uberhotel.org", 
            "url.prefix" : "http://www.uberhotel.org", 
            "client.reload.url" : "http://www.uberhotel.org/index.php?page=client", 
            "client.fatal.error.url" : "http://www.uberhotel.org/index.php?page=client-error", 
            "client.connection.failed.url" : "http://www.uberhotel.org/index.php?page=client-disconnected", 
            "external.variables.txt" : "http://cdn.uber.meth0d.org/gamedata/external_variables", 
            "external.texts.txt" : "http://cdn.uber.meth0d.org/gamedata/external_flash_texts", 
            "external.override.texts.txt" : "http://www.uberhotel.org/extoverride.php", 
            "external.override.variables.txt" : "http://cdn.uber.meth0d.org/gamedata/external_override_variables", 
            "productdata.load.url" : "http://cdn.uber.meth0d.org/gamedata/productdata", 
            "furnidata.load.url" : "http://cdn.uber.meth0d.org/gamedata/furnidata", 
            "use.sso.ticket" : "1", 
            "sso.ticket" : "' . SSO_TICKET . '", 
            "processlog.enabled" : "0", 
            "flash.client.url" : BaseUrl, 
            "flash.client.origin" : "popup" 
    };

    var params =
	{
        "base" : BaseUrl + "/",
        "allowScriptAccess" : "always",
        "menu" : "false"                
    };
	
	swfobject.embedSWF(BaseUrl + "/Uber.swf", "client", "100%", "100%", "10.0.0", "http://cdn.uber.meth0d.org/expressInstall.swf", flashvars, params, null);	

</script>
<div id="client"></div>