﻿<%@ Page Title="" Language="C#" MasterPageFile="~/prodraftadmin/PiglobalAdminMasterPage.master" AutoEventWireup="true" CodeFile="new.aspx.cs" Inherits="Siteadmin_cauhinh_banner_new" %>

<asp:Content ID="Content3" ContentPlaceHolderID="titleContentPlaceHolder" runat="Server">
    Thêm mới/sửa chi nhánh
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="breadCrumbContentPlaceHolder" runat="Server">
    <script src="/prodraftadmin/script/Common.js" type="text/javascript"></script>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/prodraftadmin">Trang chủ</a></li>
            <li class="breadcrumb-item"><a href="#">Thông tin công ty</a></li>
            <li class="breadcrumb-item"><a href="/prodraftadmin/congty/brand/list.aspx">Danh sách chi nhánh</a></li>
            <li class="breadcrumb-item active">Thêm mới/sửa chi nhánh</li>
        </ol>
    </nav>
    <input type="hidden" id="hdfidpage" value="90" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" runat="Server">
    <div class="noidung">
        <div class="title">Thêm mới/sửa chi nhánh</div>
        <div class="thanhtacvu"><a href="list.aspx" class="btn btn-sm btn-danger"><i class="fa fa-undo" aria-hidden="true"></i>&nbsp;Quay về</a></div>
        <div class="div-crud">
            <table class="table-crud">
                <tr>
                    <td class="name1">
                        <label for="txtName">Loại chi nhánh</label>
                    </td>
                    <td class="txt1">
                        <asp:DropDownList CssClass="form-control" ID="ddlBrandType" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="name1">
                        <label for="txtName">Mã chi nhánh</label>
                    </td>
                    <td class="txt1">
                        <asp:TextBox ID="txtCode" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="name1">
                        <label for="txtName">Tên chi nhánh</label>
                    </td>
                    <td class="txt1">
                        <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:HiddenField ID="txtId" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="name1">
                        <label for="txtName">Người quản lý</label>
                    </td>
                    <td class="txt1">
                        <asp:TextBox ID="txtPersonalManager" Text="" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="name1">
                        <label for="txtName">Địa chỉ</label>
                    </td>
                    <td class="txt1">
                        <asp:TextBox ID="txtAddress" Text="" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="name1">
                        <label for="txtName">Điện thoại</label>
                    </td>
                    <td class="txt1">
                        <asp:TextBox ID="txtPhone" Text="" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="name1">
                        <label for="txtName">Fax</label>
                    </td>
                    <td class="txt1">
                        <asp:TextBox ID="txtFax" Text="" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="name1">
                        <label for="txtName">Hotline</label>
                    </td>
                    <td class="txt1">
                        <asp:TextBox ID="txtHotLine" Text="" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="name1">
                        <label for="txtName">Email</label>
                    </td>
                    <td class="txt1">
                        <asp:TextBox ID="txtEmail" Text="" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="name1">
                        <label for="txtName">Google Map</label>
                    </td>
                    <td class="txt1">
                        <asp:TextBox ID="txtGoogleMap" TextMode="MultiLine" Rows="5" Text="" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="name1">Sắp xếp<br />
                        <span class="colorGray">Hiển thị theo thứ tự tăng dần</span></td>
                    <td class="txt1">
                        <asp:TextBox ID="txtNumOr" CssClass="form-control" TextMode="Number" runat="server" Width="280px" Text="0"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="name1">Trạng thái</td>
                    <td class="txt1">
                        <asp:CheckBox ID="rdoStatus" Checked="true" runat="server" Text="&nbsp; [Chọn để hiển thị]" />
                    </td>
                </tr>
                <tr>
                    <td class="name1">Hiển thị web</td>
                    <td class="txt1">
                        <asp:CheckBox ID="rdoIsDisplayWeb" Checked="true" runat="server" Text="&nbsp; [Chọn để hiển thị]" />
                    </td>
                </tr>
                <tr>
                    <td class="name1"></td>
                    <td class="txt1 bt1">
                        <asp:Button ID="btnSave" CssClass="btn btn-primary" OnClick="btnSave_Click" runat="server" Text="Lưu thông tin" ValidationGroup="validateForm"/>
                        <a href="/prodraftadmin/congty/brand/list.aspx" class="btn btn-danger">Hủy</a>
                        </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding-top: 10px">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="False" ValidationGroup="validateForm" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
