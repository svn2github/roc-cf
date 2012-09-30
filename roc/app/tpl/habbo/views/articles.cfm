<cfquery name="getStory" datasource="#config.DSN#">
	SELECT *
	FROM cms_promos
	WHERE id = #story#
	LIMIT 1
</cfquery>
<cfoutput query="getStory">
	<div class="cb clearfix settings"><div class="bt"><div></div></div><div class="i1"><div class="i2"><div class="i3">
	<div class="rounded-container"><div style="background-color: rgb(255, 255, 255); "><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(99, 99, 99); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><h2 class="title rounded-done">#title#</h2><div style="background-color: rgb(255, 255, 255); "><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(99, 99, 99); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div></div></div></div>
		
	<div class="box-content">
		<p><strong>#description#</strong></p>
		<p>#story#</p>
	</div>
			
	</div></div></div><div class="bb"><div></div></div></div>
</cfoutput>
