<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.Master" AutoEventWireup="true" CodeBehind="Modificar.aspx.cs" Inherits="WhiteLine.Modificar1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="menu" runat="server">
     <div class="container">
      <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
          <div class="card card-signin my-5">
            <div class="card-body">
              <h5 class="card-title text-center">Modificar</h5>


              <form class="form-signin"  enctype="multipart/form-data">

                  <div class="form-label-group">

                      <asp:GridView ID="grdProductos" runat="server"></asp:GridView>
                      <br />
                      <br />
                     <asp:TextBox ID="txt_Modificar" runat="server" class="form-control" Text="ID"></asp:TextBox>
                     <asp:RegularExpressionValidator ErrorMessage="*"  ControlToValidate="txt_Modificar" runat="server"  ValidationGroup="Modificar"/>
                     <asp:RegularExpressionValidator ErrorMessage="Invalido" ControlToValidate="txt_Modificar" runat="server" Display="Dynamic" ValidationExpression="^[A-Za-z0-9]*$"  />
                      <br />
                      <br />
		            <asp:Button ID="btn_Modificar" runat="server" Text="Modificar" class="btn btn-lg btn-primary btn-block text-uppercase" OnClick="btn_Modificar_Click" /><br /><br />

                     <br />

                  </div>
                  <div class="form-label-group">
                       <label for="txt_Modelo">Modelo</label>
                   <asp:TextBox ID="txt_modelo" runat="server" class="form-control" ></asp:TextBox>
                   <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txt_modelo" runat="server"  Display="Dynamic" />
                   <asp:RegularExpressionValidator ID="validadorModelo" runat="server" ControlToValidate="txt_Modelo" ErrorMessage="Ingrese Letras y/o numeros" ForeColor="Red" ValidationExpression="^[A-Za-z0-9]*$"></asp:RegularExpressionValidator>
            

                  </div>
                  <br />
                  <div class="form-label-group">
                      <label for="txt_Marca">Marca</label>
                   <asp:TextBox ID="txt_marca" runat="server" class="form-control"></asp:TextBox>
                   <asp:RequiredFieldValidator ErrorMessage="*" ValidationGroup="registrar" ControlToValidate="txt_Marca" runat="server" class="form-control" Display="Dynamic" />
                   <asp:RegularExpressionValidator ID="validadorMarca" runat="server" ControlToValidate="txt_Marca" ErrorMessage="Campo incorrecto" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                  </div>
                  <br />
                  <div class="form-label-group">
                       <label for="txt_Categoria">Categoria</label>
                  <asp:TextBox ID="txt_categoria" runat="server" class="form-control"></asp:TextBox>
                  <asp:RequiredFieldValidator ErrorMessage="*" ValidationGroup="registrar" ControlToValidate="txt_Categoria" runat="server" class="form-control" Display="Dynamic" />
                  <asp:RegularExpressionValidator ID="validadorCategoria" runat="server" ControlToValidate="txt_Categoria" ErrorMessage="Campo incorrecto" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
              
                  </div>
                  <br />
                  <div class="form-label-group">
                      <label for="txt_Precio">Precio</label>
                  <asp:TextBox ID="txt_precio" runat="server" class="form-control"></asp:TextBox>
                  <asp:RequiredFieldValidator ErrorMessage="*" ValidationGroup="registrar" ControlToValidate="txt_Precio" runat="server" class="form-control" Display="Dynamic" />
                  <asp:RegularExpressionValidator ID="validadorPrecio" runat="server" ControlToValidate="txt_Precio" ErrorMessage="Campo incorrecto" ValidationExpression="^[0-9]*" ForeColor="Red"></asp:RegularExpressionValidator>
            
                  </div>
                  <br />
                  <div class="form-label-group"> 
                      <label for="txt_descripcion">Descripcion</label>
                  <asp:TextBox ID="txt_descripcion" runat="server" class="form-control"></asp:TextBox>
                  <asp:RequiredFieldValidator ErrorMessage="*" ValidationGroup="registrar" ControlToValidate="txt_Precio" runat="server" class="form-control" Display="Dynamic" />
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_Precio" ErrorMessage="Campo incorrecto" ValidationExpression="^[0-9]*" ForeColor="Red"></asp:RegularExpressionValidator>
            
                  </div>
            
                
                <hr class="my-4">
                
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
</asp:Content>
