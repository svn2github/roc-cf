<cfquery name="texts" datasource="#DSN#">
	SELECT name
	FROM cms_texts
</cfquery>
<cfset texts = ValueList(texts.name)>
<cfhttp method="get" url="http://www.habbo.com/gamedata/external_flash_texts"></cfhttp>
<cfset textdata = cfhttp.fileContent>
<cfset textinfo = textdata.split('\n')>
<html>
<head>
<script type="text/javascript" src="http://www.javascripttoolbox.com/libsource.php/table/compact/table.js"></script>
<link rel="stylesheet" type="text/css" href="http://www.javascripttoolbox.com/lib/table/table.css" media="all">
</head>
<body>
<table id="t1" class="example table-autosort table-autofilter table-autopage:20 table-page-number:t1page table-page-count:t1pages table-filtered-rowcount:t1filtercount table-rowcount:t1allcount table-stripeclass:alternate">
<thead>
	<tr>
		<th class="table-filterable table-sortable:default">Badge</th>
		<th class="table-sortable:default">Name</th>
		<th class="table-sortable:default">Description</th>
	</tr>
</thead>
<tbody>
<cfloop from="1" to="#ArrayLen(textinfo)#" index="i">
<cfset text = textinfo[i].split('=')>
	<cfif (Left(text[1], 15) eq "badge_name_ACH_" or Left(text[1], 15) eq "badge_desc_ACH_") and not ListContains(texts, text[1])>
	<tr>
	<cfoutput>
		<td>#Right(text[1], Len(text[1])-15)#</td>
		<td>#text[1]#</td>
		<td>#text[2]#</td>
	</cfoutput>
	</tr>
	</cfif>
</cfloop>
</tbody>
<tfoot>
	<tr>
		<td class="table-page:previous" style="cursor:pointer;">&lt; &lt; Previous</td>
		<td colspan="3" style="text-align:center;">Page <span id="t1page"></span>&nbsp;of <span id="t1pages"></span></td>
		<td class="table-page:next" style="cursor:pointer;">Next &gt; &gt;</td>
	</tr>
	<tr>
		<td colspan="5"><span id="t1filtercount"></span>&nbsp;of <span id="t1allcount"></span>&nbsp;rows match filter(s)</td>
</tfoot>
</table>
</body>
</html>