<!DOCTYPE html>
<html>
<head>
	<title>Habboon - make friends, hang out, get noticed!</title>
	<link rel="stylesheet" href="css/frontpage.css" />
	<link rel="icon" type="image/png" href="img/roc.ico">
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script type="text/javascript" src="js/frontpage.js"></script>
	<meta name="description" content="Powered by RocCF - an open-source Coldfusion content management system by Otaku-Studios." />
	<meta name="keywords" content="roc, roccf, roc-cf, cf, coldfusion, habbo hotel, virtual, world, social network, free, community, avatar, chat, online, teen, roleplaying, join, social, groups, forums, safe, play, games, online, friends, teens, rares, rare furni, collecting, create, collect, connect, furni, furniture, pets, room design, sharing, expression, badges, hangout, music, celebrity, celebrity visits, celebrities, mmo, mmorpg, massively multiplayer" />
</head>

<body>
	<div class="barline">
		<a href="#">
			<span class="joinnow">Join Now</span>
			<span class="logo"></span>
		</a>
		<div class="content">
			<div class="column">
				<h3>Register</h3>
				<span class="or">
					Please fill in the required information or
				</span>
				<a href="#"><span class="facebookConnect">
					Facebook (soon™)
				</span></a>
			</div>
			<form method="post" name="registration" action="/system/account/register.cfm">
				<div class="column">
					<input type="text" class="username" name="username" placeholder="Username" />
					<input type="text" class="email" name="email" placeholder="E-mail" />
					<input type="text" class="rep_email" name="rep_email" placeholder="Repeat E-mail" />
					<div class="proceed">Next</div>
				</div>
				<div class="column">
					<input type="password" class="password" name="password" placeholder="Password" />
					<input type="password" class="password2" name="password2" placeholder="Repeat Password" />
					<div class="complete">Complete</div>
				</div>
			</form>
			<div class="hideColumn">
			</div>
		</div>
	</div>
	<div class="wrapper">
		<div class="header">
			<div class="login">
				<div class="loginheader">
					<h2>Sign-in</h2>
					<cfif StructKeyExists(url, "reason")>
						<cfif url.reason is "login_username">
							<h4>Username not found</h4>
						<cfelseif url.reason is "field_username">
							<h4>Enter your username</h4>
						<cfelseif url.reason is "field_password">
							<h4>Enter your password</h4>
						<cfelseif url.reason is "login_password">
							<h4>Password was incorrect</h4>
						</cfif>
					</cfif>
				</div>
				<form method="post" action="/system/account/login.cfm">
					<input type="text" name="username" placeholder="Username" />
					<input type="password" name="password" placeholder="Password" />
					<button type="submit">Sign-in</button>
				</form>
			</div>
		</div>
		<div class="welcomeText">
			Habboon... make friends, hang out, get noticed!
		</div>

		<div id="slider">
		    <div id="buttons">
		    	<a class="selected">0</a>
				<a>1</a>
		    	<a>2</a>
		    	<a>3</a>
		    </div>

			<div class="article" style="background-image: url('img/news/voodoo.png');">
			    <div class="article-content">
			        <div class="title">Get the Voodoo Doll..</div>
			        <div class="body">Be one of the first 2000 registered!</div>
			    </div>
				<!--div class="link">
					<a href="##">Read More <span class="arrow">è</span></a>
				</div-->
			</div>

			<div class="article" style="background-image: url('img/news/pixels.png'); display:none ">
			    <div class="article-content">
			        <div class="title">Pixels? Why?</div>
			        <div class="body">Furniture is now bought with pixels!</div>
			    </div>
				<!--div class="link">
					<a href="##">Read More <span class="arrow">è</span></a>
				</div-->
			</div>

			<div class="article" style="background-image: url('img/news/facebook.png'); display:none ">
			    <div class="article-content">
			        <div class="title">Facebook connect</div>
			        <div class="body">Quickly register and play!</div>
			    </div>
				<!--div class="link">
					<a href="##">Read More <span class="arrow">è</span></a>
				</div-->
			</div>

			<div class="article" style="background-image: url('img/news/cinema_promo.png'); display:none ">
			    <div class="article-content">
			        <div class="title">We'll be back soon!!</div>
			        <div class="body">Registration and Login coming soon!</div>
			    </div>
				<!--div class="link">
					<a href="##">Read More <span class="arrow">è</span></a>
				</div-->
			</div>
		</div>

		<div class="stream">
			<h3>Live Stream</h3>
			<div class="stream-content">
				<div class="story">
					<div class="story-avatar" style="background:url('img/frontpage/stream-avatar.gif') -16px -20px no-repeat">
					</div>
					<div class="story-desc">
						Aaron just registered! <a href="##" class="link">Visit Profile</a>
					</div>
				</div>
				<a href="##" class="more">Load more...</a>
			</div>
		</div>
				
		<div class="adContainer">
			<script type="text/javascript"><!--
			google_ad_client = "ca-pub-3263345320726861";
			/* Habboon Footer */
			google_ad_slot = "8527655857";
			google_ad_width = 728;
			google_ad_height = 90;
			//-->
			</script>
			<script type="text/javascript"
			src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
			</script>
		</div>
		
		<div class="footer">

		</div>
	</div>
</body>
</html>