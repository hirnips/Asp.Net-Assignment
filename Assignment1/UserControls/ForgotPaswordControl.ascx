<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ForgotPaswordControl.ascx.cs" Inherits="Assignment1.UserControls.ForgotPaswordControl" %>
<table style="width: 100%; height: 600px;">
    <tr style="height: 33%">
        <td style="width: 33%">&nbsp;
        </td>
        <td style="width: 33%">&nbsp;
        </td>
        <td style="width: 34%">&nbsp;
        </td>
    </tr>
    <tr style="height: 33%">
        <td style="width: 33%">
            &nbsp;
        </td>
        <td style="width: 33%">
            <table style="width: 100%; height: 100%; border: solid 1px navy">
                <tr style="height: 33%">
                    <td style="width: 40%; text-align: left; padding-left: 20px; vertical-align: middle; background-color: navy" colspan="2">
                        <asp:Label ID="lblHeader" runat="server" Text="Forgot Password" Font-Bold="True" Font-Size="24pt" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr style="height: 5%">
                    <td colspan="2">
                        &nbsp;
                    </td>
                </tr>
                <tr style="height: 28%">
                    <td style="width: 40%; text-align: right; padding-right: 5px; vertical-align: middle">
                        <asp:Label ID="lblUName" runat="server" Text="Enter User Name: "></asp:Label>
                    </td>
                    <td style="width: 60%; text-align: left; padding-left: 5px; vertical-align: middle">
                        <asp:TextBox ID="txtUName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUName" ValidationGroup="FgPwd" ForeColor="Red" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ErrorMessage="Invalid email" ControlToValidate="txtUName" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#FF3300"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr style="height: 29%">
                    <td style="width: 40%; text-align: right; padding-right: 5px; vertical-align: middle">
                        <asp:LinkButton ID="lnbLogin" runat="server" Font-Bold="True" ForeColor="#000099" OnClick="lnbLogin_Click" ValidationGroup="FgPwd">Reset Password</asp:LinkButton>
                    </td>
                    <td style="width: 60%; text-align: left; padding-left: 5px; vertical-align: middle">
                        <asp:LinkButton ID="lnbCancel" runat="server" Font-Bold="True" ForeColor="#000099" OnClick="lnbCancel_Click">Cancel</asp:LinkButton>
                    </td>
                </tr>
                <tr style="height: 5%">
                    <td colspan="2">
                        &nbsp;
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
