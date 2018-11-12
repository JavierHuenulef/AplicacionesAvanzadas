<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.Master" AutoEventWireup="true" CodeBehind="Eliminar.aspx.cs" Inherits="WhiteLine.Eliminar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="menu" runat="server">
     <div class="container">
      <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
          <div class="card card-signin my-5">
            <div class="card-body">
              <h5 class="card-title text-center">Eliminar</h5>


              <form class="form-signin"  enctype="multipart/form-data">

                  <div class="form-label-group">

                      <asp:GridView ID="grdProductos" runat="server"></asp:GridView>
                      <br />
                      <br />

                   <label for="inputNombre">ID de Producto</label>
                  	<asp:TextBox ID="txt_eliminar" runat="server" Text=""></asp:TextBox>
                    <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txt_eliminar"  ValidationGroup="eliminar" runat="server" ForeColor="Red" />
                    <asp:RegularExpressionValidator ErrorMessage="Invalido" ControlToValidate="txt_eliminar" ValidationGroup="eliminar" runat="server" ValidationExpression="^[A-Za-z0-9]*$" />
                      <br />
		
            <asp:Button ID="btn_Eliminar" runat="server" Text="Eliminar" class="btn btn-lg btn-primary btn-block text-uppercase" OnClick="btn_Eliminar_Click" ValidationGroup="eliminar" /><br /><br />

                  </div>
            
                
                <hr class="my-4">
                
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
</asp:Content>
