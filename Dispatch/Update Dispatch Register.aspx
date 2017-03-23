<%@ page language="C#" autoeventwireup="true" inherits="Dispatch_Update_Dispatch_Register, App_Web_tjbctc5l" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Update Dispatch Register</title>
    <script type="text/javascript">
    function calendarPicker(strTxtRef)
	{			
	        var mydate=  document.getElementById(strTxtRef).value.split('/');
	        //var  myJSDate = new Date(myDateParts[2], myDateParts[1], myDateParts[0]);
            //alert(mydate[2] + '-' + mydate[1]+ '-' + mydate[0] + ' 00:00:00');
            var myJSDate="";
            try
            {
            myJSDate= mydate[0] + '-' + mydate[1]+ '-' + mydate[2];
            }
            catch(e)
            {
            myJSDate= strTxtRef;
            }
		window.open('../Controls/Calendar.aspx?ShowDate='+ myJSDate +'&field=' + strTxtRef +'','calendarPopup','titlebar=yes,statusbar=yes,left=470,top=100,width=300,height=250,resizable=no');				
	}
	
	function controlclose()
	{
	    
	}
	
	function SubmitPage()
	{
	    return true;
	}
	
	function EditableDropDownList(ddlist,txtbox)
{
    if(document.getElementById(ddlist).value !="")
        document.getElementById(txtbox).value = document.getElementById(ddlist).value;
    //document.getElementById("Subject").focus();
}
	</script>
