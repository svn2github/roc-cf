<cfquery name="furniture" datasource="#DSN#">
	SELECT item_name
	FROM furniture
</cfquery>
<cfset items = ValueList(Furniture.item_name)>
<cfhttp method="get" url="http://habbo.com/gamedata/furnidata"></cfhttp>
<cfset furnidata = cfhttp.fileContent>
<cfset furnidata = Mid(furnidata, 1, Len(furnidata)-2)>
<cfset furnidata = Replace(furnidata, '\n', '', 'all')>
<cfset furnidata = Replace(furnidata, '\"', '', 'all')>
<cfset furnidata = Replace(furnidata, '[[', '[', 'all')>
<cfset furnidata = Replace(furnidata, ']]', '],', 'all')><!--Функции как в шарпе прям:3 Ага:)-->
<cfset furniinfo = furnidata.split('\],\[')>
<html>
<head>
<script type="text/javascript" src="http://www.javascripttoolbox.com/libsource.php/table/compact/table.js"></script>
<link rel="stylesheet" type="text/css" href="http://www.javascripttoolbox.com/lib/table/table.css" media="all">
</head>
<body>
<table id="t1" class="example table-autosort table-autofilter table-autopage:10 table-page-number:t1page table-page-count:t1pages table-filtered-rowcount:t1filtercount table-rowcount:t1allcount table-stripeclass:alternate">
<thead>
	<tr>
		<th class="table-filterable table-sortable:default">Owned</th>
		<th class="table-filterable table-sortable:default">Type</th>
		<th class="table-sortable:numeric">ID</th>
		<th class="table-sortable:default">Name</th>
		<th class="table-filterable table-sortable:numeric">Revision</th>
		<th class="table-sortable:default">Colors</th>
		<th class="table-sortable:default">Title</th>
		<th class="table-sortable:default">Description</th>
		<th class="table-sortable:default">Advertisement</th>
		<th class="table-sortable:numeric">Catalog Page ID</th>
		<th class="table-sortable:numeric">Offer ID</th>
		<th class="table-sortable:default">Extra</th>
		<th class="table-filterable table-sortable:numeric">Category</th>
	</tr>
</thead>
<tbody>

<cfloop from="1" to="#ArrayLen(furniinfo)#" index="i">
<cfset furni = furniinfo[i].split('\"')>
	<tr>
		<cfif ListContains(items, furni[6])><td>YES</td><cfelse><td>NO</td></cfif>
		<cfoutput>
		<td>#furni[2]#</td>
		<td>#furni[4]#</td>
		<td>#furni[6]#</td>
		<td>#furni[8]#</td>
		<td>#furni[16]#</td>
		<td>#furni[18]#</td>
		<td>#furni[20]#</td>
		<td>#furni[22]#</td>
		<td>#furni[24]#</td>
		<td>#furni[26]#</td>
		<cfif furni[2] eq 's'>
		<td>#furni[28]#</td>
        <td>#furni[30]#</td>
        <cfelse>
        <td></td>
        <td>#furni[28]#</td>
        </cfif>
		</tr></cfoutput>
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