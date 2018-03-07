<%@ Page Title="" Language="C#" MasterPageFile="Company.master" AutoEventWireup="true" CodeBehind="CompanyHome.aspx.cs" Inherits="Assignment1.CompanyHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table style="width: 1190px; height: 600px">
            <tr style="height: 70%">
                <td style="width: 100%">
                    <table style="width: 100%; height: 100%;">
                        <tr style="height: 100%">
                            <td style="width: 20%">&nbsp;
                            </td>
                            <td style="width: 60%">
                                <table style="width: 100%; height: 100%; border: solid 1px navy">
                                    <tr style="height: 20%">
                                        <td colspan="2" style="text-align: left; vertical-align: middle; padding-left: 20px; background-color: navy">
                                            <asp:Label ID="lblHeader" runat="server" Text="Company Description" Font-Bold="true" ForeColor="White" Font-Size="24px"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="height: 5%">
                                        <td colspan="2" style="text-align: left; vertical-align: middle; padding-left: 20px">&nbsp;
                                        </td>
                                    </tr>
                                    <tr style="height: 10%">
                                        <td style="text-align: right; vertical-align: middle; padding-right: 5px">
                                            <asp:Label ID="lblCompany" runat="server" Text="Select Company: "></asp:Label>
                                        </td>
                                        <td style="text-align: left; vertical-align: middle; padding-left: 5px">
                                            <asp:DropDownList ID="drpCompany" runat="server" AutoPostBack="true" OnSelectedIndexChanged="drpCompany_SelectedIndexChanged">
                                                <asp:ListItem>==Select Company==</asp:ListItem>
                                                <asp:ListItem>Microsoft</asp:ListItem>
                                                <asp:ListItem>Google</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>

                                    <tr style="height: 10%">
                                        <td style="text-align: right; vertical-align: middle; padding-right: 5px">
                                            <asp:Label ID="lblLanguage" runat="server" Text="Select Language: "></asp:Label>
                                        </td>
                                        <td style="text-align: left; vertical-align: middle; padding-left: 5px">
                                            <asp:DropDownList ID="drpLanguage" runat="server" AutoPostBack="true" OnSelectedIndexChanged="drpLanguage_SelectedIndexChanged">
                                                <asp:ListItem>==Select Language==</asp:ListItem>
                                                <asp:ListItem>English</asp:ListItem>
                                                <asp:ListItem>French</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr style="height: 10%">
                                        <td style="text-align: right; vertical-align: middle; padding-right: 5px">
                                            <asp:Label ID="lblCompanyName" runat="server" Text="Company Name: "></asp:Label>
                                        </td>
                                        <td style="text-align: left; vertical-align: middle; padding-left: 5px">
                                            <asp:TextBox ID="txtCompanyName" runat="server" MaxLength="50"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCompanyName" ForeColor="Red" Display="Dynamic" ErrorMessage="*" ValidationGroup="compDes"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtCompanyName" ForeColor="Red" Display="Dynamic" ErrorMessage="Atleast 5 characters needed" ValidationExpression="^[a-zA-Z0-9.]{5,}$" ValidationGroup="compDes"></asp:RegularExpressionValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtCompanyName" ForeColor="Red" Display="Dynamic" ErrorMessage="Start with character" ValidationExpression="^[a-zA-Z.]*$" ValidationGroup="compDes"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr style="height: 10%">
                                        <td style="text-align: right; vertical-align: middle; padding-right: 5px">
                                            <asp:Label ID="lblCompanyDescription" runat="server" Text="Company Description: "></asp:Label>
                                        </td>
                                        <td style="text-align: left; vertical-align: middle; padding-left: 5px">
                                            <asp:TextBox ID="txtCompanyDescription" runat="server" MaxLength="1000" TextMode="MultiLine" Rows="4" Columns="30"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCompanyDescription" ForeColor="Red" Display="Dynamic" ErrorMessage="*" ValidationGroup="compDes"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCompanyDescription" ForeColor="Red" Display="Dynamic" ErrorMessage="Atleast 5 characters needed" ValidationExpression="^[a-zA-Z0-9.]{5,}$" ValidationGroup="compDes"></asp:RegularExpressionValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCompanyDescription" ForeColor="Red" Display="Dynamic" ErrorMessage="Start with character" ValidationExpression="^[a-zA-Z.]*$" ValidationGroup="compDes"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr style="height: 10%">
                                        <td style="text-align: right; vertical-align: middle; padding-right: 5px">
                                            <asp:LinkButton ID="lnbSave" runat="server" Font-Bold="true" ForeColor="Navy" ValidationGroup="compDes" OnClick="lnbSave_Click">Save</asp:LinkButton>
                                        </td>
                                        <td style="text-align: left; vertical-align: middle; padding-left: 5px">
                                            <asp:LinkButton ID="lnbCancel" runat="server" Font-Bold="true" ForeColor="Navy" OnClick="lnbCancel_Click">Cancel</asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 25%">
                                        <td colspan="2" style="text-align: left; vertical-align: middle; padding-left: 20px">
                                            <asp:Label ID="lblAns" runat="server" Text="" ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width: 20%">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 30%">
                <td style="width: 100%; text-align: center; vertical-align: middle;">
                    <asp:GridView ID="grdApplicantJobApplication" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="100%" Width="98%">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
