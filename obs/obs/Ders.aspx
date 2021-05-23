<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ders.aspx.cs" Inherits="obs.Yorumbul" %>

<!DOCTYPE html>

<html>
	<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>Grades</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="/assets/css/main.css" />
	<style>
		  center{
			  border-radius:10px;
		  }
		  .auto-style2 {
				margin-left: 73px;
		  }
		  .auto-style3 {
				width: 1487px;
				height: 500px;
		  }
		  banner{
				background-image: url("banner.jpg");
		  }
	</style>
    </head>
	<body>
		  <form id="form1" runat="server">
        <div class="page-wrap">
			 <nav id="nav">
					<ul>
						<li><a href="Anasayfa.aspx"><span class="icon fa-home"></span></a></li>
						<li style="color:darkgrey"><p>Anasayfa</p></li>
					</ul>
			 </nav>
			 <section id="main">
				<section id="banner">
					<div class="inner">
						<h1>Kimlik Bilgilerine Buradan Ulaşabilirsiniz</h1>
					</div>
				</section>
			 
			  <section id="contact" class="auto-style3">
				<div class="social column">
					<center><label for="placecity">Dersin Adı:</label></center>
				<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
					<asp:ListItem>Physics</asp:ListItem>
					<asp:ListItem>Math</asp:ListItem>
					<asp:ListItem>Science</asp:ListItem>
				</asp:DropDownList>
				<br>
				<br>
				<center>
					<asp:Button ID="Listele" runat="server" Text="Listele" OnClick="Listele_Click" />
					<br />
				</center>
				</div>
				<div class="column">
					<asp:GridView ID="GridView1" runat="server" Height="16px" Width="506px" CellPadding="4" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
						<AlternatingRowStyle BackColor="White" />
						<FooterStyle BackColor="#CCCC99" />
						<HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
						<PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
						<RowStyle BackColor="#F7F7DE" />
						<SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
						<SortedAscendingCellStyle BackColor="#FBFBF2" />
						<SortedAscendingHeaderStyle BackColor="#848384" />
						<SortedDescendingCellStyle BackColor="#EAEAD3" />
						<SortedDescendingHeaderStyle BackColor="#575357" />
					</asp:GridView>
				</div>
			  </section>
			</section>
		</div>
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.poptrox.min.js"></script>
		<script src="assets/js/jquery.scrolly.min.js"></script>
		<script src="assets/js/skel.min.js"></script>
		<script src="assets/js/util.js"></script>
		<script src="assets/js/main.js"></script>
	</form>
	</body>
</html>