</head>
<body>
    <form id="form1" runat="server">
    
    <%--<h1 align="center">Update Dispatch Register</h1>--%>
    <h1 align="center">Update Dispatch <asp:label ID="header" runat="server" Text=""> </asp:label>&nbsp;Register</h1>
    <div>
    <div style="text-align:right">
        <asp:HyperLink ID="LinkLogout" runat="server">Logout</asp:HyperLink>
    </div>
    <table align="center" width="550px" border="0" cellpadding="0" cellspacing="0">
         <tr>
         <td>
         &nbsp; Dispatch Type:
         </td>
         <td>
            <asp:DropDownList runat='server' ID='DispatchType' AutoPostBack="True" 
                 onselectedindexchanged="DispatchType_SelectedIndexChanged">
                <asp:ListItem Text="In" Value="1"></asp:ListItem>
                <asp:ListItem Text="Out" Value="0"></asp:ListItem> 
                </asp:DropDownList>
         </td>
         </tr>
         <tr style="width:500px;">
                <td style="width:100px; vertical-align:top;">
                    <asp:Label ID="Label1" runat='server'>&nbsp Serial No </asp:Label> 
                 </td>
                <td  style="vertical-align:top;">
                    <asp:TextBox ID="SerialNo" runat="server" Width="100px"></asp:TextBox>
                    <asp:TextBox ID="SerialNoAlpha" runat="server" width="40px"></asp:TextBox>
                    <asp:Button ID="btnFind" runat="server" Text="Find" onclick="btnFind_Click" />                
                    <asp:RequiredFieldValidator runat="server" BackColor="Yellow" ForeColor ="Red" ID="updateRequiredFieldValidator" ErrorMessage="*" ControlToValidate="SerialNo"></asp:RequiredFieldValidator>
                    <asp:Label ID="updateerrormessage" runat="server" Text="*" BackColor="Yellow" ForeColor="Red"></asp:Label>
                    <asp:RegularExpressionValidator runat="server" id="serialNumberValidator" controltovalidate="SerialNo" validationexpression="^[0-9]+$" errormessage="Please enter a valid serial number!" />
                </td>
              </tr>
         <tr>     
         <td>
             &nbsp; Date:
             </td>
          <td>
         <asp:Label runat='server' ID='CurrentDateLabel' BackColor="Silver"></asp:Label>
         </td>
         </tr>
         <tr id="letterNoRow" runat="server">
         <td>
         &nbsp; Letter No:
         </td>
         <td>
         <asp:TextBox runat='server' ID="LetterNo"></asp:TextBox>
         </td>
         </tr>
         <tr id="letterdaterow" runat="server">
         <td>
         &nbsp; Letter Date: 
         </td>
         <td>
         <asp:TextBox runat='server' ID='LetterDate'></asp:TextBox> 
         <asp:HyperLink ID="hplPostRecRelDOB" runat="server" 
              ImageUrl="../Img/pdate.gif"></asp:HyperLink>
               <asp:RegularExpressionValidator ID="revDOB" runat="server" 
                Text="*" Display="Static" ErrorMessage="*" 
                ValidationExpression="^(((((0[1-9])|(1\d)|(2[0-8]))/((0[1-9])|(1[0-2])))|((31/((0[13578])|(1[02])))|((29|30)/((0[1,3-9])|(1[0-2])))))/((20[0-9][0-9]))|((((0[1-9])|(1\d)|(2[0-8]))/((0[1-9])|(1[0-2])))|((31/((0[13578])|(1[02])))|((29|30)/((0[1,3-9])|(1[0-2])))))/((19[0-9][0-9]))|(29/02/20(([02468][048])|([13579][26])))|(29/02/19(([02468][048])|([13579][26]))))$" 
                ControlToValidate="LetterDate">
                </asp:RegularExpressionValidator> 
                <font face=verdana size=2 color=red><b id="DivErrorDOB" class="validation" visible="false" runat="server"> *</b></font> 
		                                                             
         <%--<asp:Calendar ID="LetterDate" runat='server'></asp:Calendar>--%>
         <%--<asp:TextBox ID= "LetterDate" runat='server'></asp:TextBox>--%>
         </td>
         </tr>
         <tr>
         <td>
            <br /> &nbsp Sender &nbsp;
         </td>
         <td>
            <%--<asp:TextBox ID="Sender" runat='server'></asp:TextBox>--%>
            <asp:TextBox ID="Sender" style="width:154px;position:absolute;" 
                 runat="server" Height="14px"></asp:TextBox>
            <asp:DropDownList ID="ddSelectsr" runat="server" Height="20px" Width="176px" >
            </asp:DropDownList>
         </td>
         </tr>
         <tr>
            <td>
            &nbsp;&nbsp;Subject:
         </td>
         <td>
         <asp:TextBox ID="Subject" runat='server'  Width="420px"></asp:TextBox>
         </td>
         </tr>
         <%--<tr>
         <td>
            &nbsp Document Reference:
         </td>
         <td>
         <asp:TextBox ID="DocumentReference" runat='server'></asp:TextBox>
         </td>
         </tr>--%>
         <tr>
         <td>
         &nbsp Receiver:
         </td>
         <td>
            <%--<asp:TextBox ID="Receiver" runat='server' Width="250px"></asp:TextBox>--%>
            <asp:TextBox ID="Receiver" style="width:156px;position:absolute;" 
                 runat="server" Height="14px"></asp:TextBox>
            <asp:DropDownList ID="ddSelectrcv" runat="server" Height="20px" Width="178px" >
            </asp:DropDownList>
         </td>
         </tr>
         
         
           
           
         <tr style="height:20px;">
         <td>
         
         </td>
         <td>
         
         </td>
         </tr>
         
         
         <tr>         
         <td></td>
         <td align="left" >
         <asp:Button ID="Update" runat='server' Text='Update' onclick="Update_Click1"  /> 
         <asp:Button ID="Back" runat='server' Text='Back' onclick="Back_Click" OnClientClick="return SubmitPage();"/> 
         </td>
         </tr>
           
         
         </table>
            </div>
    <table align=center>
    </br></br>
    <tr>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
        </td>
        <td>
            
        </td>
    </tr>
    <tr>
    <asp:Label runat='server' ID='Success' ></asp:Label>
    </tr>
    </table>
    </form>
</body>
</html>

