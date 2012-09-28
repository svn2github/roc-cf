<cfset hosts = ["http://habbo.de/", "http://habbo.com/", "http://habbo.es/", "http://habbo.nl/", "http://habbo.au/", "http://habbo.ca/"]>

<cfif not StructKeyExists(URL, "user")>
	Please input a username.
	<cfabort>
</cfif>

<cfquery name="getUserLook" datasource="#config.DSN#">
	SELECT look
	FROM users
	WHERE username = <cfqueryparam value="#user#" cfsqltype="CF_SQL_CHAR" maxLength="50">
</cfquery>

<cfset args = "">

<cfif StructKeyExists(URL, "direction")>
	<cfset args = "&direction=#direction#">
</cfif>

<cfif StructKeyExists(URL, "head_direction")>
	<cfset args = "#args#&head_direction=#head_direction#">
</cfif>

<cfif StructKeyExists(URL, "gesture")>
	<cfset args = "#args#&gesture=#gesture#">
</cfif>

<cfif StructKeyExists(URL, "size")>
	<cfset args = "#args#&size=#size#">
</cfif>

<cfif StructKeyExists(URL, "img_format")>
	<cfset args = "#args#&img_format=#img_format#">
</cfif>

<cfif StructKeyExists(URL, "action")>
	<cfset args = "#args#&action=#action#">
</cfif>

<cfif not FileExists("#GetCurrentTemplatePath()#/../avatar_cache/#Hash("#getUserLook.look##args#", "SHA-1")#.png")>
	<cfif getUserLook.RecordCount>
		<cfset data = [user, getUserLook.look]>	
		
		<!--- Loop through supplied hosts. --->
		<cfloop from="1" to="#arraylen(hosts)#" index="u">
			<!--- Call the host. --->
			<cfhttp method="head" url="#hosts[u]#" resolveurl="no" throwonerror="no" />
			
			<!--- If called host responds with a status code --->
			<cfif IsDefined("CFHTTP.responseHeader.status_code")>
				<!--- Providing the host does not respond with error 403 or 404, then proceed. --->
				<cfif CFHTTP.responseHeader.status_code neq "403" or CFHTTP.responseHeader.status_code neq "404">
					<!--- The host loads, so let's now verify that it isn't on maintenance or closed by looking for the image. --->
					<cfset grabthis = "#hosts[u]#habbo-imaging/avatarimage?figure=#getUserLook.look##args#">

					<cfhttp method="get" url="#grabthis#" useragent="#CGI.http_user_agent#" timeout="5" getasbinary="yes" result="objGET">
						<cfhttpparam type="HEADER" name="referer" value="http://habbo.com/Home/Shorty-234-Otaku-toas"/>
					</cfhttp>

					<cfif find("200", objGet.statusCode)>
						<cfimage action="write" source="#objGet.FileContent#" destination="#GetCurrentTemplatePath()#/../avatar_cache/#Hash("#getUserLook.look##args#", "SHA-1")#.png" overwrite="no">
						<cfcontent type="image/gif" variable="#objGet.FileContent#">
						<cfbreak>
					</cfif>

					Whoops, PNG error! (<cfoutput>#objGet.statusCode#</cfoutput>)
					<cfscript>continue;</cfscript>
				</cfif>
				
				Whoops, 403/ 404!
				<cfscript>continue;</cfscript>
			</cfif>
		</cfloop>
		
		<cfcontent type="image/png" file="#GetCurrentTemplatePath()#/../avatar_cache/#Hash("#getUserLook.look##args#", "SHA-1")#.png">
		
	<cfelse>
		Username does not exist.
		<cfabort>
	</cfif>
<cfelse>
	<cfset existingAvatar = "#GetCurrentTemplatePath()#/../avatar_cache/#Hash("#getUserLook.look##args#", "SHA-1")#.png">
	<cfcontent type="image/png" file="#existingAvatar#">
</cfif>