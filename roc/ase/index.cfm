<!DOCTYPE html>

<!--
                 |
  \_            /;
  `\~--.._     //'
   `//////\  \\/;'
     ~/////\~\`)'
         `~'  |
         ;'_\'\
        /~/ '" "'
       `\/'
	-
	Roc CF. A coldfusion
	content-management
	system by Otaku-Studios.
	-
	Written by Sojobo,
	n0minal, Shorty & Oleg.
	-
	Version 1.0.0b
-->
	
	<!--- Check if session exists. --->
	<cfif StructKeyExists(session, "username")>
		<cfif IsDefined("p") and p eq "index">
			<cflocation url="?p=home" addtoken="no">
		</cfif>
	<cfelse>
		<cflocation url="../?p=index" addtoken="no">
	</cfif>
	
	<cfif StructKeyExists(URL, "referrer")>
		<cfset session.referrer = URL.referrer>
		<cflocation url="?p=index" addtoken="no">
	</cfif>

	<cfif not StructKeyExists(URL, "p")>
		<cflocation url="?p=index" addtoken="no">
	<cfelse>
		<cfset p = Replace(p, ".", "", "ALL")>
		<cfset p = Replace(p, "/", "", "ALL")>
	</cfif>
	
	<cfoutput>
		
		<html>
			<head>
				<title>
					<cfif p eq "home">
						#sitename# - Homepage
					<cfelse>
						#sitename# - <cfoutput>#p#</cfoutput>
					</cfif>
				</title>
				
				<link rel="shortcut icon" href="../app/tpl/habbo/images/favicon.ico" type="image/vnd.microsoft.icon" />
				<script src="http://code.jquery.com/jquery-latest.js"></script>

			</head>
			
			<body id="frontpage" class="">
				<!--- Include header (on pages except those listed below) --->
				<cfif p eq "index">
				<cfelse>
					<cfinclude template="app/tpl/#config.theme#/statics/header.tpl">
				</cfif>
				
				<!--- Include dynamic view (check a page is defined first though!) --->
					<cftry>
						<!--- Check Rank for Access (forbid users from accessing) --->
						<cfif rank gte minRank AND rank lte maxRank>
							<cfinclude template="app/tpl/#config.theme#/views/#p#.tpl">
						<cfelse>
							<cfinclude template="app/tpl/#config.theme#/statics/403.tpl">
						</cfif>
						<!--- If it doesn't exist, throw a 404 --->
						<cfcatch type="missingInclude">
							<cfinclude template="app/tpl/#config.theme#/statics/404.tpl">
						</cfcatch>
					</cftry>			
						
				<!--- Include footer (on pages except those listed below) --->
				<cfif p eq "index">
				<cfelse>
					<cfinclude template="app/tpl/#config.theme#/statics/footer.tpl">
				</cfif>
			</body>
		</html>
	</cfoutput>
