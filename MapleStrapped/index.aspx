<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="MapleStrapped.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
	<meta name="description" content="" />
	<meta name="keywords" content=""/>
	<link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/custom.css" rel="stylesheet" type="text/css">
	<!--link href="static/images/favicon.png" rel="shortcut icon" type="image/x-icon" /-->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="HandheldFriendly" content="True" />
	<meta name="MobileOptimized" content="320" />
	<meta name="robots" content="index,follow" />
	<!--[if lt IE 9]>
		<script src="static/js/ie/html5shiv.js"></script>
		<script src="static/js/ie/respond.min.js"></script>
	<![endif]-->
	<!--[if gte IE 9]>
		<style type="text/css">
			.gradient {
				filter: none;
			}
		</style>
	<![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-default navbar-static-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><asp:Label ID="HeaderName" runat="server"></asp:Label></a>
			</div>
			<div class="collapse navbar-collapse" id="navbar-collapse">
				<ul class="nav navbar-nav">
					<li><a href="?base=main">Home</a></li>
                    <li><a href="?base=main&amp;page=download">Download</a></li>
                    <li><a href="?base=main&amp;page=rankings">Rankings</a></li>
                    <li><a href="?base=main&amp;page=vote">Vote</a></li>
					<li><a href="#">Forums</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right" id="notloggedin" runat="server">
					<li><a href="javascript:document.getElementById('sporter04').focus()">Login</a></li>
                    <li><a href="?base=main&amp;page=register">Register</a></li>
				</ul>
                <ul class="nav navbar-nav navbar-right" id="loggedin" runat="server">
					<li><a href="javascript:document.getElementById('sporter04').focus()" id="logout" runat="server">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<header class="jumbotron gradient">
		<div class="container">
			<h1><asp:Label ID="ServerName" runat="server" Text=""></asp:Label></h1>
			<p><asp:Label ID="Header" runat="server" Text=""></asp:Label></p>
		</div>
	</header>
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Control Panel</h3>
					</div>
					<div class="panel-body">
						<div id="loginform" runat="server">
                            <asp:Label ID="Error" runat="server"></asp:Label>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
							<div class="form-group"><asp:TextBox ID="UsernameBox" runat="server" class="form-control" placeholder="Username" type="text"></asp:TextBox></div>
							<div class="form-group"><asp:TextBox ID="PasswordBox" runat="server" class="form-control" placeholder="Password" type="password"></asp:TextBox></div>
							<div class="form-group"><asp:Button ID="Login" runat="server" Text="Login" class="btn btn-block btn-violet" /><asp:Button ID="Register" runat="server" Text="Register" class="btn btn-block btn-violet" /></div>
						</div>
                        <div id="loggedinform" runat="server">
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
						</div>

                        <div id="message"></div>
					</div>
				</div>
				<div id="servinfo" class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Server Info</h3>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-xs-6">
								<p>Version:</p>
								<p>Players:</p>
								<p>Rates:</p>
							</div>
							<div class="col-xs-6 text-right">
								<p><a href="?base=main&amp;page=download"><asp:Label ID="Version" runat="server" Text=""></asp:Label></a></p>
								<p><asp:Label ID="PlayersOnline" runat="server" Text=""></asp:Label></p><!-- If server is offline it says Offline -->
								<p><asp:Label ID="ExpRate" runat="server" Text=""></asp:Label>, <asp:Label ID="DropRate" runat="server" Text=""></asp:Label>, <asp:Label ID="MesoRate" runat="server" Text=""></asp:Label></p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-9">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Home</h3>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="media welcome-block">
								<div class="media-left">
									<a href="#">
										<img alt="Welcome Image" src="assets/images/welcome.png" class="media-object">
									</a>
								</div>
								<div class="media-body">
									<h4 class="media-heading">Welcome!</h4>
									 <asp:Label ID="WelcomeMessage" runat="server" Text=""></asp:Label>
								</div>
							</div>
						</div>
						<div class="row text-center">
							<div class="col-md-4 col-sm-6 hero-feature">
								<div class="thumbnail">
									<img src="http://placehold.it/800x500" alt="">
									<div class="caption">
										<h3>Feature Label</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
										<p>
											<a href="#" class="btn btn-primary">Buy Now!</a> <a href="#" class="btn btn-default">More Info</a>
										</p>
									</div>
								</div>
							</div>
							<div class="col-md-4 col-sm-6 hero-feature">
								<div class="thumbnail">
									<img src="http://placehold.it/800x500" alt="">
									<div class="caption">
										<h3>Feature Label</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
										<p>
											<a href="#" class="btn btn-primary">Buy Now!</a> <a href="#" class="btn btn-default">More Info</a>
										</p>
									</div>
								</div>
							</div>
							<div class="col-md-4 col-sm-6 hero-feature">
								<div class="thumbnail">
									<img src="http://placehold.it/800x500" alt="">
									<div class="caption">
										<h3>Feature Label</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
										<p>
											<a href="#" class="btn btn-primary">Buy Now!</a> <a href="#" class="btn btn-default">More Info</a>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<div class="container">
			<div class="col-lg-12">
				<ul class="list-unstyled list-inline">
					<li><a href="?base=main">Home</a></li>
					<li><a href="?base=main&amp;page=tos">Terms of Service</a></li>
					<li><a href="?base=main&amp;page=privacy">Privacy Policy</a></li>
				</ul>
			</div>
			<div class="col-lg-12">
                <p>Copyright © 2015 MapleStrap. Proudly powered by <a href="https://forum.ragezone.com/f689/php-web-framework-maplestory-1087466/">Sporter Framework</a>. Template by <a href="http://forum.ragezone.com/members/1333372200.html">Snopboy</a>. Coded by Rakeda.<br>
                Bootstrap by Twitter Boostrap <a href="https://github.com/orgs/twbs/people">Team</a> &amp; MapleStory by <a href="http://www.nexon.net">NEXON</a> Corp.</p>
			</div>
		</div>
	</footer>
	<script src="static/js/jquery-2.1.4.min.js" type="text/javascript"></script>
	<script src="static/js/bootstrap.min.js" type="text/javascript"></script>
    </form>
</body>
</html>
