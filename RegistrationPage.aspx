<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="LoginPage.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 184px;
            left: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <section class="h-100 bg-dark">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col">
        <div class="card card-registration my-4">
          <div class="row g-0">
            <div class="col-xl-6 d-none d-xl-block">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
            </div>
            <div class="col-xl-6">
              <div class="card-body p-md-5 text-black">
                <h3 class="mb-5 text-uppercase">Employee registration form</h3>

                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div data-mdb-input-init class="form-outline">
                        <%-- Name asp text box TxtFirst Name --%>
                        <asp:TextBox ID="TxtFirstName" runat="server" class="form-control form-control-lg"></asp:TextBox>
                      <%--<input type="text" id="form3Example1m" class="form-control form-control-lg" />--%>
                      <label class="form-label" for="form3Example1m">First name</label>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div data-mdb-input-init class="form-outline">
                         <asp:TextBox ID="TxtLastName" runat="server" class="form-control form-control-lg"></asp:TextBox>
                      <%--<input type="text" id="form3Example1n" class="form-control form-control-lg" />--%>
                      <label class="form-label" for="form3Example1n">Last name</label>
                    </div>
                  </div>
                </div>

                

                <div data-mdb-input-init class="form-outline mb-4">
                  <asp:TextBox ID="TxtAddress" runat="server" class="form-control form-control-lg"></asp:TextBox>

                  <%--<input type="text" id="form3Example8" class="form-control form-control-lg" />--%>
                  <label class="form-label" for="form3Example8">Address</label>
                </div>

                <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">

                  <h6 class="mb-0 me-4">Gender: </h6>

                  <div class="form-check form-check-inline mb-0 me-4">
                      <asp:RadioButton GroupName="user" ID="RadioButton1" runat="server" class="form-check-input" OnCheckedChanged="RadioButton1_CheckedChanged" />
                  <%--  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="femaleGender"
                      value="option1" />--%>
                    <label class="auto-style1" for="femaleGender" style="z-index: 1"></label>
                  </div>

                  <div class="form-check form-check-inline mb-0 me-4">

                      <asp:RadioButton ID="RadioButton2" runat="server" class="form-check-input" OnCheckedChanged="RadioButton2_CheckedChanged" />

                    <%--<input class="form-check-input" type="radio" name="inlineRadioOptions" id="maleGender"
                      value="option2" />--%>
                    <label GroupName="user" class="form-check-label" for="maleGender">Male</label>
                  </div>

                  <div class="form-check form-check-inline mb-0">

                       <asp:RadioButton ID="RadioButton3" runat="server" class="form-check-input" OnCheckedChanged="RadioButton3_CheckedChanged" Width="16px" />
                    <%--<input class="form-check-input" type="radio" name="inlineRadioOptions" id="otherGender"
                      value="option3" />--%>
                    <label GroupName="user" class="form-check-label" for="otherGender">Other</label>
                  </div>

                </div>

                <div class="row">
                  <div class="col-md-6 mb-4">
                       <asp:DropDownList ID="DropDownList1" runat="server">
                           <asp:ListItem>Maharshtra</asp:ListItem>
                           <asp:ListItem>Kashmir</asp:ListItem>
                           <asp:ListItem>Telengana</asp:ListItem>
                           <asp:ListItem>Dilhe</asp:ListItem>
                           <asp:ListItem>Gujrat</asp:ListItem>
                           <asp:ListItem>Goa</asp:ListItem>
                           <asp:ListItem></asp:ListItem>
                       </asp:DropDownList>
                   

                  </div>
                  <div class="col-md-6 mb-4">

                    <asp:DropDownList ID="DropDownList2" runat="server">
     <asp:ListItem>Pune</asp:ListItem>
     <asp:ListItem>Bangluru</asp:ListItem>
     <asp:ListItem>Hydrabad</asp:ListItem>
     <asp:ListItem>Dilhe</asp:ListItem>
     <asp:ListItem>Ahmadabad</asp:ListItem>
     <asp:ListItem>Noida</asp:ListItem>
     <asp:ListItem></asp:ListItem>
 </asp:DropDownList>

                  </div>
                </div>

                <div data-mdb-input-init class="form-outline mb-4">
                 <asp:TextBox ID="TxtEmail" runat="server" class="form-control form-control-lg" TextMode="Email"></asp:TextBox>
                  <label class="form-label" for="form3Example9">Email ID</label>
                </div>

                <div data-mdb-input-init class="form-outline mb-4">
                    <asp:TextBox ID="TxtMobile" runat="server" class="form-control form-control-lg" MaxLength="10" TextMode="Number"></asp:TextBox>
               
                  <label class="form-label" for="form3Example90">Mobile No</label>
                </div>

                <div data-mdb-input-init class="form-outline mb-4">
                    <asp:TextBox ID="TxtUserName" runat="server" class="form-control form-control-lg"></asp:TextBox>
                
                  <label class="form-label" for="form3Example99">User Name</label>
                </div>

                <div data-mdb-input-init class="form-outline mb-4">
                    <asp:TextBox ID="TxtPassword" runat="server" class="form-control form-control-lg" TextMode="Password"></asp:TextBox>
                 
                  <label class="form-label" for="form3Example97">Password</label>
                </div>

                <div class="d-flex justify-content-end pt-3">
                    <asp:Button ID="BtnRest" runat="server" Text="Reset all"  class="btn btn-light btn-lg" />
                    <asp:Button ID="BtnSubmit" runat="server" Text="Submit form"  class="btn btn-warning btn-lg ms-2" OnClick="BtnSubmit_Click"/>

                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
    </form>
</body>
</html>
