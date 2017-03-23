<%@ page language="c#" inherits="AspNetCalendarCtlTest.Calendar, App_Web_tlvrubvj" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>DateTime Picker</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="CSS/Styles.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<table height="220" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr height="20">
					<td>
						<table height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
							<tr>
							
								<td vAlign="middle" align="center" width="10%"><asp:imagebutton id="BtnRefresh" runat="server" ToolTip="Refresh" ImageUrl="~/Images/today.png"></asp:imagebutton></td>
								<td vAlign="middle" align="right" width="45%"><asp:dropdownlist id="CboYear" runat="server" Width="70px" CssClass="cssDTPComboBox" AutoPostBack="True" onselectedindexchanged="CboYear_SelectedIndexChanged"></asp:dropdownlist>&nbsp;<asp:label id="LblYear" runat="server" Width="45px" CssClass="cssDTPLabel">Year</asp:label></td>
								<td vAlign="middle" align="right" width="45%"><asp:dropdownlist id="CboMonth" runat="server" Width="77px" CssClass="cssDTPComboBox" AutoPostBack="True" onselectedindexchanged="CboMonth_SelectedIndexChanged">
										<asp:ListItem Value="1">Jan</asp:ListItem>
										<asp:ListItem Value="2">Feb</asp:ListItem>
										<asp:ListItem Value="3">Mar</asp:ListItem>
										<asp:ListItem Value="4">Apr</asp:ListItem>
										<asp:ListItem Value="5">May</asp:ListItem>
										<asp:ListItem Value="6">Jun</asp:ListItem>
										<asp:ListItem Value="7">Jul</asp:ListItem>
										<asp:ListItem Value="8">Aug</asp:ListItem>
										<asp:ListItem Value="9">Sep</asp:ListItem>
										<asp:ListItem Value="10">Oct</asp:ListItem>
										<asp:ListItem Value="11">Nov</asp:ListItem>
										<asp:ListItem Value="12">Dec</asp:ListItem>
									</asp:dropdownlist>&nbsp;<asp:label id="LblMonth" runat="server" Width="45px" CssClass="cssDTPLabel">Month</asp:label></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr height="10">
					<td><font size="1"></font></td>
				</tr>
				<tr height="170">
					<td vAlign="top" align="center"><asp:calendar id="CdrDatePicker" runat="server" ToolTip="Select Date" Width="233px" CssClass="cssDatePickerBase"
							ShowNextPrevMonth="False" FirstDayOfWeek="Sunday" NextMonthText=" " PrevMonthText=" " Height="124px" DayNameFormat="FirstLetter" onselectionchanged="CdrDatePicker_SelectionChanged">
							<TodayDayStyle CssClass="cssDatePickerToday"></TodayDayStyle>
							<SelectorStyle CssClass="cssDatePickerSelector"></SelectorStyle>
							<DayStyle CssClass="cssDatePickerDay"></DayStyle>
							<NextPrevStyle CssClass="cssDatePickerNextPrev"></NextPrevStyle>
							<DayHeaderStyle Font-Bold="True" CssClass="cssDatePickerDayHeader"></DayHeaderStyle>
							<SelectedDayStyle CssClass="cssDatePickerSelectedDay"></SelectedDayStyle>
							<TitleStyle CssClass="cssDatePickerTitle"></TitleStyle>
							<WeekendDayStyle CssClass="cssDatePickerWeekend"></WeekendDayStyle>
							<OtherMonthDayStyle CssClass="cssDatePickerOtherMonthDay"></OtherMonthDayStyle>
						</asp:calendar></td>
				</tr>
				<tr height="10">
					<td style="height: 10px"><font size="1"></font></td>
				</tr>
				<tr height="1">
					<td>
						<TABLE id="TblTimeControl" height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0"
							runat="server">
							<TR>
								<TD vAlign="middle" align="center" width="35%"></TD>
								<TD vAlign="middle" align="center" width="35%"></TD>
								<td vAlign="middle" align="center">
									<asp:LinkButton ID="hlSelectDate" Runat="server" CssClass="Hover" Font-Underline="True" onclick="hlSelectDate_Click" Width="94px"></asp:LinkButton>
								</td>
							</TR>
							<TR height="10">
								<TD colSpan="3"><font size="1"></font></TD>
							</TR>
						</TABLE>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
