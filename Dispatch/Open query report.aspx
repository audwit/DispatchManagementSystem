<%@ page language="C#" autoeventwireup="true" inherits="Dispatch_Open_queery_report, App_Web_tjbctc5l" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Open Query page</title>
<link rel="stylesheet" type="text/css" media="all" href="jsDatePick_ltr.min.css" /><script type="text/javascript" src="jsDatePick.min.1.3.js"></script><script type="text/javascript">function calender(name)	{        new JsDatePick({            
			useMode:2,
			target:name,
			dateFormat:"%d-%m-%Y"});
	};	
</script>
</head>
<body>
    <form id="form1" runat="server">
    <h1 align="center">Open Query Report</h1>
    <div style="text-align:right;" >
        <asp:HyperLink ID="linkLogout" runat="server" ForeColor="Red">Logout</asp:HyperLink>
    </div>
    <div>
         <table runat="server" id="open_query" align="center">                <tr align="center">
                
                    <td align="center">
                        <asp:Label ID="Label2" Text="Dispatch Type: " runat="server"></asp:Label>
                    </td>
                    <td align="left">
                        <asp:DropDownList runat='server' ID='DispatchType' 
                            onselectedindexchanged="DispatchType_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Text="In" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Out" Value="0"></asp:ListItem> 
                        </asp:DropDownList>
                    </td>
                    </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="From Date:"></asp:Label>
                    </td>
                    <td>    
                        <input type="text" size="12" id="dateFrom"   onfocus="calender('dateFrom')"  
                            runat="server" tabindex="1" />
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label runat="server" Text="To Date:"></asp:Label>
                    </td>
                    <td>    
                        <input type="text" size="12" id="dateTo" onfocus="calender('dateTo')" 
                            runat="server" tabindex="2"/>
                    </td>    
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Serial Number:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="slno" TabIndex="3"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label runat="server" Text="Sender:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtsender" TabIndex="4"></asp:TextBox>
                    </td>
                </tr>
                <tr id="letterNoDate" runat="server">
                    <td>
                        <asp:Label ID="letterno" runat="server" Text="Letter No:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtletterno" TabIndex="5"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label runat="server" Text="Letter Date"></asp:Label>
                    </td>
                    <td>
                        <%--<asp:TextBox runat="server" ID="letterDate"></asp:TextBox>--%>
                        <input id="letterDate" runat="server" onfocus="calender('letterDate')" 
                            size="12" type="text" tabindex="6" />
                    </td>
                    
                    
                </tr>
                <tr>
                    <%--<td>
                        <asp:Label runat="server" Text="Document Reference No:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="reference"></asp:TextBox>
                    </td>--%>
                    <td>
                        <asp:Label runat="server" Text="Receiver:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="receiver" TabIndex="9"></asp:TextBox>
                    </td>
                    <td>
                    <asp:Label ID="Label1" Text=Subject runat=server></asp:Label>
                </td>
                <td style="margin-left: 40px">
                        <asp:TextBox runat="server" ID="subject" TabIndex="10"></asp:TextBox>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <br /><br />
                        <asp:Button Text="Search" runat="server" onclick="Search" TabIndex="11"/>
                    </td>
                    <td>
                        <br /><br />
                        <asp:Button Text="Back" runat="server" onclick="BackButton_Click" 
                            TabIndex="12" />
                    </td>
                </tr>
                <tr>
                        <td>
                            <asp:Label ID="errorlabel" runat="server" BackColor="Yellow" ForeColor="Red"></asp:Label> 
                        </td>
                </tr>



         </table>   
    </div>
    </form>
</body>
</html>
