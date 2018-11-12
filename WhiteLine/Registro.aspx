<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="WhiteLine.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="menu" runat="server">

     <div class="container">
      <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
          <div class="card card-signin my-5">
            <div class="card-body">
              <h5 class="card-title text-center">Sign In</h5>

              <form class="form-signin"  enctype="multipart/form-data">

                  <div class="form-label-group">

                  
                  <asp:TextBox class="form-control" ID="inputNombre"  runat="server" placeholder="Nombre" ></asp:TextBox>
                                     <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="inputNombre" runat="server" Display="Dynamic" ForeColor="DarkRed" ValidationGroup="Registro" />
            <asp:RegularExpressionValidator ID="validadorNombre" runat="server" ControlToValidate="inputNombre" ErrorMessage="Campo incorrecto" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
           

                  </div>
                 

                    <div class="form-label-group">
                    
                  <asp:TextBox class="form-control" ID="inputEmail" TextMode="Email" runat="server" placeholder="Email" ></asp:TextBox>
                          <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="inputEmail" runat="server" Display="Dynamic" ValidationGroup="Registro" ForeColor="DarkRed"/>
                    <asp:RegularExpressionValidator ID="ValidadorEmail" runat="server" Display="Dynamic" ControlToValidate="inputEmail" ErrorMessage="Formato Incorrecto" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            
                  <br />

                  
                </div>
  
                <div class="form-label-group">
                 
                  <asp:TextBox ID="inputPassword" runat="server" class="form-control" placeholder="Password" TextMode="Password" ></asp:TextBox>
                           <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="inputPassword" runat="server"  ForeColor="DarkRed" Display="Dynamic" ValidationGroup="Registro" />
            <asp:RegularExpressionValidator ID="validadorPassword" runat="server" ControlToValidate="inputPassword" ErrorMessage="Ingrese solo letras y/o numeros" ForeColor="Red" ValidationExpression="^[A-Za-z0-9]*$"></asp:RegularExpressionValidator>
            
                  
                </div>
                  <br />
                  <br />
                  
    
                

                <asp:Button class="btn btn-lg btn-primary btn-block text-uppercase" ID="btn_Registro" ValidationGroup="Registro" runat="server" Text="Crear cuenta" OnClick="btn_Registro_Click" />
                  <br />
                  <asp:Button class="btn btn-lg btn-primary btn-block text-uppercase" ID="btn_Login"  runat="server" Text="Login" OnClick="btn__Click" />
                <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                
                <hr class="my-4">
                
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

</asp:Content>
