<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EPPwavier._Default" %>

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

      <form id="form1" runat="server">

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
                <li class="active"><a href="#">Dashboard</a></li>
                <li><a href="eppLists.aspx">View Waiver</a></li>
                <li><a href="UploadActurialSheet.aspx">Upload Acturial Sheet</a></li>
            </ul>
           
        </div>
    </nav>
      </div>

      <!-- Jumbotron -->
       <!--/div>class="jumbotron" -->
       <div class ="jumbotron">
        <h2>Number of Policies</h2>
        <p class="lead"> Processed Month-wise </p>
        <p>
            <asp:GridView ID="dashboardGridView" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" BorderStyle="None" 
                CssClass="table table-hover table-bordered" DataSourceID="DashboardDataSource" 
                PageSize="8" 
                onselectedindexchanged="dashboardGridView_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Year &amp; Month" HeaderText="Year &amp; Month" 
                        SortExpression="Year &amp; Month" />
                    <asp:BoundField DataField="Policy Processed" HeaderText="Policy Processed" 
                        SortExpression="Policy Processed" />
                </Columns>
                <PagerStyle BackColor="#3399FF" CssClass="pagination" />
                <HeaderStyle BackColor="#0099FF" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle CssClass="table table-hover table-striped" 
                    ForeColor="Blue" Height="20px" HorizontalAlign="Left" VerticalAlign="Top" 
                    Width="300px" />
            </asp:GridView>
            <asp:SqlDataSource ID="DashboardDataSource" runat="server" 
                ConnectionString="<%$ ConnectionStrings:EppWaiverConnectionString %>" 
                
                
                SelectCommand="SELECT DISTINCT YearMonth AS [Year &amp; Month], MAX(NoOfPolicies) AS [Policy Processed] FROM MonthlyPolicyCounter GROUP BY YearMonth">
            </asp:SqlDataSource>
            <class = "gridView"> 
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
