<cfif Not StructKeyExists(Session, 'id')>
	<cfabort>
</cfif>
<cfquery name = "UserInfo" datasource = "#DSN#">
	SELECT username, motto, credits, activity_points, look FROM users
	WHERE id = #session.userid#
</cfquery>
		<div id="homebox">
			<div class="container" style="background-image: url('../img/modules/homebox.png');">
			    <div class="container-content">
			    	<cfoutput query = "UserInfo">
			        <div class="avatar"><img src="http://www.habboon.com/system/functions/avatar.cfm?figure=#look#" alt="#username#" /></div>
			        <div class="title">#username#</div>
			        <div class="body">#motto#</div>
			        <div class="info">
			        	<div class="credits">#credits#</div>
			        	<div class="pixels">#activity_points#</div>
			        </div>
			        </cfoutput>
			    </div>
			</div>
		</div>