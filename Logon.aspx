<%@ page language="C#" autoeventwireup="true" inherits="Dispatch_Logon, App_Web_n3qpfdfp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dispatch Management Login Page</title>
    <link href="css/login.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
var Constants = {
BLOCK_CLUSTER: 'dl\x2dweb\x2edropbox\x2ecom',
PUBSERVER: 'dl\x2edropbox\x2ecom',
WEBSERVER: 'www\x2edropbox\x2ecom',
LIVE_TRANSCODE_SERVER: 'showbox\x2dtr\x2edropbox\x2ecom',
DISABLE_VIDEO_ICONS: false,
DISABLE_VIDEOS_IN_LIGHTBOX: false,
block: 'dl\x2dweb\x2edropbox\x2ecom',
protocol: 'https',
uid: '',
email: '',
sess_id: '188324963625561228308960471067780545212',
root_ns: 0,
SVN_REV: '25256',
TOKEN: '',
IS_PROD: 1,
WIT_ENABLED: 0,
upload_debug: false,
tcn: 'touch',
date_format: 'M\x2fd\x2fyyyy',
time_format: 'h\x3amm\x20a',
datetime_format: 'M\x2fd\x2fyyyy\x20h\x3amm\x20a',
ADMIN: 0,
referrer: '',
TWO_ITEM_LIST: '\x25\x28x\x29s\x20and\x20\x25\x28y\x29s',
THREE_ITEM_LIST: '\x25\x28x\x29s\x2c\x20\x25\x28y\x29s\x2c\x20and\x20\x25\x28z\x29s',
LOCALES: [["en", "English"], ["es", "Espa\u00f1ol"], ["fr", "Fran\u00e7ais"], ["de", "Deutsch"], ["ja", "\u65e5\u672c\u8a9e"]],
USER_LOCALE: 'en',
EMAIL_VERIFIED: 0
};
</script>
<script type="text/javascript">
function global_report_exception (e, f, l, tb, force) {
if (!window.reported_exception || force) {
var stack_str = "";
try {
if (!tb) {
var stack = get_stack_rep();
stack.pop();
stack.pop();
stack_str = stack.join("\n");
}
} catch (e) { }
var dbr = new Ajax.Request("/jse", {parameters: {'e': e, 'f': f || window.location.href, 'l': l, 'loc': window.location.href, 'ref': Constants.referrer, 'tb': tb || stack_str, 'trace': Trace && Trace.get() }});
window.reported_exception = true;
}
}
window.LoadedJsSuccessfully = false;
window.onerror = function (e, f, l) {
global_report_exception(e, f, l);
};
</script>
<script type="text/javascript" src="/static/25256/javascript/dropbox-mini.js"></script>
<script type="text/javascript">
if (self != top) {
top.location.replace(self.location.href);
setTimeout(function() {document.body.innerHTML = "<img src='https://www.dropbox.com/static/images/logo.png' onClick='top.location.href=window.location.href'>";},1);
}
</script>
<style type="text/css">
.hny-cldyf { display: none; }
.loginbutton {
				float: right;
				padding: 6px 10px;
				color: #fff;
				font-size: 14px;
				background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#a4d04a), to(#459300));
				text-shadow: #050505 0 -1px 0;
				background-color: #459300;
				-moz-border-radius: 4px;
                -webkit-border-radius: 4px;
				border-radius: 4px;
				border: solid 1px transparent;
				font-weight: bold;
				cursor: pointer;
				letter-spacing: 1px;
			}
</style>
<!--[if lte IE 8]>
<style>
.sick-input input[type=password] {
padding-top: 7px !important;
padding-bottom: 3px !important;
}
.sick-input.small input {
padding-top: 4px !important;
padding-bottom: 2px !important;
}
.sick-input.small input[type=password] {
padding-top: 6px !important;
padding-bottom: 0px !important;
}
    .style1
    {
        width: 50%;
    }
</style>
<![endif]-->
<script type="text/javascript">
document.observe('dom:loaded', function () {
LoginAndRegister.init();
});
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:100%; padding-top:100px" align="center">
    <table style="width:960px; height:400px; background-image:url(Dispatch/img/login_n.jpg);" align="center">
        <tr>
        <td height=100px valign="middle">
         &nbsp;</td>
        </tr>
        
        <tr>
        <td align="center">
        
        
        <table style="width:90%;">
         <tr>
         <td class="style1">
             &nbsp;</td>
         <td width="40%" valign="top">
            <table width="100%">
                <td height="90px">
                </td>
                <tr>
                <td align="left" class="">
                <div class="title-text">
                   Log In
                </div>
                
                </td>
                </tr>
                <tr>
                <td height="10px">
                
                </td>
                </tr>
                <tr>
                <td>
                
                </td>
                </tr>
                <tr>
                <td>
                <div id="login-partial">
  <div id="email-field" class="sick-input">
    
<%--<span class="error-bubble force-no-break" style="display:none;">
  <form:error name="login_email">
  <div class="error-bubble-arrow-border"></div>
  <div class="error-bubble-arrow"></div>
</form:error></span>--%>

    <%--<label id="email-label" for="txtUserID">User ID</label>--%>
   <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
  </div>

  <div id="password-field" class="sick-input">
    
<%--<span class="error-bubble force-no-break" style="display:none;">
  <form:error name="login_password">
  <div class="error-bubble-arrow-border"></div>
  <div class="error-bubble-arrow"></div>
</form:error></span>--%>

                    
    <%--<label id="password-label" for="txtPassword">Password</label>--%>
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
    
  </div>

  <div id="login-footer" class="clearfix">
    <%--<input type="submit" id="btnLogin" name="login_submit" class="freshbutton-blue one-submit-at-a-time" value="Sign in" tabindex="4" onclick="return login_submit_onclick()">--%>
    <asp:Button id="btnLogin" class="freshbutton-blue one-submit-at-a-time" tabindex="4" runat="server" Text="Login" onclick="btnLogin_Click"/>
    <asp:Label ID="lblErrorPermission" runat="server"></asp:Label>
  </div>
</div>
                </td>
                </tr>
            </table>
         </td>
         </tr>   
        </table>
        </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
