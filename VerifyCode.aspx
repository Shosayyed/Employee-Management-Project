﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerifyCode].aspx.cs" Inherits="LoginPage.VerifyCode_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
               <section class="vh-100" style="background-color: #9A616D;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
             <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"

                alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">

                <form>

                  <div class="d-flex align-items-center mb-3 pb-1">
                    <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                    <span class="h1 fw-bold mb-0">Logo</span>
                  </div>

                  <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Forget Password</h5>

                  <div  class="form-outline mb-4">
                    <%--<input type="email" id="form2Example17" class="form-control form-control-lg" />--%>
                       <asp:TextBox ID="TxtEmial" runat="server" type="Text"   class="form-control form-control-lg"> </asp:TextBox>
                    <label class="form-label" for="form2Example17">Email address</label>
                      <br />

                      <asp:Button ID="BtnSendOtp" runat="server" Text="Send OTP"  class="btn btn-primary" OnClick="BtnSendOtp_Click"/>
                  </div>

                  <div class="form-outline mb-4">
                    <%--<input type="password" id="form2Example27" class="form-control form-control-lg" />--%>
                      <asp:TextBox ID="TxtVerify" runat="server"   class="form-control form-control-lg"> </asp:TextBox>
                    <label class="form-label" for="form2Example27">Verify</label>
                      <br />
                      <asp:Button ID="BtnOtpSmt" runat="server" Text="OTP Submit"  class="btn btn-primary" OnClick="BtnOtpSmt_Click"/>
                  </div>
                   
                </form>

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
