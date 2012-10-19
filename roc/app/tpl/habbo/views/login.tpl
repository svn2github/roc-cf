<cfif StructKeyExists(session, "username")>
        <cflocation url = "?p=me" Addtoken="No">
<cfelseif NOT StructKeyExists(form, "username") OR form.username is "">
        <cflocation url="?p=index&reason=field_username" Addtoken="No">
<cfelseif NOT StructKeyExists(form, "password") OR form.password is "">
        <cflocation url="&reason=field_password" Addtoken="No">
</cfif>

<cfquery name = "CheckLogin" datasource = "#CONFIG.DSN#">
	SELECT id, username, mail, password, rank, vip, real_name
	FROM users
	WHERE username = <CFQUERYPARAM VALUE="#form.username#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">
	LIMIT 1
</cfquery>

<cfif CheckLogin.RecordCount>
        <cfif hash(form.password, "SHA-512") is CheckLogin.password>
                
                <!-- Set Regular Session Variables -->
                <cfset session.userid = CheckLogin.id>
                <cfset session.username = CheckLogin.username>
                <cfset session.useremail = CheckLogin.mail>
                <cfset session.rank = CheckLogin.rank>
                <cfset session.vip = CheckLogin.vip>
                <cfset session.forumname = CheckLogin.real_name>
                <!-- Add additional session variables if needed to prevent having to use lots of MySQL Queries. -->

				<!-- Remove the below line or modify the file for your own vBulletin VIP system -->
				<cfinclude template="../../../func/vipCheck.cfm" />

                <cfquery name = "UpdateLastLogin" datasource = "#CONFIG.DSN#">
                        UPDATE users
                        SET last_online = UNIX_TIMESTAMP(), ip_last = '#ipaddress#'
                        WHERE username = <CFQUERYPARAM VALUE="#form.username#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">
                </cfquery>
				
				<meta http-equiv="Refresh" content="1;URL=
					<cfif IsDefined("redirect")>
						http://votingapi.com/vote.php?username=Habboon&api=http:!!habboon.com!?p=<cfoutput>#redirect#</cfoutput>
					<cfelse>
						http://votingapi.com/vote.php?username=Habboon&api=http:!!habboon.com!?p=index&reason=login
					</cfif>
				">

				<p class="btn">
					If you are not automatically redirected, please <a href="
						<cfif IsDefined("redirect")>
							?p=<cfoutput>#redirect#</cfoutput>
						<cfelse>
							?p=index&reason=login
						</cfif>
					" id="manual_redirect_link">click here</a>
				</p>
        <cfelse>
                <cflocation url="?p=index&reason=login_password" Addtoken="No">
        </cfif>

<cfelse>
        <cflocation url="?p=index&reason=login_username" Addtoken="No">
</cfif>
