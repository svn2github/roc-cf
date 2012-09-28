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
			<cflocation url="?p=me" addtoken="no">
		</cfif>
	</cfif>
	
	<cfif StructKeyExists(URL, "referrer")>
		<cfset session.referrer = URL.referrer>
		<cflocation url="?p=index" addtoken="no">
	</cfif>

	<cfif not StructKeyExists(URL, "p")>
		<cflocation url="?p=index" addtoken="no">
	</cfif>
	
	<cfoutput>
		
		<!DOCTYPE html>
		<html>
			<head>
				<title>
					<cfif p eq "index">
						#sitename# - Make friends, join the fun, get noticed!
					<cfelse>
						#sitename# - <cfoutput>#p#</cfoutput>
					</cfif>
				</title>
				
				<link rel="shortcut icon" href="app/tpl/habbo/images/favicon.ico" type="image/vnd.microsoft.icon" />
				
				<script type="text/javascript">
					document.habboLoggedIn = true;
					var habboName = null;
					var habboId = null;
					var habboReqPath = "";
					var habboStaticFilePath = "app/tpl/habbo";
					var habboImagerUrl = "http://www.habbo.nl/habbo-imaging/";
					var habboPartner = "";
					var habboDefaultClientPopupUrl = "?p=client";
					window.name = "habboMain";
					if (typeof HabboClient != "undefined") {
						HabboClient.windowName = "client";
						HabboClient.maximizeWindow = true;
					}
				</script>
				
				<script src="http://code.jquery.com/jquery-latest.js"></script>
				<script type="text/javascript" src="app/tpl/habbo/js/fullcontent.js"></script>
				<script type="text/javascript" src="app/tpl/habbo/js/homeauth.js"></script>
				
				<cfif p neq "register">
					<link rel="stylesheet" href="app/tpl/habbo/styles/personal.css" />
					<link rel="stylesheet" href="app/tpl/habbo/styles/settings.css" />
				</cfif>
				
				<cfif p eq "me">
					<link rel="stylesheet" href="app/tpl/habbo/styles/lightweightmepage.css" />
					<script type="text/javascript" src="app/tpl/habbo/js/lightweightmepage.js"></script>
				</cfif>
				
				<cfif p eq "maintenance">
					<link rel="stylesheet" href="app/tpl/habbo/styles/maintenance.css" />
				</cfif>
				
				<cfif p eq "logout">
					<link rel="stylesheet" href="app/tpl/habbo/styles/com.css" />
					<link rel="stylesheet" href="app/tpl/habbo/styles/process.css" />
					<script type="text/javascript" src="app/tpl/habbo/js/com.js"></script>
				</cfif>
				
				<cfif p neq "index">
					<link rel="stylesheet" href="app/tpl/habbo/styles/common.css" />
					<script type="text/javascript" src="app/tpl/habbo/js/common.js"></script>
					<script type="text/javascript" src="app/tpl/habbo/js/visual.js"></script>
					<script type="text/javascript" src="app/tpl/habbo/js/libs.js"></script>
					<script type="text/javascript" src="app/tpl/habbo/js/libs2.js"></script>
					<script type="text/javascript" src="app/tpl/habbo/js/homeview.js"></script>
				</cfif>
				
				<cfif p eq "register">
					<link rel="stylesheet" href="app/tpl/habbo/styles/quickregister.css" />
					<script src="app/tpl/habbo/js/quickregister.js"></script>
				</cfif>
				
				<cfif p eq "client">
					<link rel="stylesheet" href="app/tpl/habbo/styles/client.css" />
					<link rel="stylesheet" href="app/tpl/habbo/styles/habboflashclient.css" />
					<script src="app/tpl/habbo/js/habboflashclient.js" type="text/javascript"></script>
				</cfif>

				<cfif p eq "account">
					<script src="app/tpl/habbo/js/accountsettings.js" type="text/javascript"></script>
				</cfif>

				<cfif p eq "index">
					<link rel="stylesheet" href="app/tpl/habbo/styles/frontpage.css" />
					
					<script type="text/javascript" src="app/tpl/habbo/js/libs2.js"></script>
					<script type="text/javascript" src="app/tpl/habbo/js/landing.js"></script>
					
					<style type="text/css">
						body {
							background-color: ##000000;
						}
						##footer .footer-links   { color: ##666666; }
						##footer .footer-links a { color: ##ffffff; }
						##footer .copyright      { color: ##666666; }
						##footer ##compact-tags-container span, ##footer ##compact-tags-container a { color: ##333333; }
						
						input[type=submit] {
							background: url('app/tpl/habbo/images/lgn_btn.png') top;
							font: bold 13px arial,sans-serif;
							line-height: 33px;
							color: white;
							height: 33px;
							width: 96px;
							border: 0;
						}
						input[type=submit]:hover {
							background-position: bottom;
							cursor: pointer;
						}
					</style>
				</cfif>
				
				<meta name="description" content="Habboon is a Habbo Hotel retro. Its a free version of Habbo where you can build your rooms for free!"/>
				<meta name="keywords" content="roc, Habboon hotel, roc cf, roccf, free games, habbo hotel, virtual, world, social network, free, community, avatar, chat, online, teen, roleplaying, join, social, groups, forums, safe, play, games, online, friends, teens, rares, rare furni, collecting, create, collect, connect, furni, furniture, pets, room design, sharing, expression, badges, hangout, music, celebrity, celebrity visits, celebrities, mmo, mmorpg, massively multiplayer"/>
				<meta name="build" content="RocCF 1.0.0b"/>
				
				<!--[if IE 8]>
					<link rel="stylesheet" href="app/tpl/habbo/styles/ie8.css" />
				<![endif]-->
				<!--[if lt IE 8]>
					<link rel="stylesheet" href="app/tpl/habbo/styles/ie.css" />
				<![endif]-->
				<!--[if lt IE 7]>
					<link rel="stylesheet" href="app/tpl/habbo/styles/ie6.css" />
					<script src="app/tpl/habbo/js/pngfix.js" type="text/javascript"></script>
					<style type="text/css">
						body { behavior: url(/js/csshover.htc); }
					</style>				
				<![endif]-->
			</head>
			
			<body id="<cfif p eq "index">frontpage<cfelse>#p#</cfif>" class="<cfif p eq "logout">process-template</cfif>">
				<!--- Include header (on pages except those listed below) --->
				<cfif p eq "index" or p eq "register" or p eq "logout" or p eq "login" or p eq "imager" or p eq "client">
				<cfelse>
					<cfinclude template="app/tpl/#config.theme#/statics/header.tpl">
				</cfif>
				
				<!--- Include dynamic view (check a page is defined first though!) --->
					<cftry>
						<!--- Providing it exists and isn't private --->
						<cfif Not IsDefined("private")>
							<cfinclude template="app/tpl/#config.theme#/views/#p#.tpl">
						<!--- If it is private, forbid users from accessing (TODO: allow ranks above 5 access) --->
						<cfelse>
							<cfinclude template="app/tpl/#config.theme#/statics/403.tpl">
						</cfif>
						<!--- If it doesn't exist, throw a 404 --->
						<cfcatch type="missingInclude">
							<cfinclude template="app/tpl/#config.theme#/statics/404.tpl">
						</cfcatch>
					</cftry>			
						
				<!--- Include footer (on pages except those listed below) --->
				<cfif p eq "register" or p eq "logout" or p eq "client">
				<cfelse>
					<cfinclude template="app/tpl/#config.theme#/statics/footer.tpl">
				</cfif>
			</body>
		</html>
	</cfoutput>