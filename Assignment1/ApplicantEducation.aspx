﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Applicant.master" AutoEventWireup="true" Culture="en-GB" CodeBehind="ApplicantEducation.aspx.cs" Inherits="Assignment1.ApplicantEducation" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                                        <asp:Label ID="lblHeader" runat="server" Text="Applicant Education Detail" Font-Bold="true" ForeColor="White" Font-Size="24px"></asp:Label>
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
                                        <asp:DropDownList ID="drpApplicant" runat="server">
                                            <asp:ListItem>==Select Applicant==</asp:ListItem>
                                            <asp:ListItem>Malcom</asp:ListItem>
                                            <asp:ListItem>Adam</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr style="height: 10%">
                                    <td style="text-align: right; vertical-align: middle; padding-right: 5px">
                                        <asp:Label ID="lblMajor" runat="server" Text="Major: "></asp:Label>
                                    </td>
                                    <td style="text-align: left; vertical-align: middle; padding-left: 5px">
                                        <asp:TextBox ID="txtMajor" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMajor" ForeColor="Red" Display="Dynamic" ErrorMessage="*" ValidationGroup="appEdu"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMajor" ForeColor="Red" Display="Dynamic" ErrorMessage="Atleast 5 characters needed" ValidationExpression="^[a-zA-Z0-9.]{5,}$" ValidationGroup="appEdu"></asp:RegularExpressionValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtMajor" ForeColor="Red" Display="Dynamic" ErrorMessage="Start with character" ValidationExpression="^[a-zA-Z.]*$" ValidationGroup="appEdu"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr style="height: 10%">
                                    <td style="text-align: right; vertical-align: middle; padding-right: 5px">
                                        <asp:Label ID="lblCertiDiploma" runat="server" Text="Certificate Diploma: "></asp:Label>
                                    </td>
                                    <td style="text-align: left; vertical-align: middle; padding-left: 5px">
                                        <asp:TextBox ID="txtCertiDiploma" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCertiDiploma" ForeColor="Red" Display="Dynamic" ErrorMessage="*" ValidationGroup="appEdu"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtCertiDiploma" ForeColor="Red" Display="Dynamic" ErrorMessage="Atleast 5 characters needed" ValidationExpression="^[a-zA-Z0-9.]{5,}$" ValidationGroup="appEdu"></asp:RegularExpressionValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtCertiDiploma" ForeColor="Red" Display="Dynamic" ErrorMessage="Start with character" ValidationExpression="^[a-zA-Z.]*$" ValidationGroup="appEdu"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr style="height: 10%">
                                    <td style="text-align: right; vertical-align: middle; padding-right: 5px">
                                        <asp:Label ID="lblStartDate" runat="server" Text="Start Date: "></asp:Label>
                                    </td>
                                    <td style="text-align: left; vertical-align: middle; padding-left: 5px">
                                        <asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox>
                                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Calander.png" Width="20px" Height="20px" />
                                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtStartDate"
                                            PopupButtonID="ImageButton1" Format="dd/MM/yyyy" />
                                        <asp:CompareValidator ID="CompareValidator1" ValidationGroup="Date" ForeColor="Red" Display="Dynamic"
                                            runat="server" ControlToValidate="txtStartDate" ControlToCompare="txtCompletionDate"
                                            Operator="LessThan" Type="Date" ErrorMessage="Start date must be less than End date."></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr style="height: 10%">
                                    <td style="text-align: right; vertical-align: middle; padding-right: 5px">
                                        <asp:Label ID="lblCompletion" runat="server" Text="Completion Date: "></asp:Label>
                                    </td>
                                    <td style="text-align: left; vertical-align: middle; padding-left: 5px">
                                        <asp:TextBox ID="txtCompletionDate" runat="server"></asp:TextBox>
                                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/Calander.png" Width="20px" Height="20px" />
                                        <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtCompletionDate"
                                            PopupButtonID="ImageButton2" Format="dd/MM/yyyy" />
                                    </td>
                                </tr>
                                <tr style="height: 10%">
                                    <td style="text-align: right; vertical-align: middle; padding-right: 5px">
                                        <asp:Label ID="lblComplPErcentage" runat="server" Text="Completion Percentage: "></asp:Label>
                                    </td>
                                    <td style="text-align: left; vertical-align: middle; padding-left: 5px">
                                        <asp:TextBox ID="txtCompletionPercentage" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCompletionPercentage" ForeColor="Red" Display="Dynamic" ErrorMessage="*" ValidationGroup="appEdu"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtCompletionPercentage" ForeColor="Red" Display="Dynamic" ErrorMessage="Atleast 5 characters needed" ValidationExpression="^[a-zA-Z0-9.]{5,}$" ValidationGroup="appEdu"></asp:RegularExpressionValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtCompletionPercentage" ForeColor="Red" Display="Dynamic" ErrorMessage="Start with character" ValidationExpression="^[a-zA-Z.]*$" ValidationGroup="appEdu"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr style="height: 10%">
                                    <td style="text-align: right; vertical-align: middle; padding-right: 5px">
                                        <asp:LinkButton ID="lnbSave" runat="server" Font-Bold="true" ForeColor="Navy" OnClick="lnbSave_Click" ValidationGroup="appEdu">Save</asp:LinkButton>
                                    </td>
                                    <td style="text-align: left; vertical-align: middle; padding-left: 5px">
                                        <asp:LinkButton ID="lnbCancel" runat="server" Font-Bold="true" ForeColor="Navy" OnClick="lnbCancel_Click">Cancel</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr style="height: 5%">
                                    <td colspan="2" style="text-align: left; vertical-align: middle; padding-left: 20px">&nbsp;
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td style="width: 20%">
                            <asp:Label ID="lblAns" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr style="height: 30%">
            <td style="width: 100%; text-align: center; vertical-align: middle;">
                <asp:GridView ID="grdApplicantEducation" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="100%" Width="98%">
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
</asp:Content>