<cfif not StructKeyExists(session, "userid")>
	<cflocation url="?p=index" addtoken="no">
</cfif>

<cfquery name="GetCredits" datasource="#config.DSN#">
	SELECT users.username, users.motto, users.credits
	FROM users
	WHERE users.id = <CFQUERYPARAM VALUE="#session.userid#" CFSQLType="CF_SQL_INTGER">
</cfquery>

<div id="container">
	<div id="content" style="position: relative" class="clearfix"><div>

	<cfoutput query="GetCredits">
	<div class="habblet-container" style="float:left; width:770px;">		
			<div class="cb clearfix darkgray "><div class="bt"><div></div></div><div class="i1"><div class="i2"><div class="i3">

			<div id="redeem-habblet">
			<div class="redeem-balance">
				<p class="redeem-balance-text">Balance:</p>
				<p><span class="redeem-balance-amount">#credits#</span></p>
			</div>

			<div class="redeem-redeeming-text"><p class="redeeming-text">Enter your voucher code</p></div>

			<div class="redeem-form-container clearfix">
				
				<div class="redeem-redeeming">
					<div><input type="text" name="voucherCode" value="" class="redeemcode" size="8" maxlength="15"></div>
					<div class="redeem-redeeming-button"><a href="##" class="new-button green-button redeem-submit exclude"><b><span></span>Redeem</b><i></i></a></div>
				</div>
				<!-- <div class="redeem-past-transactions"><a href="/credits/history"><b>Help - Redeem Credits</b></a></div> -->
			</div>
		</div>

		</div></div></div><div class="bb"><div></div></div></div>
	</div>
	</cfoutput>

	</div>
</div>
