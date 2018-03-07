<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SignUpControl.ascx.cs" Inherits="Assignment1.UserControls.SignUpControl" %>
<table style="width: 100%; height: 900px;">
    <tr style="height: 33%">
        <td style="width: 25%">&nbsp;
        </td>
        <td style="width: 50%">&nbsp;
        </td>
        <td style="width: 25%">&nbsp;
        </td>
    </tr>
    <tr style="height: 33%">
        <td style="width: 25%">&nbsp;
        </td>
        <td style="width: 50%">
            <table style="width: 100%; height: 100%; border: solid 1px navy">
                <tr style="height: 20%">
                    <td style="width: 40%; text-align: left; padding-left: 20px; vertical-align: middle; background-color: navy" colspan="2">
                        <asp:Label ID="lblHeader" runat="server" Text="Sign Up" Font-Bold="True" Font-Size="24pt" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr style="height: 5%">
                    <td colspan="2">
                        &nbsp;
                    </td>
                </tr>
                <tr style="height: 10%">
                    <td style="width: 40%; text-align: right; padding-right: 5px; vertical-align: middle">
                        <asp:Label ID="lblType" runat="server" Text="Select Type: "></asp:Label>
                    </td>
                    <td style="width: 60%; text-align: left; padding-left: 5px; vertical-align: middle">
                        <asp:DropDownList ID="drpType" runat="server" AutoPostBack="True">
                            <asp:ListItem>====Select Type===</asp:ListItem>
                            <asp:ListItem>Company</asp:ListItem>
                            <asp:ListItem>Applicant</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr style="height: 10%">
                    <td style="width: 40%; text-align: right; padding-right: 5px; vertical-align: middle">
                        <asp:Label ID="lblFirstName" runat="server" Text="First Name: "></asp:Label>
                    </td>
                    <td style="width: 60%; text-align: left; padding-left: 5px; vertical-align: middle">
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ForeColor="Red" Display="Dynamic" ErrorMessage="*" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtFirstName" ForeColor="Red" Display="Dynamic" ErrorMessage="Atleast 5 characters needed" ValidationExpression="^[a-zA-Z0-9.]{5,}$" ValidationGroup="SignUp"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtFirstName" ForeColor="Red" Display="Dynamic" ErrorMessage="Start with character" ValidationExpression="^[a-zA-Z.]*$" ValidationGroup="SignUp"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr style="height: 10%">
                    <td style="width: 40%; text-align: right; padding-right: 5px; vertical-align: middle">
                        <asp:Label ID="lblLastName" runat="server" Text="Last Name: "></asp:Label>
                    </td>
                    <td style="width: 60%; text-align: left; padding-left: 5px; vertical-align: middle">
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLastName" ForeColor="Red" Display="Dynamic" ErrorMessage="*" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtLastName" ForeColor="Red" Display="Dynamic" ErrorMessage="Atleast 5 characters needed" ValidationExpression="^[a-zA-Z0-9.]{5,}$" ValidationGroup="SignUp"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtLastName" ForeColor="Red" Display="Dynamic" ErrorMessage="Start with character" ValidationExpression="^[a-zA-Z.]*$" ValidationGroup="SignUp"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr style="height: 10%">
                    <td style="width: 40%; text-align: right; padding-right: 5px; vertical-align: middle">
                        <asp:Label ID="lblAddress1" runat="server" Text="Address : "></asp:Label>
                    </td>
                    <td style="width: 60%; text-align: left; padding-left: 5px; vertical-align: middle">
                        <asp:TextBox ID="txtAddress1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAddress1" ForeColor="Red" Display="Dynamic" ErrorMessage="*" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtAddress1" ForeColor="Red" Display="Dynamic" ErrorMessage="Atleast 5 characters needed" ValidationExpression="^[a-zA-Z0-9.]{5,}$" ValidationGroup="SignUp"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr style="height: 10%">
                    <td style="width: 40%; text-align: right; padding-right: 5px; vertical-align: middle">
                        <asp:Label ID="lblCity" runat="server" Text="City : "></asp:Label>
                    </td>
                    <td style="width: 60%; text-align: left; padding-left: 5px; vertical-align: middle">
                        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCity" ForeColor="Red" Display="Dynamic" ErrorMessage="*" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtCity" ForeColor="Red" Display="Dynamic" ErrorMessage="Atleast 5 characters needed" ValidationExpression="^[a-zA-Z0-9.]{5,}$" ValidationGroup="SignUp"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr style="height: 10%">
                    <td style="width: 40%; text-align: right; padding-right: 5px; vertical-align: middle">
                        <asp:Label ID="lblProvince" runat="server" Text="Province : "></asp:Label>
                    </td>
                    <td style="width: 60%; text-align: left; padding-left: 5px; vertical-align: middle">
                        <asp:TextBox ID="txtProvince" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtProvince" ForeColor="Red" Display="Dynamic" ErrorMessage="*" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtProvince" ForeColor="Red" Display="Dynamic" ErrorMessage="Atleast 5 characters needed" ValidationExpression="^[a-zA-Z0-9.]{5,}$" ValidationGroup="SignUp"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr style="height: 10%">
                    <td style="width: 40%; text-align: right; padding-right: 5px; vertical-align: middle">
                        <asp:Label ID="lblPostalCode" runat="server" Text="Postal Code : "></asp:Label>
                    </td>
                    <td style="width: 60%; text-align: left; padding-left: 5px; vertical-align: middle">
                        <asp:TextBox ID="txtPostalCode" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPostalCode" ForeColor="Red" Display="Dynamic" ErrorMessage="*" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtPostalCode" ErrorMessage="Invalid postal code" ForeColor="#FF3300" ValidationExpression="\d{5}((-)?\d{4})?|([A-Za-z]\d[A-Za-z]( )?\d[A-Za-z]\d)"></asp:RegularExpressionValidator>
                        
                    </td>
                </tr>               
                <tr style="height: 10%">
                    <td style="width: 40%; text-align: right; padding-right: 5px; vertical-align: middle">
                        <asp:LinkButton ID="lnbSignUp" runat="server" Font-Bold="True" ForeColor="#000099" OnClick="lnbSignUp_Click" ValidationGroup="SignUp">Sign Up</asp:LinkButton>
                    </td>
                    <td style="width: 60%; text-align: left; padding-left: 5px; vertical-align: middle">
                        <asp:LinkButton ID="lnbCancel" runat="server" Font-Bold="True" ForeColor="#000099">Cancel</asp:LinkButton>
                    </td>
                </tr>
                <tr style="height: 5%">
                    <td colspan="2">
                        <asp:Label ID="lblAns" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
        <td style="width: 25%">
            &nbsp;
        </td>
    </tr>
    <tr style="height: 33%">
        <td style="width: 25%">&nbsp;
        </td>
        <td style="width: 50%">&nbsp;
        </td>
        <td style="width: 25%">&nbsp;
        </td>
    </tr>
</table>