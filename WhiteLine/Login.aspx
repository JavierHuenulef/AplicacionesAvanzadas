<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WhiteLine.Login1" %>



  <asp:Content ID="Content1" ContentPlaceHolderID="menu" runat="server">
      
    <div class="container">
      <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
          <div class="card card-signin my-5">
            <div class="card-body">
              <h5 class="card-title text-center">Sign In</h5>

              <form class="form-signin"  enctype="multipart/form-data">

                <div class="form-label-group">
                 
                  <asp:TextBox class="form-control" ID="inputEmail" TextMode="Email" runat="server" placeholder="Email"  ></asp:TextBox>
                  <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="inputEmail" runat="server" Display="Dynamic" ValidationGroup="Login" />
                    <asp:RegularExpressionValidator ID="ValidadorEmail" runat="server" Display="Dynamic" ControlToValidate="inputEmail" ErrorMessage="Formato Incorrecto" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
  <br />
                <div class="form-label-group">
                  <asp:TextBox ID="inputPassword" runat="server" class="form-control" placeholder="Password" TextMode="Password"  ></asp:TextBox>
                  <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="inputPassword" runat="server" Display="Dynamic" ValidationGroup="Login" />
                  
                 
                </div>
  
                <br />
                  <br />

                <asp:Button class="btn btn-lg btn-primary btn-block text-uppercase" ID="btn_Login" runat="server" Text="Log in" OnClick="btn_Login_Click" />
                  <br />

                <asp:Button class="btn btn-lg btn-primary btn-block text-uppercase" ID="btn_Singup" runat="server" Text="Registrar" OnClick="btn_Singup_Click" />
                
                <hr class="my-4">
                
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
   
    </asp:Content>
