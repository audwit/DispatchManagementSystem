<%@ page language="C#" autoeventwireup="true" inherits="Dispatch, App_Web_tjbctc5l" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Dispatch Management System</title>
    <style type="text/css">
    .textboxstyle {
	background: url(images/rounded.gif) no-repeat top left;
	height: 22px;
	width: 230px;
}
    </style>
    <script type="text/javascript">
    function calendarPicker(strTxtRef)
	{			
	        var mydate=  document.getElementById(strTxtRef).value.split('/')
	        //var  myJSDate = new Date(myDateParts[2], myDateParts[1], myDateParts[0])
            //alert(mydate[2] + '-' + mydate[1]+ '-' + mydate[0] + ' 00:00:00')
            var myJSDate=""
            try
            {
            myJSDate= mydate[0] + '-' + mydate[1]+ '-' + mydate[2]
            }
            catch(e)
            {
            myJSDate= strTxtRef
            }
		window.open('../Controls/Calendar.aspx?ShowDate='+ myJSDate +'&field=' + strTxtRef +'','calendarPopup','titlebar=yes,statusbar=yes,left=470,top=100,width=300,height=250,resizable=no')				
	}
//	function controlclose()
//	{
//	    
//	}
	
	function SubmitPage()
	{	 
	 return true
	}
	
//	function loadheader()
//	{
//	    document.getElementById("header").value = document.getElementById("DispatchType").value
//	    document.getElementById("LetterNo").focus()
//	}
	function EditableDropDownList(ddlist,txtbox)
{
    if(document.getElementById(ddlist).value !="")
        document.getElementById(txtbox).value = document.getElementById(ddlist).value
    //document.getElementById("Subject").focus()
}
	</script>
