﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="LibraryManagement.Account.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
  <title>Registeration Form</title>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css"/>

  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha/css/bootstrap.min.css'/>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300'/>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto:400,700,300'/>
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css'/>

    <link href="../Content/mySyle.css" rel="stylesheet" />
    <link href="../Content/newStyle.css" rel="stylesheet" />
</head>
<body>
  <div class="signup__container">
  <div class="container__child signup__thumbnail">
    <div class="thumbnail__content text-center">
      <h1 class="heading--primary">Welcome to Library Management.</h1>
    </div>
    <div class="signup__overlay"></div>
  </div>
  <div class="container__child signup__form">
    <form action="#" runat="server">
      <div class="form-group">
        <label for="username">Full Name</label>
          <asp:TextBox ID="fullName" runat="server" CssClass="form-control" placeholder="example name"></asp:TextBox>
          <asp:RequiredFieldValidator runat="server" ControlToValidate="fullName"
                                CssClass="text-danger" ErrorMessage="Full Name is required."/> 
      </div>
      <div class="form-group">
        <label for="email">Email</label>
            <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="example@gmail.com"></asp:TextBox> 
          <asp:RequiredFieldValidator runat="server" ControlToValidate="email"
                                CssClass="text-danger" ErrorMessage="Email is required."/>      
      </div>
      <div class="form-group">
        <label for="password">Password</label>
        <asp:TextBox ID="password" runat="server" CssClass="form-control" placeholder="*********" TextMode="Password"></asp:TextBox>
          <asp:RequiredFieldValidator runat="server" ControlToValidate="password"
                                CssClass="text-danger" ErrorMessage="Password is required."/> 
      </div>
      <div class="form-group">
        <label for="passwordRepeat">Confirm Password</label>
        <asp:TextBox ID="confirmPassword" runat="server" CssClass="form-control" placeholder="*******" TextMode="Password"></asp:TextBox>
      <asp:CompareValidator runat="server" ControlToCompare="password" ControlToValidate="confirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
          <asp:RequiredFieldValidator runat="server" ControlToValidate="confirmPassword"
                                CssClass="text-danger" ErrorMessage="Confirm Password is required."/> 
      </div>
        <div class="form-group">
        <label for="Phone">Phone</label>
        <asp:TextBox ID="phone" runat="server" CssClass="form-control" placeholder="9123453"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="phone"
                                CssClass="text-danger" ErrorMessage="Phone Number is required."/> 
      </div>
        <div class="form-group">
        <label for="PostalCode">Postal Code</label>
        <asp:TextBox ID="postalcode" runat="server" CssClass="form-control" placeholder="312013"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="fullName"
                                CssClass="text-danger" ErrorMessage="Postal Code is required."/> 
      </div>
      <div class="m-t-lg">
        <ul class="list-inline">
          <li>
              <asp:Button ID="Button1" runat="server" Text="Register" class="btn btn--form" OnClick="Button1_Click"/>
          </li>
          <li>
            <a class="signup__link" href="/Account/Login">I am already a member</a>
          </li>
        </ul>
      </div>
    </form>  
  </div>
</div>
  


</body>
</html>
