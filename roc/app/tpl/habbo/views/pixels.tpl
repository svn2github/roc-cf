<cfif not StructKeyExists(session, "userid")>
	<cflocation url="?p=index" addtoken="no">
</cfif>

<cfquery name="GetPixels" datasource="#config.DSN#">
	SELECT users.username, users.motto, users.activity_points
	FROM users
	WHERE users.id = <CFQUERYPARAM VALUE="#session.userid#" CFSQLType="CF_SQL_INTGER">
</cfquery>

<cfquery name="GetPixelsAmount" datasource="#config.DSN#" cachedwithin="#createTimeSpan(0,12,0,0)#">
	SELECT server_settings.pixels
	FROM server_settings
</cfquery>

<div id="container">
	<div id="content" style="position: relative" class="clearfix"><div>

	<cfoutput query="GetPixels">
	<div class="habblet-container" style="float:left; width:460px;">		
		<div class="cb clearfix pixelblue "><div class="bt"><div></div></div><div class="i1"><div class="i2"><div class="i3">
		<div class="rounded-container"><div style="background-color: rgb(109, 205, 246);"><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(109, 205, 246);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(36, 115, 194);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(7, 79, 173);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(0, 70, 168);"></div></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(109, 205, 246);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(7, 78, 173);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(0, 70, 168);"></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(36, 115, 194);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(0, 70, 168);"></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(7, 79, 173);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(0, 70, 168);"></div></div></div><h2 class="title rounded-done">Learn how to get your pixels and enjoy!
		</h2><div style="background-color: rgb(109, 205, 246);"><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(7, 79, 173);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(0, 70, 168);"></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(36, 115, 194);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(0, 70, 168);"></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(109, 205, 246);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(7, 78, 173);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(0, 70, 168);"></div></div></div><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(109, 205, 246);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(36, 115, 194);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(7, 79, 173);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(0, 70, 168);"></div></div></div></div></div></div>
		
		<div class="pixels-infobox-container">
			<div class="pixels-infobox-text">
				<h3>You can earn Pixels in a variety of ways:</h3>
				<ul>
					<li><p>1. Sign into #sitename# as much as possible!</p></li>
					<li><p>2. Get rewarded for spending time each day in #sitename# - the longer you stay the more you earn!</p></li>
					<li><p>3. Complete Achievements</p></li>
					<li><p>4. Buy #sitename# VIP!</p></li>
				</ul>
				<p>How to spend? Check out the catalogue and the Pixel Shop!</p>
			</div>
		</div>
		
		</div></div></div><div class="bb"><div></div></div></div>
	</div>
	
	<div class="habblet-container " style="float:left; width: 310px;">
		<div class="cb clearfix pixelgreen "><div class="bt"><div></div></div><div class="i1"><div class="i2"><div class="i3">
			<div class="rounded-container"><div style="background-color: rgb(255, 255, 255);"><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(106, 214, 109);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(46, 197, 50);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(32, 193, 36);"></div></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(46, 197, 50);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(32, 193, 36);"></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(106, 214, 109);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(32, 193, 36);"></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(46, 197, 50);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(32, 193, 36);"></div></div></div><h2 class="title rounded-done">Pixel Rate
			</h2><div style="background-color: rgb(255, 255, 255);"><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(46, 197, 50);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(32, 193, 36);"></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(106, 214, 109);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(32, 193, 36);"></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(46, 197, 50);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(32, 193, 36);"></div></div></div><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(106, 214, 109);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(46, 197, 50);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(32, 193, 36);"></div></div></div></div></div></div>
			
			<div id="pixels-info" class="box-content pixels-info">
				<div class="pixels-info-text clearfix">
					<p>You can currently earn #GetPixelsAmount.Pixels# pixels per 15 minutes at #sitename#, you have a total of #GetPixels.activity_points# pixels!</p>
				</div>
			</div>
		</div></div></div><div class="bb"><div></div></div></div>
	</div>
	</cfoutput>

	</div>
</div>
