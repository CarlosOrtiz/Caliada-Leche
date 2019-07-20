<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="historialpruebas.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.historialpruebas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<h3><i class="fa fa-angle-right"></i>HISTORIAL DE PRUEBAS SOBRE LA CALIDAD DE LA LECHE</h3>--%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
    <div class="row mb">
        <!-- page start-->
        <div class="content-panel">
            <div class="adv-table">
                <table cellpadding="0" cellspacing="0" border="0" class="display table table-bordered" id="hidden-table-info">
                    <thead  >
                        <tr>
                            <th style="text-align:center;">NOMBRE DEL PROVEEDOR</th>
                            <th style="text-align:center;">CÉDULA</th>
                            <th style="text-align:center;">FECHA</th>
                            <th style="text-align:center;">LECHE L</th>
                            <th style="text-align:center;">DESCARGA</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="gradeX">
                            <td>Carlos Alberto Ortiz Losada</td>
                            <td>1117552597</td>
                            <td class="hidden-phone">
                                <input type="text" readonly="" value="22-3-2018" size="18" class="form-control" />
                            </td>
                            <td class="center hidden-phone">4.6</td>
                            <td class="center hidden-phone">
                                <button class="btn btn-success btn-xs"><i class="fa fa-check"></i></button>
                                <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                            </td>
                        </tr>
                        <tr class="gradeC">
                            <td>Trident</td>
                            <td>Internet Explorer 5.0</td>
                            <td class="hidden-phone"> <input type="text" readonly="" value="01-01-2018" size="18" class="form-control"/></td>
                            <td class="center hidden-phone">5</td>
                            <td class="center hidden-phone">C</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Trident</td>
                            <td>Internet Explorer 5.5</td>
                            <td class="hidden-phone">Win 95+</td>
                            <td class="center hidden-phone">5.5</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Trident</td>
                            <td>Internet Explorer 6</td>
                            <td class="hidden-phone">Win 98+</td>
                            <td class="center hidden-phone">6</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Trident</td>
                            <td>Internet Explorer 7</td>
                            <td class="hidden-phone">Win XP SP2+</td>
                            <td class="center hidden-phone">7</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Trident</td>
                            <td>AOL browser (AOL desktop)</td>
                            <td class="hidden-phone">Win XP</td>
                            <td class="center hidden-phone">6</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Gecko</td>
                            <td>Firefox 1.0</td>
                            <td class="hidden-phone">Win 98+ / OSX.2+</td>
                            <td class="center hidden-phone">1.7</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Gecko</td>
                            <td>Firefox 1.5</td>
                            <td class="hidden-phone">Win 98+ / OSX.2+</td>
                            <td class="center hidden-phone">1.8</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>1</td>
                            <td>2</td>
                            <td class="hidden-phone">3</td>
                            <td class="center hidden-phone">4</td>
                            <td class="center hidden-phone">5</td>
                        </tr>
                        <tr class="gradeA">
                            <td>11</td>
                            <td>22</td>
                            <td class="hidden-phone">33</td>
                            <td class="center hidden-phone">44</td>
                            <td class="center hidden-phone">55</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Gecko</td>
                            <td>Camino 1.0</td>
                            <td class="hidden-phone">OSX.2+</td>
                            <td class="center hidden-phone">1.8</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Gecko</td>
                            <td>Camino 1.5</td>
                            <td class="hidden-phone">OSX.3+</td>
                            <td class="center hidden-phone">1.8</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Gecko</td>
                            <td>Netscape 7.2</td>
                            <td class="hidden-phone">Win 95+ / Mac OS 8.6-9.2</td>
                            <td class="center hidden-phone">1.7</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Gecko</td>
                            <td>Netscape Browser 8</td>
                            <td class="hidden-phone">Win 98SE+</td>
                            <td class="center hidden-phone">1.7</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Gecko</td>
                            <td>Netscape Navigator 9</td>
                            <td class="hidden-phone">Win 98+ / OSX.2+</td>
                            <td class="center hidden-phone">1.8</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Gecko</td>
                            <td>Mozilla 1.0</td>
                            <td class="hidden-phone">Win 95+ / OSX.1+</td>
                            <td class="center hidden-phone">1</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Gecko</td>
                            <td>Mozilla 1.1</td>
                            <td class="hidden-phone">Win 95+ / OSX.1+</td>
                            <td class="center hidden-phone">1.1</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Gecko</td>
                            <td>Mozilla 1.2</td>
                            <td class="hidden-phone">Win 95+ / OSX.1+</td>
                            <td class="center hidden-phone">1.2</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Gecko</td>
                            <td>Mozilla 1.3</td>
                            <td class="hidden-phone">Win 95+ / OSX.1+</td>
                            <td class="center hidden-phone">1.3</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Gecko</td>
                            <td>Mozilla 1.4</td>
                            <td class="hidden-phone">Win 95+ / OSX.1+</td>
                            <td class="center hidden-phone">1.4</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Gecko</td>
                            <td>Mozilla 1.5</td>
                            <td class="hidden-phone">Win 95+ / OSX.1+</td>
                            <td class="center hidden-phone">1.5</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Gecko</td>
                            <td>Mozilla 1.6</td>
                            <td class="hidden-phone">Win 95+ / OSX.1+</td>
                            <td class="center hidden-phone">1.6</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Gecko</td>
                            <td>Mozilla 1.7</td>
                            <td class="hidden-phone">Win 98+ / OSX.1+</td>
                            <td class="center hidden-phone">1.7</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Gecko</td>
                            <td>Mozilla 1.8</td>
                            <td class="hidden-phone">Win 98+ / OSX.1+</td>
                            <td class="center hidden-phone">1.8</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Gecko</td>
                            <td>Seamonkey 1.1</td>
                            <td class="hidden-phone">Win 98+ / OSX.2+</td>
                            <td class="center hidden-phone">1.8</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Gecko</td>
                            <td>Epiphany 2.20</td>
                            <td class="hidden-phone">Gnome</td>
                            <td class="center hidden-phone">1.8</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Webkit</td>
                            <td>Safari 1.2</td>
                            <td class="hidden-phone">OSX.3</td>
                            <td class="center hidden-phone">125.5</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Webkit</td>
                            <td>Safari 1.3</td>
                            <td class="hidden-phone">OSX.3</td>
                            <td class="center hidden-phone">312.8</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Webkit</td>
                            <td>Safari 2.0</td>
                            <td class="hidden-phone">OSX.4+</td>
                            <td class="center hidden-phone">419.3</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Webkit</td>
                            <td>Safari 3.0</td>
                            <td class="hidden-phone">OSX.4+</td>
                            <td class="center hidden-phone">522.1</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Webkit</td>
                            <td>OmniWeb 5.5</td>
                            <td class="hidden-phone">OSX.4+</td>
                            <td class="center hidden-phone">420</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Webkit</td>
                            <td>iPod Touch / iPhone</td>
                            <td class="hidden-phone">iPod</td>
                            <td class="center hidden-phone">420.1</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Webkit</td>
                            <td>S60</td>
                            <td class="hidden-phone">S60</td>
                            <td class="center hidden-phone">413</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Presto</td>
                            <td>Opera 7.0</td>
                            <td class="hidden-phone">Win 95+ / OSX.1+</td>
                            <td class="center hidden-phone">-</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Presto</td>
                            <td>Opera 7.5</td>
                            <td class="hidden-phone">Win 95+ / OSX.2+</td>
                            <td class="center hidden-phone">-</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Presto</td>
                            <td>Opera 8.0</td>
                            <td class="hidden-phone">Win 95+ / OSX.2+</td>
                            <td class="center hidden-phone">-</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Presto</td>
                            <td>Opera 8.5</td>
                            <td class="hidden-phone">Win 95+ / OSX.2+</td>
                            <td class="center hidden-phone">-</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Presto</td>
                            <td>Opera 9.0</td>
                            <td class="hidden-phone">Win 95+ / OSX.3+</td>
                            <td class="center hidden-phone">-</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Presto</td>
                            <td>Opera 9.2</td>
                            <td class="hidden-phone">Win 88+ / OSX.3+</td>
                            <td class="center hidden-phone">-</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Presto</td>
                            <td>Opera 9.5</td>
                            <td class="hidden-phone">Win 88+ / OSX.3+</td>
                            <td class="center hidden-phone">-</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Presto</td>
                            <td>Opera for Wii</td>
                            <td class="hidden-phone">Wii</td>
                            <td class="center hidden-phone">-</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Presto</td>
                            <td>Nokia N800</td>
                            <td class="hidden-phone">N800</td>
                            <td class="center hidden-phone">-</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Presto</td>
                            <td>Nintendo DS browser</td>
                            <td class="hidden-phone">Nintendo DS</td>
                            <td class="center hidden-phone">8.5</td>
                            <td class="center hidden-phone">C/A<sup>1</sup></td>
                        </tr>
                        <tr class="gradeC">
                            <td>KHTML</td>
                            <td>Konqureror 3.1</td>
                            <td class="hidden-phone">KDE 3.1</td>
                            <td class="center hidden-phone">3.1</td>
                            <td class="center hidden-phone">C</td>
                        </tr>
                        <tr class="gradeA">
                            <td>KHTML</td>
                            <td>Konqureror 3.3</td>
                            <td class="hidden-phone">KDE 3.3</td>
                            <td class="center hidden-phone">3.3</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeA">
                            <td>KHTML</td>
                            <td>Konqureror 3.5</td>
                            <td class="hidden-phone">KDE 3.5</td>
                            <td class="center hidden-phone">3.5</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeX">
                            <td>Tasman</td>
                            <td>Internet Explorer 4.5</td>
                            <td class="hidden-phone">Mac OS 8-9</td>
                            <td class="center hidden-phone">-</td>
                            <td class="center hidden-phone">X</td>
                        </tr>
                        <tr class="gradeC">
                            <td>Tasman</td>
                            <td>Internet Explorer 5.1</td>
                            <td class="hidden-phone">Mac OS 7.6-9</td>
                            <td class="center hidden-phone">1</td>
                            <td class="center hidden-phone">C</td>
                        </tr>
                        <tr class="gradeC">
                            <td>Tasman</td>
                            <td>Internet Explorer 5.2</td>
                            <td class="hidden-phone">Mac OS 8-X</td>
                            <td class="center hidden-phone">1</td>
                            <td class="center hidden-phone">C</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Misc</td>
                            <td>NetFront 3.1</td>
                            <td>Embedded devices</td>
                            <td class="center">-</td>
                            <td class="center">C</td>
                        </tr>
                        <tr class="gradeA">
                            <td>Misc</td>
                            <td>NetFront 3.4</td>
                            <td class="hidden-phone">Embedded devices</td>
                            <td class="center hidden-phone">-</td>
                            <td class="center hidden-phone">A</td>
                        </tr>
                        <tr class="gradeX">
                            <td>Misc</td>
                            <td>Dillo 0.8</td>
                            <td class="hidden-phone">Embedded devices</td>
                            <td class="center hidden-phone">-</td>
                            <td class="center hidden-phone">X</td>
                        </tr>
                        <tr class="gradeX">
                            <td>Misc</td>
                            <td>Links</td>
                            <td class="hidden-phone">Text only</td>
                            <td class="center hidden-phone">-</td>
                            <td class="center hidden-phone">X</td>
                        </tr>
                        <tr class="gradeX">
                            <td>Misc</td>
                            <td>Lynx</td>
                            <td class="hidden-phone">Text only</td>
                            <td class="center hidden-phone">-</td>
                            <td class="center hidden-phone">X</td>
                        </tr>
                        <tr class="gradeC">
                            <td>Misc</td>
                            <td>IE Mobile</td>
                            <td class="hidden-phone">Windows Mobile 6</td>
                            <td class="center hidden-phone">-</td>
                            <td class="center hidden-phone">C</td>
                        </tr>
                        <tr class="gradeC">
                            <td>Misc</td>
                            <td>PSP browser</td>
                            <td class="hidden-phone">PSP</td>
                            <td class="center hidden-phone">-</td>
                            <td class="center hidden-phone">C</td>
                        </tr>
                        <tr class="gradeU">
                            <td>Other browsers</td>
                            <td>All others</td>
                            <td class="hidden-phone">-</td>
                            <td class="center hidden-phone">-</td>
                            <td class="center hidden-phone">U</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- page end-->
    </div>
    <!-- /row -->

</asp:Content>
