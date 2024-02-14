<%@ Page Title="" Language="C#" MasterPageFile="~/groundZero.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="eserS3L3.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="RaccoltaDati" runat="server">
    <h2>Inserisci Dati:</h2>
    <asp:Label ID="labelFirstName" runat="server" Text="First Name:" ></asp:Label>
    <br />
    <asp:TextBox ID="firstName" runat="server"></asp:TextBox>
    <br />
    
    <asp:Label ID="labelLastName" runat="server" Text="Last Name:"></asp:Label>
    <br />
    <asp:TextBox ID="lastName" runat="server"></asp:TextBox>
    
    <h2>Seleziona Sala</h2>
    <asp:RadioButtonList ID="Sala" runat="server">
        <asp:ListItem Selected="True">SALA NORD</asp:ListItem>
        <asp:ListItem>SALA EST</asp:ListItem>
        <asp:ListItem>SALA SUD</asp:ListItem>
    </asp:RadioButtonList>
    
 <h3>Seleziona tipologia biglietto:</h3>
    <asp:RadioButtonList ID="TipoBiglietto" runat="server">
        <asp:ListItem Selected="True">Intero</asp:ListItem>
        <asp:ListItem>Ridotto</asp:ListItem>
    </asp:RadioButtonList>
    <asp:Button ID="DataBtn" runat="server" Text="Save Choices" OnClick="Save_Choices_Btn_Click"/>
</asp:Content>
