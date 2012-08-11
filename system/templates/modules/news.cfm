<cfif Not StructKeyExists(Session, 'id')>
	<cfabort>
</cfif>
<cfquery name = "News" datasource = "#DSN#">
	SELECT id, title, shortstory, image FROM cms_news
	WHERE published = 1
	ORDER BY id DESC
	LIMIT 3
</cfquery>
		<div id="slider">
		    <div id="buttons">
		    	<a class="selected">0</a>
				<cfloop from="1" to="#News.RecordCount-1#" index="i">
				<a><cfoutput>#i#</cfoutput></a>
				</cfloop>
		    </div>
			<cfoutput query = "News">
			<div class="article" style="background-image: url('../img/news/#image#.png');">
			    <div class="article-content">
			        <div class="title">#title#</div>
			        <div class="body">#shortstory#</div>
			    </div>
				<!--div class="link">
					<a href="##">Read More <span class="arrow">è</span></a>
				</div-->
			</div>
			</cfoutput>
		</div>