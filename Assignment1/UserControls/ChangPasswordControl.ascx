<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChangPasswordControl.ascx.cs" Inherits="Assignment1.UserControls.ChangPasswordControl" %>
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
        <td style="width: 33%">&nbsp;
        </td>
        <td style="width: 33%">
            <table style="width: 100%; height: 100%; border: solid 1px navy">
                <tr style="height: 20%">
                    <td style="width: 40%; text-align: left; padding-left: 20px; vertical-align: middle; background-color: navy" colspan="2">
                        <asp:Label ID="lblHeader" runat="server" Text="Change Password" Font-Bold="True" Font-Size="24pt" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr style="height: 5%">
                    <td colspan="2">
                        &nbsp;
                    </td>
                </tr>
                <tr style="height: 17%">
                    <td style="width: 40%; text-align: right; padding-right: 5px; vertical-align: middle">
                        <asp:Label ID="lblUName" runat="server" Text="User Name: "></asp:Label>
                    </td>
                    <td style="width: 60%; text-align: left; padding-left: 5px; vertical-align: middle">
                        <asp:TextBox ID="txtUName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUName" ForeColor="Red" Display="Dynamic" ErrorMessage="*" ValidationGroup="ChngPwd"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUName" ForeColor="Red" Display="Dynamic" ErrorMessage="Atleast 5 characters needed" ValidationExpression="^[a-zA-Z0-9.]{5,}$" ValidationGroup="ChPwd"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtUName" ForeColor="Red" Display="Dynamic" ErrorMessage="Start with character" ValidationExpression="^[a-zA-Z.]*$" ValidationGroup="ChPwd"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr style="height: 17%">
                    <td style="width: 40%; text-align: right; padding-right: 5px; vertical-align: middle">
                        <asp:Label ID="lblPassword" runat="server" Text="New Password: "></asp:Label>
                    </td>
                    <td style="width: 60%; text-align: left; padding-left: 5px; vertical-align: middle">
                        <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ControlToValidate="txtNewPassword" ErrorMessage="*" ValidationGroup="ChngPwd"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr style="height: 17%">
                    <td style="width: 40%; text-align: right; padding-right: 5px; vertical-align: middle">
                        <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password: "></asp:Label>
                    </td>
                    <td style="width: 60%; text-align: left; padding-left: 5px; vertical-align: middle">
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ControlToValidate="txtConfirmPassword" ErrorMessage="*" ValidationGroup="ChPwd"></asp:RequiredFieldValidator>

                        <asp:CompareValidator ID="CompareValidator1" runat="server" Display="Dynamic" ErrorMessage="Same as New Password" ForeColor="Red" ValidationGroup="ChngPwd" ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPassword"></asp:CompareValidator>

                    </td>
                </tr>
                <tr style="height: 17%">
                    <td style="width: 40%; text-align: right; padding-right: 5px; vertical-align: middle">
                        <asp:LinkButton ID="lnbLogin" runat="server" Font-Bold="True" ForeColor="#000099" OnClick="lnbLogin_Click" ValidationGroup="ChngPwd">Change Password</asp:LinkButton>
                    </td>
                    <td style="width: 60%; text-align: left; padding-left: 5px; vertical-align: middle">
                        <asp:LinkButton ID="lnbCancel" runat="server" Font-Bold="True" ForeColor="#000099" OnClick="lnbCancel_Click">Cancel</asp:LinkButton>
                    </td>
                </tr>                
                <tr style="height: 5%">
                    <td colspan="2">
                        &nbsp;
                        <asp:Label ID="lblAns" runat="server" ForeColor="Red"></asp:Label>
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