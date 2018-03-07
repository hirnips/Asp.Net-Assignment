<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SignInControl.ascx.cs" Inherits="Assignment1.UserControls.SignInControl" %>
<table style="width: 100%; height: 500px;">
    <tr style="height: 33%">
        <td style="width: 33%">&nbsp;
        </td>
        <td style="width: 33%">&nbsp;
        </td>
        <td style="width: 34%">&nbsp;
        </td>
    </tr>
    <tr style="height: 33%">
        <td style="width: 33%">&nbsp;
        </td>
        <td style="width: 33%">
            <table style="width: 100%; height: 100%; border: solid 1px navy">
                <tr style="height: 20%">
                    <td style="width: 40%; text-align: left; padding-left: 20px; vertical-align: middle; background-color: navy" colspan="2">
                        <asp:Label ID="lblHeader" runat="server" Text="Login" Font-Bold="True" Font-Size="24pt" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr style="height: 5%">
                    <td colspan="2">
                        &nbsp;
                    </td>
                </tr>
                <tr style="height:17%">
                    <td style="width: 40%; text-align: right; padding-right: 5px; vertical-align: middle">
                        <asp:Label ID="lblUName" runat="server" Text="User Name: "></asp:Label>
                    </td>
                    <td style="width: 60%; text-align: left; padding-left: 5px; vertical-align: middle">
                        <asp:TextBox ID="txtUName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUName" ForeColor="Red" Display="Dynamic" ErrorMessage="*" ValidationGroup="SignIn"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUName" ForeColor="Red" Display="Dynamic" ErrorMessage="Atleast 5 characters needed" ValidationExpression="^[a-zA-Z0-9.]{5,}$" ValidationGroup="SignIn"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtUName" ForeColor="Red" Display="Dynamic" ErrorMessage="Start with character" ValidationExpression="^[a-zA-Z.]*$" ValidationGroup="SignIn"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr style="height: 17%">
                    <td style="width: 40%; text-align: right; padding-right: 5px; vertical-align: middle">
                        <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label>
                    </td>
                    <td style="width: 60%; text-align: left; padding-left: 5px; vertical-align: middle">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" TabIndex="1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ControlToValidate="txtPassword" ErrorMessage="*" ValidationGroup="SignIn"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr style="height: 17%">
                    <td style="width: 40%; text-align: right; padding-right: 5px; vertical-align: middle">
                        <asp:LinkButton ID="lnbLogin" runat="server" Font-Bold="True" ForeColor="#000099" OnClick="lnbLogin_Click" ValidationGroup="SignIn" TabIndex="2">Login</asp:LinkButton>
                    </td>
                    <td style="width: 60%; text-align: left; padding-left: 5px; vertical-align: middle">
                        <asp:LinkButton ID="lnbCancel" runat="server" Font-Bold="True" ForeColor="#000099" OnClick="lnbCancel_Click" TabIndex="3">Cancel</asp:LinkButton>
                    </td>
                </tr>
                <tr style="height: 19%">
                    <td style="width: 40%; text-align: right; padding-right: 5px; vertical-align: middle">
                        <asp:LinkButton ID="lnbForgot" runat="server" Font-Bold="True" ForeColor="#000099" OnClick="lnbForgot_Click" TabIndex="4">Forgot Password</asp:LinkButton>
                    </td>
                    <td style="width: 60%; text-align: left; padding-left: 5px; vertical-align: middle">
                        <asp:LinkButton ID="lnbSignUp" runat="server" Font-Bold="True" ForeColor="#000099" OnClick="lnbSignUp_Click" TabIndex="5">Not Registered Yet Click Here!!!</asp:LinkButton>
                    </td>
                </tr>
                <tr style="height: 5%">
                    <td colspan="2">
                        <asp:Label ID="lblAns" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
        <td style="width: 34%">&nbsp;
        </td>
    </tr>
    <tr style="height: 33%">
        <td style="width: 33%">&nbsp;
        </td>
        <td style="width: 33%">&nbsp;
        </td>
        <td style="width: 34%">&nbsp;
        </td>
    </tr>
</table>
