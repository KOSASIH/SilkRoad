﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="list.aspx.cs" Inherits="prodraftadmin_congty_nhanvien_EmployeeInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thông tin từ khóa</title>
    <script src="/prodraftadmin/admin_template/js/jquery-1.7.2.min.js"></script>
    <link href="/prodraftadmin/bootstrap-3.3.7/css/bootstrap.css" rel="stylesheet" />
    <link href="/prodraftadmin/select2/css/select2.css" rel="stylesheet" />
    <script src="/prodraftadmin/select2/js/select2.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese');

        body {
            padding: 10px;
            font-family: Roboto;
            margin: 0;
        }

        .emp_status_1 {
            color: #fff;
            padding: 3px 5px;
            border-radius: 3px;
            font-size: 12px;
            background-image: linear-gradient(to top, #0ba360 0%, #3cba92 100%);
        }

        .emp_status_0 {
            color: #333333;
            padding: 3px 5px;
            border-radius: 3px;
            font-size: 12px;
            background-image: linear-gradient(120deg, #fdfbfb 0%, #ebedee 100%);
        }

        .td-width-title {
            width: 150px;
        }

        legend {
            background-image: linear-gradient(to left, #BDBBBE 0%, #9D9EA3 100%), radial-gradient(88% 271%, rgba(255, 255, 255, 0.25) 0%, rgba(254, 254, 254, 0.25) 1%, rgba(0, 0, 0, 0.25) 100%), radial-gradient(50% 100%, rgba(255, 255, 255, 0.30) 0%, rgba(0, 0, 0, 0.30) 100%);
            background-blend-mode: normal, lighten, soft-light;
            color: #fff;
            padding: 4px 0px 4px 10px;
            margin-bottom: 0;
            border: none;
            font-size: 17px;
        }

        .message {
            color: #fff;
            padding: 3px 5px;
            border-radius: 3px;
            font-size: 12px;
            background-image: linear-gradient(to top, #0ba360 0%, #3cba92 100%);
        }

        .cap-phep label {
            font-weight: normal;
        }
    </style>
    <script>
        $(function () { $(".select2").select2(); })
        function confirmDelete() {
            if (confirm('Bạn có chắc muốn xóa dữ liệu này không?')) return true;
            return false;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset>
                <legend>Thêm từ khóa</legend>
                <div>
                    <table class="table table-bordered">
                        <tbody>
                            <tr>
                                <td class="td-width-title"><b>Chọn từ khóa: </b></td>
                                <td>
                                    <asp:DropDownList CssClass="select2 form-control" Width="97%" ID="ddlTags" runat="server"></asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="td-width-title"></td>
                                <td>
                                    <asp:Button ID="btnSave" OnClick="btnSave_Click" CssClass="btn btn-sm btn-danger" runat="server" Text="Lưu thông tin" />
                                    <span>
                                        <asp:Label Visible="false" ID="lblMessage" CssClass="message" runat="server" Text=""></asp:Label></span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </fieldset>
            <fieldset>
                <legend>Danh sách từ khóa</legend>
                <div>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>STT</th>
                                <th>Từ khóa</th>
                                <th>#</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="rptDanhSach" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td><%# Container.ItemIndex + 1 %></td>
                                        <td><%#Eval("pro_Tag.Name") %></td>
                                        <td>
                                            <asp:ImageButton CssClass="config-delete-grid" OnClick="btnDelete_Click" ID="btnDelete" ToolTip="Delete" runat="server" ImageUrl="/prodraftadmin/images/delete.png" OnClientClick="return confirmDelete();" CommandArgument='<%# Eval("Id")%>' />
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>

                        </tbody>
                    </table>
                </div>
            </fieldset>
        </div>
    </form>
</body>
</html>
