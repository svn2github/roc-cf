<cfif StructKeyExists(permissions, "update_filter")>
	<cfif permissions.update_filter eq 1>

		<cfinclude template="./connection/easySocket.cfm">

		<!--- option to add additional words then update --->

		<cftry>
			<cfoutput>#easySocket('#musHost#','#musPort#','update_filter')#</cfoutput>
			<cfcatch>failed</cfcatch>
			success
		</cftry>

	<cfelse>
		<cfabort>
	</cfif>
<cfelse>
	<cfabort>
</cfif>
