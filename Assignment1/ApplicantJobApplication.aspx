<%@ Page Title="" Language="C#" MasterPageFile="~/Applicant.master" AutoEventWireup="true" CodeBehind="ApplicantJobApplication.aspx.cs" Inherits="Assignment1.ApplicantJobApplication" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

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
                                            <asp:Label ID="lblHeader" runat="server" Text="Applicant Job Application" Font-Bold="true" ForeColor="White" Font-Size="24px"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="height: 5%">
                                        <td colspan="2" style="text-align: left; vertical-align: middle; padding-left: 20px">&nbsp;
                                        </td>
                                    </tr>
                                    <tr style="height: 10%">
                                        <td style="text-align: right; vertical-align: middle; padding-right: 5px">
                                            <asp:Label ID="lblApplicant" runat="server" Text="Select Applicant: "></asp:Label>
                                        </td>
                                        <td style="text-align: left; vertical-align: middle; padding-left: 5px">
                                            <asp:DropDownList ID="drpApplicant" runat="server" AutoPostBack="true" OnSelectedIndexChanged="drpApplicant_SelectedIndexChanged">
                                                <asp:ListItem>==Select Applicant==</asp:ListItem>
                                                <asp:ListItem>Malcom</asp:ListItem>
                                                <asp:ListItem>Adam</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>

                                    <tr style="height: 10%">
                                        <td style="text-align: right; vertical-align: middle; padding-right: 5px">
                                            <asp:Label ID="Label1" runat="server" Text="Select Job: "></asp:Label>
                                        </td>
                                        <td style="text-align: left; vertical-align: middle; padding-left: 5px">
                                            <asp:DropDownList ID="drpJob" runat="server" AutoPostBack="true" OnSelectedIndexChanged="drpJob_SelectedIndexChanged">
                                                <asp:ListItem>==Select Job==</asp:ListItem>
                                                <asp:ListItem>Finance Manager</asp:ListItem>
                                                <asp:ListItem>QA Designer</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr style="height: 10%">
                                        <td style="text-align: right; vertical-align: middle; padding-right: 5px">
                                            <asp:Label ID="lblApplicationDate" runat="server" Text="Application Date: "></asp:Label>
                                        </td>
                                        <td style="text-align: left; vertical-align: middle; padding-left: 5px">
                                            <asp:TextBox ID="txtApplicationDate" runat="server"></asp:TextBox>
                                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Calander.png" Width="20px" Height="20px" />
                                            <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtApplicationDate"
                                                PopupButtonID="ImageButton1" Format="dd/MM/yyyy" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtApplicationDate" ForeColor="Red" Display="Dynamic" ErrorMessage="*" ValidationGroup="appJob"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr style="height: 10%">
                                        <td style="text-align: right; vertical-align: middle; padding-right: 5px">
                                            <asp:LinkButton ID="lnbSave" runat="server" Font-Bold="true" ForeColor="Navy" ValidationGroup="appJob" OnClick="lnbSave_Click">Save</asp:LinkButton>
                                        </td>
                                        <td style="text-align: left; vertical-align: middle; padding-left: 5px">
                                            <asp:LinkButton ID="lnbCancel" runat="server" Font-Bold="true" ForeColor="Navy" OnClick="lnbCancel_Click">Cancel</asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 35%">
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
