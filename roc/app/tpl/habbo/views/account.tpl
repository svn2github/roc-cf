<cfif not StructKeyExists(session, "username")>
	<cflocation url="?p=index" addtoken="no">
</cfif>
<cfif not StructKeyExists(URL, "tab")>
	<cfset URL.tab = "2">
</cfif>
<div id="container">
	<div id="content" style="position: relative" class="clearfix"><div>

	<div class="content">
	<div class="habblet-container" style="float:left; width:210px;">
	<div class="cb settings">
		<div class="bt"><div></div></div><div class="i1"><div class="i2"><div class="i3">
		<div class="rounded-container"><div style="background-color: rgb(255, 255, 255); "><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(99, 99, 99); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><h2 class="title rounded-done">Account Settings</h2><div style="background-color: rgb(255, 255, 255); "><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(99, 99, 99); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div></div></div></div>
		
		<div class="box-content">
			<div id="settingsNavigation">
				<ul>
					<li <cfif URL.tab eq "2">class="selected"</cfif> id="2">
						<a href="##" onclick="ChangeTab(2);">My Preferences</a>
					</li>
					
					<li <cfif URL.tab eq "3">class="selected"</cfif> id="3">
						<a href="##" onclick="ChangeTab(3);">My Email</a>
					</li>
					
					<li <cfif URL.tab eq "4">class="selected"</cfif> id="4">
						<a href="##" onclick="ChangeTab(4);">My Password</a>
					</li>
					
					<li <cfif URL.tab eq "5">class="selected"</cfif> id="5">
						<a href="##" onclick="ChangeTab(5);">Friend Management</a>
					</li>
					
					<li <cfif URL.tab eq "6">class="selected"</cfif> id="6">
						<a href="##" onclick="ChangeTab(6);">Trading Settings</a>
					</li>
				</ul>
			</div>
		</div>
		
		</div></div></div><div class="bb"><div></div></div></div>
	</div>
	
	<div class="habblet-container " id="acc_content" style="float:left; width: 560px;">

		<cfoutput>
		<script type="text/javascript">
			ChangeTab(#url.tab#);
		</script>
		</cfoutput>

	</div>
</div></div></div>