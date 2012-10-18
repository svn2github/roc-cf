<cfif not StructKeyExists(URL, "story")>
	<cfset URL.story = "latest">
</cfif>
<cfquery name="getStories" datasource="#config.DSN#">
	SELECT id, title
	FROM cms_promos
	ORDER BY id DESC
	LIMIT 10
</cfquery>
<cfif URL.story is "latest">
	<cfquery name="getStoryid" datasource="#config.DSN#">
		SELECT id
		FROM cms_promos
		ORDER BY id DESC
		LIMIT 1
	</cfquery>
<cfelse>
	<cfquery name="getStoryid" datasource="#config.DSN#">
		SELECT id
		FROM cms_promos
		WHERE id = <CFQUERYPARAM VALUE="#url.story#" CFSQLType="CF_SQL_INTGER">
		LIMIT 1
	</cfquery>
</cfif>

<div id="container">
	<div id="content" style="position: relative" class="clearfix"><div>

	<div class="content">
	<div class="habblet-container" style="float:left; width:210px;">
	<div class="cb settings">
		<div class="bt"><div></div></div><div class="i1"><div class="i2"><div class="i3">
		<div class="rounded-container"><div style="background-color: rgb(255, 255, 255); "><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(99, 99, 99); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><h2 class="title rounded-done">More Articles</h2><div style="background-color: rgb(255, 255, 255); "><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(99, 99, 99); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div></div></div></div>
		
		<div class="box-content">
			<div id="settingsNavigation">
				<ul>
					<cfoutput query="getStories">
						<li id="#id#" onclick="ChangeStory(#id#);">
							<a href="##" >#title#</a>
						</li>
					</cfoutput>
				</ul>
			</div>
		</div>
		
		</div></div></div><div class="bb"><div></div></div></div>
	</div>
	
	<div class="habblet-container " id="acc_content" style="float:left; width: 560px;">
		<cfoutput>
		<script type="text/javascript">
			ChangeStory(#getStoryid.id#);
		</script>
		</cfoutput>
	</div>
</div></div></div>
