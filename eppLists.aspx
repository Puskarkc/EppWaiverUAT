<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eppLists.aspx.cs" Inherits="EPPwavier._Default" %>

<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"> --%>
<html lang="en">


  <head >
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Epp waiver</title>

    <!-- Bootstrap core CSS -->

      <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Custom styles for this template -->
    
      <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
      <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
      <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
      <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
  <%--  <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

      <script src="js/npm.js" type="text/javascript"></script>

      <script src="js/bootstrap.min.js" type="text/javascript"></script>

      <script src="js/bootstrap.js" type="text/javascript"></script>--%>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

      <form id="form1" runat="server" >

    <div class="container">

      <!-- The justified navigation menu is meant for single line per list item.
           Multiple lines will require custom code not provided by Bootstrap. -->
      <div class="masthead">
       <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Metlife_logo.gif" />
        <h3 class="text-muted">Nepal </h3>
    
    <nav role="navigation" class="navbar navbar-default ">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand">EPP Waiver</a>
        </div>
        <!-- Collection of nav links and other content for toggling -->
        <div id="navbarCollapse" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="Default.aspx">Dashboard</a></li>
                <li class="active"><a href="#">View Waiver</a></li>
                <li><a href="UploadActurialSheet.aspx">Upload Acturial Sheet</a></li>
            </ul>
           
        </div>
    </nav>
      </div>

      <!-- Jumbotron -->
       <!--/div>class="jumbotron" -->
       <div class ="jumbotron">
        <h2>Choose Month:  </h2>
        <asp:DropDownList ID="dropDownListYYYY"  runat="server" class="form-inline well">
            <asp:ListItem>1990</asp:ListItem>
            <asp:ListItem>1991</asp:ListItem>
            <asp:ListItem>1992</asp:ListItem>
            <asp:ListItem>1993</asp:ListItem>
            <asp:ListItem>1994</asp:ListItem>
            <asp:ListItem>1995</asp:ListItem>
            <asp:ListItem>1996</asp:ListItem>
            <asp:ListItem>1997</asp:ListItem>
            <asp:ListItem>1998</asp:ListItem>
            <asp:ListItem>1999</asp:ListItem>
            <asp:ListItem>2000</asp:ListItem>
            <asp:ListItem>2001</asp:ListItem>
            <asp:ListItem>2002</asp:ListItem>
            <asp:ListItem>2003</asp:ListItem>
            <asp:ListItem>2004</asp:ListItem>
            <asp:ListItem>2005</asp:ListItem>
            <asp:ListItem>2006</asp:ListItem>
            <asp:ListItem>2007</asp:ListItem>
            <asp:ListItem>2008</asp:ListItem>
            <asp:ListItem>2009</asp:ListItem>
            <asp:ListItem>2010</asp:ListItem>
            <asp:ListItem>2011</asp:ListItem>
            <asp:ListItem>2012</asp:ListItem>
            <asp:ListItem>2013</asp:ListItem>
            <asp:ListItem>2014</asp:ListItem>
            <asp:ListItem Selected="True">2015</asp:ListItem>
            <asp:ListItem>2016</asp:ListItem>
            <asp:ListItem>2017</asp:ListItem>
            <asp:ListItem>2018</asp:ListItem>
            <asp:ListItem>2019</asp:ListItem>
            <asp:ListItem>2020</asp:ListItem>
            <asp:ListItem>2021</asp:ListItem>
            <asp:ListItem>2022</asp:ListItem>
            <asp:ListItem>2023</asp:ListItem>
            <asp:ListItem>2024</asp:ListItem>
            <asp:ListItem>2025</asp:ListItem>
            <asp:ListItem>2026</asp:ListItem>
            <asp:ListItem>2027</asp:ListItem>
            <asp:ListItem>2028</asp:ListItem>
            <asp:ListItem Value="2029">2029</asp:ListItem>
            <asp:ListItem>2030</asp:ListItem>
            <asp:ListItem>2031</asp:ListItem>
            <asp:ListItem>2032</asp:ListItem>
            <asp:ListItem>2033</asp:ListItem>
            <asp:ListItem>2034</asp:ListItem>
            <asp:ListItem>2035</asp:ListItem>
            <asp:ListItem>2036</asp:ListItem>
            <asp:ListItem>2037</asp:ListItem>
            <asp:ListItem>2038</asp:ListItem>
            <asp:ListItem>2039</asp:ListItem>
            <asp:ListItem>2040</asp:ListItem>
            <asp:ListItem>2041</asp:ListItem>
            <asp:ListItem>2042</asp:ListItem>
            <asp:ListItem>2043</asp:ListItem>
            <asp:ListItem>2044</asp:ListItem>
            <asp:ListItem>2045</asp:ListItem>
            <asp:ListItem>2046</asp:ListItem>
            <asp:ListItem>2047</asp:ListItem>
            <asp:ListItem>2048</asp:ListItem>
            <asp:ListItem>2049</asp:ListItem>
            <asp:ListItem>2050</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="dropDownMM" runat="server" class="form-inline well">
                <asp:ListItem Value="01">Jan</asp:ListItem>
                <asp:ListItem Value="02">Feb</asp:ListItem>
                <asp:ListItem Value="03">March</asp:ListItem>
                <asp:ListItem Value="04">April</asp:ListItem>
                <asp:ListItem Value="05">May</asp:ListItem>
                <asp:ListItem Value="06">June</asp:ListItem>
                <asp:ListItem Value="07">July</asp:ListItem>
                <asp:ListItem Value="08">Aug</asp:ListItem>
                <asp:ListItem Value="09">Sept</asp:ListItem>
                <asp:ListItem Value="10">Oct</asp:ListItem>
                <asp:ListItem Value="11">Nov</asp:ListItem>
                <asp:ListItem Value="12">Dec</asp:ListItem>
            </asp:DropDownList>
                 <asp:Button ID="btnViewData" class ="btn btn-primary" runat="server" 
                    Text="View EPP Policy" onclick="btnViewData_Click" />
                
                <asp:GridView 
                ID="eppGridView" runat="server" AutoGenerateColumns="False" 
                DataSourceID="eppDataSource" CssClass="table table-hover table-bordered" 
                AllowPaging="True" PageSize="20" 
                    onselectedindexchanged="eppGridView_SelectedIndexChanged1">
            <Columns>
                <asp:BoundField DataField="Policy #" HeaderText="Policy #" 
                    SortExpression="Policy #" />
                <asp:BoundField DataField="Insured Name" HeaderText="Insured Name" 
                    SortExpression="Insured Name" />
                <asp:BoundField DataField="Paid To Date" HeaderText="Paid To Date" 
                    SortExpression="Paid To Date" ReadOnly="True" />
                <asp:BoundField DataField="Owner Name" HeaderText="Owner Name" 
                    SortExpression="Owner Name" />
                <asp:BoundField DataField="Reserve" HeaderText="Reserve" 
                    SortExpression="Reserve" />
                <asp:BoundField DataField="Payment" HeaderText="Payment" 
                    SortExpression="Payment" />
                <asp:BoundField DataField="Interest" HeaderText="Interest" 
                    SortExpression="Interest" />
                <asp:BoundField DataField="Capital" HeaderText="Capital" 
                    SortExpression="Capital" />
            </Columns>
            <PagerStyle BackColor="#66CCFF" />
            <HeaderStyle BackColor="#3399FF" ForeColor="White" />
                    <AlternatingRowStyle CssClass="table table-hover table-striped" />
            </asp:GridView>
                
                <p class="lead"> choose the respective month which you want to view the epp </p>
        <p>
                <asp:Button ID="btnDownloadToExcel" class ="btn btn-primary" runat="server" 
                Text="Download To Excel" onclick="btnDownloadToExcel_Click" />
                <asp:SqlDataSource ID="eppDataSource" runat="server" 
                ConnectionString="<%$ ConnectionStrings:EppWaiverConnectionString %>" 
                
                
                SelectCommand="SELECT PolicyNumber AS 'Policy #', InsuredName AS 'Insured Name', RIGHT (date, 11) AS 'Paid To Date', OwnerName AS 'Owner Name', reserve AS 'Reserve', payment AS Payment, interest AS Interest, capital AS Capital FROM Dumpdatafromsp ORDER BY 'Paid To Date'">
            </asp:SqlDataSource>
                </p>
       
      </div>

      <!-- Example row of columns -->
     

      <!-- Site footer -->
      <footer class="footer">
        <p>©2015, Developed &amp; mantaind by IT Department, MetLife Nepal</p>
        </footer>
      </form>
  </body>
</html>