</head>
<body>
    <form id="form1" runat="server">
    <div >
    <table width="100%">
    <tr>
    <td style="width:70%;" height="70px">
        <asp:Image ID="ImageHeader" runat="server" ImageUrl="~/Dispatch/img/mailbox2.jpg" Height="80px" Width="90px"/>
    </td>
    
    <td style="width:30%;" align="right">
        <asp:HyperLink ID="linkLogout" runat="server">Logout</asp:HyperLink>
    </td>
    </tr>
    </table>    
    <h1 align="center">Dispatch <asp:label ID="header" runat="server" Text=""> </asp:label>&nbsp;Register</h1>
    
    <div>
    <table align="center" width="960px">
    <tr>
    <td>
    
        <asp:Image ID="Image1" runat="server" width="440" 
            ImageUrl="~/Dispatch/img/in_register.jpg" />
    
    </td>
    <td width=55%>
    
    
    <table width="90%" border="0" cellpadding="0" cellspacing="0">
         <tr>
              
              <td width="25%">
                <asp:Label runat='server' Text="Dispatch Type:"></asp:Label>
            </td>
            <td width="40%">
                <asp:DropDownList  runat='server' ID='DispatchType' autopostback="true" 
                    onselectedindexchanged="DispatchType_SelectedIndexChanged">
                <asp:ListItem Text="In" Value="1"></asp:ListItem>
                <asp:ListItem Text="Out" Value="0"></asp:ListItem> 
                </asp:DropDownList>
            </td>
            <td width=35%>
            </td>
              
         </tr>
         <tr>     
            <td>
                 Date:
            </td>
            <td colspan="2">
              <asp:Label runat='server' ID='CurrentDateLabel' BackColor="Silver"></asp:Label>
            </td>
         </tr>
         <tr>
            
              <td>
                    <asp:Label ID="Label1" runat='server'> Serial No </asp:Label> 
              </td>
              <td>
                    <asp:TextBox ID="SerialNo" runat="server" Width="60px"></asp:TextBox>
                    <asp:TextBox ID="SerialNoAlpha" runat="server" width="40px"></asp:TextBox>
              </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="SerialNo"                   
                        ErrorMessage="*" ForeColor = "red" BackColor = "yellow"></asp:RequiredFieldValidator>
                   
                        <asp:Label ID="ConstraintValidator" Text="" runat="server" ForeColor = "red" BackColor = "yellow"></asp:Label>
                    
                        <asp:RegularExpressionValidator runat="server" id="rexNumber" controltovalidate="SerialNo" validationexpression="^[0-9]+$" errormessage="Invalid serial number!" />
                    </td>    
                    
              
            
         </tr>
         <tr id="LetterNoRow" runat="server">
         <td>
          <asp:Label ID="letternolabel" runat="server" Text="Letter No:"></asp:Label>
         </td>
         <td>
         <asp:TextBox runat='server' ID="LetterNo"></asp:TextBox>
         </td>
         <td>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="LetterNo" ForeColor = "red" BackColor = "yellow"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator runat="server" id="LetterNoValidator1" controltovalidate="LetterNo" ForeColor = "red" BackColor = "yellow" validationexpression="^[0-9]+$" errormessage="invalid letter number!" />
         </td>
         </tr>
         <tr id="letterdateRow" runat="server">
         <td>
         Letter Date: 
         </td>
         <td colspan="2">
         <asp:TextBox runat='server' ID='LetterDate'></asp:TextBox> 
         <asp:HyperLink ID="hplPostRecRelDOB" runat="server" 
              ImageUrl="../Img/pdate.gif"></asp:HyperLink>
         
               <asp:RegularExpressionValidator ID="revDOB" runat="server" 
                Text="*" Display="Static" ErrorMessage="*" 
                ValidationExpression="^(((((0[1-9])|(1\d)|(2[0-8]))/((0[1-9])|(1[0-2])))|((31/((0[13578])|(1[02])))|((29|30)/((0[1,3-9])|(1[0-2])))))/((20[0-9][0-9]))|((((0[1-9])|(1\d)|(2[0-8]))/((0[1-9])|(1[0-2])))|((31/((0[13578])|(1[02])))|((29|30)/((0[1,3-9])|(1[0-2])))))/((19[0-9][0-9]))|(29/02/20(([02468][048])|([13579][26])))|(29/02/19(([02468][048])|([13579][26]))))$" 
                ControlToValidate="LetterDate">
                </asp:RegularExpressionValidator> 
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LetterDate"                   
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                
                <%--<font face=verdana size=2 color=red><b id="DivErrorDOB" class="validation" visible="false" runat="server"> *</b></font> --%>
		                                                             
         <%--<asp:Calendar ID="LetterDate" runat='server'></asp:Calendar>--%>
         <%--<asp:TextBox ID= "LetterDate" runat='server'></asp:TextBox>--%>
         </td>
         
         </tr>
         <tr>
         <td>
           
            Sender
          
         </td>
         <td>
            <asp:TextBox ID="Sender" style="width:154px; position:absolute;" 
                 runat="server" Height="14px"></asp:TextBox>
            <asp:DropDownList ID="ddSelectsr" runat="server" Height="20px" Width="176px" >
            </asp:DropDownList>
            </td>
            <td>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please select sender from list or type sender name" ControlToValidate = "Sender" ForeColor = "red" BackColor = "yellow"></asp:RequiredFieldValidator>
             </td> 
            <%--<asp:TextBox ID="txtDisplay" runat="server"></asp:TextBox>--%>
            <%--<asp:TextBox ID="Sender" runat='server'></asp:TextBox>--%>
         
         </tr>
         <tr>
            <td>
            Subject:
         </td>
         <td>
         <asp:TextBox ID="Subject" runat='server' Width="170px"></asp:TextBox>
         </td>
         <td>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate= "Subject" ForeColor = "red" BackColor = "yellow"></asp:RequiredFieldValidator>
         </td>
         </tr>
         <%--<tr>
         <td>
             Document Reference:
         </td>
         <td>
         <asp:TextBox ID="DocumentReference" runat='server'></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate = "DocumentReference" ForeColor = "red" BackColor = "yellow"></asp:RequiredFieldValidator>
         </td>
         </tr>--%>
         <tr>
         <td>
          Receiver:
         </td>
         <td>
            <asp:TextBox ID="Receiver" style="width:154px; position:absolute;" 
                 runat="server" Height="14px"></asp:TextBox>
            <asp:DropDownList ID="ddSelectrcv" runat="server" Height="20px" Width="176px" >
            </asp:DropDownList>
          </td>
          <td>  
             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please select receiver from list or type receiver name" ControlToValidate = "Receiver" ForeColor = "red" BackColor = "yellow"></asp:RequiredFieldValidator>
         </td>
         </tr>
         
            
    
    </br></br>
    <div align="center">
    <tr>
        <%--<td>
            <asp:Button ID="NewEntry" runat='server' Text='New Entry' onclick="NewEntry_Click"/> 
                
        </td>--%>
        
        <td>
            
                
        </td>
        <td colspan="2">
             <asp:Button ID="Button1" runat='server' Text='Save' onclick="SaveButton_Click" /> 
            <asp:Button ID="Update" runat='server' Text='Update' onclick="Update_Click" OnClientClick="return SubmitPage()"/> 
             <asp:Button ID="Report" runat='server' Text='Report' onclick="Report_Click" OnClientClick="return SubmitPage()"/> 
        </td>
                
    </tr>
    </div>
    <%--<asp:Label runat='server' ID='Success' ></asp:Label>--%>
    </table>
    </td>
    </tr>
    </table>
    </div>
    </div>
    </form>
</body>
</html>
