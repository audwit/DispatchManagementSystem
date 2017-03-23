<%@ control language="C#" autoeventwireup="true" inherits="WebUserControl, App_Web_n3qpfdfp" %>

<asp:GridView ID="GridEducation" runat="server" >                            
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" BorderColor="#e4e4e4" BorderWidth="1px"/>
                <SelectedRowStyle BackColor="#669999" ForeColor="White" Font-Bold="True" />
                <PagerStyle ForeColor="#000066" HorizontalAlign="Center" BackColor="White" />
                <HeaderStyle BackColor="#658ECC" Font-Bold="True" ForeColor="White" BorderColor="#e4e4e4" BorderWidth="1px" />
                <FooterStyle BackColor="White" BorderWidth="1px" BorderColor="#CCCCCC" ForeColor="#000066" />
 <Columns>
        <asp:BoundField DataField="SLNO" HeaderText="SLNO" Visible=false>
        </asp:BoundField>        
        <asp:BoundField DataField="EXAM_ID" HeaderText="Exam">
        <ItemStyle HorizontalAlign=Center />
        </asp:BoundField>
        <asp:BoundField DataField="SUBJECT_ID" HeaderText="Subject">
        <ItemStyle HorizontalAlign=Center />
        </asp:BoundField>
        <asp:BoundField DataField="PASSING_YEAR" HeaderText="Passing Year">
        <ItemStyle HorizontalAlign=Center />
        </asp:BoundField>
        <asp:BoundField DataField="Result" HeaderText="Result">
        <ItemStyle HorizontalAlign=Center />
        </asp:BoundField>
        <asp:BoundField DataField="DURATION" HeaderText="Duration">
        <ItemStyle HorizontalAlign=Center />
        </asp:BoundField>
        <asp:BoundField DataField="BOARD_UNIVERSITY_ID" HeaderText="Board/University">
        <ItemStyle HorizontalAlign=Center />
        </asp:BoundField>
        <asp:BoundField DataField="INSTITUTION" HeaderText="Institute">
        <ItemStyle HorizontalAlign=Center />
        </asp:BoundField>
        <asp:BoundField DataField="REMARKS" HeaderText="Remarks">
        <ItemStyle HorizontalAlign=Center />
        </asp:BoundField>
        <asp:TemplateField HeaderText="Edit">                                
              <ItemTemplate>
                      <a href='Default.aspx?Page=AddEmployeeEducation&Command=edit&id=<%# DataBinder.Eval(Container.DataItem,"SLNO","") %>' >
                      <img src="images/edit.gif" border=0> </a>
              </ItemTemplate>
               <ItemStyle HorizontalAlign="Center" />
      </asp:TemplateField>
     <asp:TemplateField HeaderText="Delete">    
                <ItemTemplate>
                       <a href='Default.aspx?Page=AddEmployeeEducation&Command=delete&id=<%# DataBinder.Eval(Container.DataItem,"SLNO","") %>'>
                       <img src="images/del.gif" border=0> </a>
                 </ItemTemplate>
                  <ItemStyle HorizontalAlign="Center" />
      </asp:TemplateField>
        
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
</asp:GridView>
