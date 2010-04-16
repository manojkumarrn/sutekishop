﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/CmsSubMenu.master" AutoEventWireup="true" ValidateRequest="false" CodeBehind="Edit.aspx.cs" Inherits="Suteki.Shop.ViewPage<CmsViewData>" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Content</h1>

<p><%= Model.Content.Link(Html)%></p>

<%= Html.MessageBox(ViewData.Model)%>
<%= Html.ValidationSummary() %>

<% using (Html.BeginForm()) { %>
	<%= this.Hidden(x => x.Content.ContentType.Id) %>
	<%= this.Hidden(x => x.Content.Id) %>
	<%= this.Hidden(x => x.Content.Position) %>
	<%= this.TextBox(x => x.Content.Name).Label("Name") %>
	<%= this.TextArea(x => ((ITextContent) x.Content).Text).Label("Text") %>
	<%= this.Select(x => x.Content.ParentContent.Id).Options(Model.Menus, x => x.Id, x => x.Name).Label("Parent Menu") %>
	<%= this.CheckBox(x => x.Content.IsActive).Label("Active") %>
	
	<input type="submit" value="Save Changes" />
<% } %>

<% Html.InitialiseRichTextEditor(); %>

</asp:Content>
