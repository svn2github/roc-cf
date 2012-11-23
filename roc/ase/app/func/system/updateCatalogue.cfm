<cfif StructKeyExists(permissions, "update_catalogue")>
	<cfif permissions.update_catalogue eq 1>

		<cfinclude template="./connection/easySocket.cfm">

		<!--- option to add additional words then update --->

		<cftry>
			<cfoutput>#easySocket('#musHost#','#musPort#','update_catalogue')#</cfoutput>
			<cfcatch>failed</cfcatch>
			success
		</cftry>
		
	<cfelse>
		<cfabort>
	</cfif>
<cfelse>
	<cfabort>
</cfif>
