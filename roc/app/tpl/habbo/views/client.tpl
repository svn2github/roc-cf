<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<cfheader name="Pragma" value="no-cache">
<cfheader name="Cache-Control" value="private, no-cache, must-revalidate">
<cfif not StructKeyExists(session, "username")><cflocation url="/index.cfm?sessiontimeout" addtoken="no" /></cfif>

<cfscript>
	function randString(type,ct){ var i=1; var randStr=""; var randNum=""; var 
	useList=""; var 
	alpha="A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z"; 
	var secure="!,@,$,%,&amp;,*,-,_,=,+,?,~"; for(i=1;i LTE ct;i=i+1){ 
	randNum=RandRange(1,10); useList="0,1,2,3,4,5,6,7,8,9"; 
	randStr="#randStr##ListGetAt(useList,randNum)#"; } return randStr; }
</cfscript>

<cfset unix_timestamp = DateDiff("s", CreateDate(1970,1,1), Now()) />
<cfset rand1 ="#randString('numeric',6)#" />
<cfset rand2 ="#randString('numeric',5)#" />
<cfset rand3 ="#randString('numeric',5)#" />
<cfset rand4 ="#randString('numeric',5)#" />
<cfset rand5 ="#randString('numeric',5)#" />
<cfset rand6 ="#randString('numeric',1)#" />
<cfset ticket ="ST-#rand1#-#rand2##rand3#-#rand4##rand5#-otaku-#rand6#-#unix_timestamp#">

<cfquery name="ssoticket" datasource="#config.DSN#">
	UPDATE users SET auth_ticket = '#ticket#', ip_last = '#ipaddress#' WHERE username = '#session.username#'  LIMIT 1
</cfquery>

<!-- Set Client Build: r63-35255-->
<cfset base_url = "http://habboon.com/client/r63-35255/" />
<cfset base_url_client = #base_url# & "Habbo.swf" />
<cfset cms_url = "http://habboon.com" />

<cfoutput>
<script type="text/javascript"> 
    FlashExternalInterface.loginLogEnabled = false;
    FlashExternalInterface.logLoginStep("web.view.start");
    
    var CacheNumber = "REFRESH14092012";
    var CacheNone = Math.floor(Math.random()*10000) + CacheNumber;

    var flashvars = {
            "client.allow.cross.domain" : "1", 
            "client.notify.cross.domain" : "0", 
            "connection.info.host" : "habboon.com", 
            "connection.info.port" : "1232", 
            "site.url" : "http://habboon.com", 
            "url.prefix" : "http://habboon.com", 
            "client.reload.url" : "http://habboon.com/client", 
            "client.fatal.error.url" : "#cms_url#/client/disconnected.cfm?flash_client_error", 
            "client.connection.failed.url" : "#cms_url#/client/disconnected.cfm?client_connection_failed", 
            "external.variables.txt" : "http://habboon.com/client/gamedata/external_variables/?"+CacheNone, 
            "external.texts.txt" : "http://habboon.com/client/gamedata/external_texts/?"+CacheNumber, 
            "productdata.load.url" : "http://habboon.com/client/gamedata/productdata/?"+CacheNumber, 
            "furnidata.load.url" : "http://habboon.com/client/gamedata/furnidata/?"+CacheNone, 
            "use.sso.ticket" : "1", 
            "sso.ticket" : "#ticket#", 
            "processlog.enabled" : "0", 
            "account_id" : "1", 
            "client.starting" : "Please wait! Habboon is starting up...", 
            "flash.client.url" : "#base_url#", 
            "user.hash" : "", 
            "has.identity" : "1", 
            "flash.client.origin" : "popup"
    };
    var params = {
        "base" : "#base_url#",
        "allowScriptAccess" : "always",
        "menu" : "false"                
    };
    
    if (!(HabbletLoader.needsFlashKbWorkaround())) {
    	params["wmode"] = "opaque";
    }
    
    FlashExternalInterface.signoutUrl = "http://www.habboon.com/system/account/logout.cfm";

    var clientUrl = "#base_url_client#?"+CacheNumber;
    swfobject.embedSWF(clientUrl, "flash-container", "100%", "100%", "10.0.0", "http://images.habbo.com/habboweb/63_1dc60c6d6ea6e089c6893ab4e0541ee0/933/web-gallery/flash/expressInstall.swf", flashvars, params);
 
    window.onbeforeunload = unloading;
    function unloading() {
        var clientObject;
        if (navigator.appName.indexOf("Microsoft") != -1) {
            clientObject = window["flash-container"];
        } else {
            clientObject = document["flash-container"];
        }
        try {
            clientObject.unloading();
        } catch (e) {}
    }
    window.onresize = function() {
        HabboClient.storeWindowSize();
    }.debounce(0.5);

    new Ajax.Request(habboReqPath + "/crossdomain.xml", {
        method: 'get',
        requestHeaders: {'Cache-Control': 'no-cache'}
    });
</script>
</cfoutput>

<!--[if lt IE 7]>
<script type="text/javascript">
try { document.execCommand('BackgroundImageCache', false, true); } catch(e) {}
</script>
<![endif]-->
 
<body id="client" class="flashclient"> 
<div id="overlay"></div> 
<img src="page_loader.gif" style="position:absolute; margin: -1500px;" /> 

<div id="overlay"></div> 
<div id="client-ui" > 
    <div id="flash-wrapper"> 
    <div id="flash-container"> 
        <div id="content" style="width: 400px; margin: 20px auto 0 auto; display: none"> 
			<div class="cbb clearfix"> 
			    <h2 class="title">Error - Unable to load Habboon</h2> 
			    <div class="box-content"> 
			        <p>This is normally when you don't have Adobe Flash Player installed on your computer.</p>  
				<p>Please <a href="/client/"><b>click here</b></a> to reload the page!</p>
			    </div> 
			</div> 
        </div> 
        <script type="text/javascript"> 
            $('content').show();
        </script> 
        <noscript> 
            <div style="width: 400px; margin: 20px auto 0 auto; text-align: center">
                <p>If you are not automatically redirected, please <a href="/client/">click here</a></p>
            </div>
        </noscript> 
    </div> 
    </div> 
	<div id="content" class="client-content"></div>
</div> 
    <script type="text/javascript">
		RightClick.init("flash-wrapper", "flash-container");
		$(document.body).addClassName("js");
        HabboClient.resizeToFitScreenIfNeeded();
        HabboView.run();
    </script>
</body> 
</html>
