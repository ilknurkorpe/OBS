<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kimlik.aspx.cs" Inherits="obs.Kimlik" %>

<!DOCTYPE html>

<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 
    <title>Kimlik Bilgileri</title>
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
					<div class="field half first">
						<label for="name">T.C.</label>
							<asp:TextBox ID="TextBox1" runat="server" PlaceHolder="T.C."></asp:TextBox>
					</div>
					<div class="field half">
						<label for="surname">Şifre</label>
							<asp:TextBox ID="TextBox3" runat="server" PlaceHolder="Password" TextMode="Password"></asp:TextBox>
					</div>
					<br><br>
					<center>
						<asp:Button ID="Show" runat="server" Text="Show" OnClick="Show_Click" BackColor="#33CC33" Width="195px" style="border-radius:10px; margin-left: 10px;"/>
						<asp:Button ID="Clear" runat="server" Text="Clear" OnClick="Clear_Click" BackColor="#FF6600" CssClass="auto-style2" Width="217px" style="border-radius:10px; margin-left: 10px;"/>
						<br>
						<br>
						<div class="field half first">
							<asp:TextBox ID="TextBox2" runat="server" PlaceHolder="Success/Fail"></asp:TextBox>
						</div>
					</center>
				</div>
				<div class="column">
					<asp:GridView ID="GridView2" runat="server" Height="16px" Width="506px" CellPadding="10" ForeColor="#333333" GridLines="None">
						<AlternatingRowStyle BackColor="White" />
						<EditRowStyle BackColor="#7C6F57" />
						<FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
						<HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
						<PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
						<RowStyle BackColor="#E3EAEB" />
						<SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
						<SortedAscendingCellStyle BackColor="#F8FAFA" />
						<SortedAscendingHeaderStyle BackColor="#246B61" />
						<SortedDescendingCellStyle BackColor="#D4DFE1" />
						<SortedDescendingHeaderStyle BackColor="#15524A" />
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