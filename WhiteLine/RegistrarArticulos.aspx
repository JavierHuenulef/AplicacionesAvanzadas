<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.Master" AutoEventWireup="true" CodeBehind="RegistrarArticulos.aspx.cs" Inherits="WhiteLine.RegistrarArticulos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Menu" runat="server">







     <div class="container">
      <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
          <div class="card card-signin my-5">
            <div class="card-body">
              <h5 class="card-title text-center">Ingreso De Articulos</h5>

              <form class="form-signin"  enctype="multipart/form-data">
                   
                  <div class="form-label-group">
                  <label for="txt_Id">ID</label>
                   <asp:TextBox ID="txt_Id" runat="server" class="form-control" ></asp:TextBox>
                   <asp:RequiredFieldValidator ErrorMessage="*" ValidationGroup="registrar" ControlToValidate="txt_Id" runat="server"  Display="Dynamic" />
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationGroup="registrar" runat="server" ControlToValidate="txt_Id" ErrorMessage="Ingrese solo numeros" ForeColor="Red" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
            
                 </div>

                <div class="form-label-group">
                  <label for="txt_Modelo">Modelo</label>
                   <asp:TextBox ID="txt_Modelo" runat="server" class="form-control" ></asp:TextBox>
                   <asp:RequiredFieldValidator ErrorMessage="*" ValidationGroup="registrar" ControlToValidate="txt_Modelo" runat="server"  Display="Dynamic" />
                   <asp:RegularExpressionValidator ID="validadorModelo" ValidationGroup="registrar" runat="server" ControlToValidate="txt_Modelo" ErrorMessage="Ingrese Letras y/o numeros" ForeColor="Red" ValidationExpression="^[A-Za-z0-9]*$"></asp:RegularExpressionValidator>
            
                 </div>
  
                <div class="form-label-group">
                  <label for="txt_Marca">Marca</label>
                  <asp:TextBox ID="txt_Marca" runat="server" class="form-control"></asp:TextBox>
                  <asp:RequiredFieldValidator ErrorMessage="*" ValidationGroup="registrar" ControlToValidate="txt_Marca" runat="server" class="form-control" Display="Dynamic" />
                  <asp:RegularExpressionValidator ID="validadorMarca" runat="server" ControlToValidate="txt_Marca" ValidationGroup="registrar" ErrorMessage="Campo incorrecto" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
           
                </div>

                <div class="form-label-group">
                  <label for="txt_Categoria">Categoria</label>
                  <asp:TextBox ID="txt_Categoria" runat="server" class="form-control"></asp:TextBox>
                  <asp:RequiredFieldValidator ErrorMessage="*" ValidationGroup="registrar" ControlToValidate="txt_Categoria" runat="server" class="form-control" Display="Dynamic"  />
                  <asp:RegularExpressionValidator ID="validadorCategoria" runat="server" ControlToValidate="txt_Categoria" ValidationGroup="registrar" ErrorMessage="Campo incorrecto" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
            
                </div>

                  <div class="form-label-group">
                  <label for="txt_Precio">Precio</label>
                  <asp:TextBox ID="txt_Precio" runat="server" class="form-control"></asp:TextBox>
                  <asp:RequiredFieldValidator ErrorMessage="*" ValidationGroup="registrar" ControlToValidate="txt_Precio" runat="server" class="form-control" Display="Dynamic" />
                  <asp:RegularExpressionValidator ID="validadorPrecio" runat="server" ControlToValidate="txt_Precio" ValidationGroup="registrar" ErrorMessage="Campo incorrecto" ValidationExpression="^[0-9]*" ForeColor="Red"></asp:RegularExpressionValidator>
            
                </div>


                  <div class="form-label-group">
                  <label for="txt_Descripcion">Descripcion</label>
                  <asp:TextBox ID="txt_Descripcion" runat="server" class="form-control"></asp:TextBox>
                  <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txt_Descripcion" runat="server" class="form-control" Display="Dynamic"  Visible="True" ValidationGroup="registrar"/>
                  <asp:RegularExpressionValidator ID="validadorDescripcion" runat="server" ControlToValidate="txt_Descripcion" ErrorMessage="Campo incorrecto" ValidationExpression="^[A-Za-z]*$"  ></asp:RegularExpressionValidator>
           
                </div>
  
                <asp:Button ID="btn_Ingresar" class="btn btn-lg btn-primary btn-block text-uppercase" runat="server" ValidationGroup="registrar" Text="Ingresar" OnClick="btn_Ingresar_Click"/>

                <asp:Button ID="btn_Lista" class="btn btn-lg btn-primary btn-block text-uppercase" runat="server" Text="Mostrar en lista"  OnClick="btn_Lista_Click" />

                
                <hr class="my-4">

                 
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>








		


        <asp:Label ID="lblestado" runat="server"></asp:Label>


</asp:Content>
