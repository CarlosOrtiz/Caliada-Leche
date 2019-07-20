<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="ModificarCantidad.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.ModificarCantidad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <%--<h3><i class="fa fa-angle-right"></i>MODIFICAR LA CANTIDAD DE LA LECHE </h3>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <!--   <div class="row mb">
        <!-- page start
      
  <div class="content-panel">

            <div class="adv-table">

                <table cellpadding="0" cellspacing="0" border="0" class="display table table-bordered" id="hidden-table-info">

                    <thead>
                        <tr>
                            <th >NOMBRE DEL PROVEEDOR</th>
                            <th>CÉDULA</th>
                            <th class="hidden-phone">FECHA</th>
                            <th class="hidden-phone">LECHE L</th>
                            <th class="hidden-phone">DESCARGA</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="gradeX">
                            <td>Trident</td>
                            <td>Internet Explorer 4.0</td>
                            <td class="hidden-phone">Win 95+</td>
                            <td class="center hidden-phone">4</td>
                            <td class="center hidden-phone">X</td>
                        </tr>
                        <tr class="gradeC">
                            <td>Trident</td>
                            <td>Internet Explorer 5.0</td>
                            <td class="hidden-phone">Win 95+</td>
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
        <!-- page end
    </div>
    -->
  <!--  <div class="row mt">
          <div class="col-lg-12">
            <div class="content-panel">
              <h4><i class="fa fa-angle-right"></i> Responsive Table</h4>
              <section id="unseen">
                <table class="table table-bordered table-striped table-condensed">
                  <thead>
                    <tr>
                      <th>Code</th>
                      <th>Company</th>
                      <th class="numeric">Price</th>
                      <th class="numeric">Change</th>
                      <th class="numeric">Change %</th>
                      <th class="numeric">Open</th>
                      <th class="numeric">High</th>
                      <th class="numeric">Low</th>
                      <th class="numeric">Volume</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>AAC</td>
                      <td>AUSTRALIAN AGRICULTURAL COMPANY LIMITED.</td>
                      <td class="numeric">$1.38</td>
                      <td class="numeric">-0.01</td>
                      <td class="numeric">-0.36%</td>
                      <td class="numeric">$1.39</td>
                      <td class="numeric">$1.39</td>
                      <td class="numeric">$1.38</td>
                      <td class="numeric">9,395</td>
                    </tr>
                    <tr>
                      <td>AAD</td>
                      <td>ARDENT LEISURE GROUP</td>
                      <td class="numeric">$1.15</td>
                      <td class="numeric"> +0.02</td>
                      <td class="numeric">1.32%</td>
                      <td class="numeric">$1.14</td>
                      <td class="numeric">$1.15</td>
                      <td class="numeric">$1.13</td>
                      <td class="numeric">56,431</td>
                    </tr>
                    <tr>
                      <td>AAX</td>
                      <td>AUSENCO LIMITED</td>
                      <td class="numeric">$4.00</td>
                      <td class="numeric">-0.04</td>
                      <td class="numeric">-0.99%</td>
                      <td class="numeric">$4.01</td>
                      <td class="numeric">$4.05</td>
                      <td class="numeric">$4.00</td>
                      <td class="numeric">90,641</td>
                    </tr>
                    <tr>
                      <td>ABC</td>
                      <td>ADELAIDE BRIGHTON LIMITED</td>
                      <td class="numeric">$3.00</td>
                      <td class="numeric"> +0.06</td>
                      <td class="numeric">2.04%</td>
                      <td class="numeric">$2.98</td>
                      <td class="numeric">$3.00</td>
                      <td class="numeric">$2.96</td>
                      <td class="numeric">862,518</td>
                    </tr>
                    <tr>
                      <td>ABP</td>
                      <td>ABACUS PROPERTY GROUP</td>
                      <td class="numeric">$1.91</td>
                      <td class="numeric">0.00</td>
                      <td class="numeric">0.00%</td>
                      <td class="numeric">$1.92</td>
                      <td class="numeric">$1.93</td>
                      <td class="numeric">$1.90</td>
                      <td class="numeric">595,701</td>
                    </tr>
                    <tr>
                      <td>ABY</td>
                      <td>ADITYA BIRLA MINERALS LIMITED</td>
                      <td class="numeric">$0.77</td>
                      <td class="numeric"> +0.02</td>
                      <td class="numeric">2.00%</td>
                      <td class="numeric">$0.76</td>
                      <td class="numeric">$0.77</td>
                      <td class="numeric">$0.76</td>
                      <td class="numeric">54,567</td>
                    </tr>
                    <tr>
                      <td>ACR</td>
                      <td>ACRUX LIMITED</td>
                      <td class="numeric">$3.71</td>
                      <td class="numeric"> +0.01</td>
                      <td class="numeric">0.14%</td>
                      <td class="numeric">$3.70</td>
                      <td class="numeric">$3.72</td>
                      <td class="numeric">$3.68</td>
                      <td class="numeric">191,373</td>
                    </tr>
                    <tr>
                      <td>ADU</td>
                      <td>ADAMUS RESOURCES LIMITED</td>
                      <td class="numeric">$0.72</td>
                      <td class="numeric">0.00</td>
                      <td class="numeric">0.00%</td>
                      <td class="numeric">$0.73</td>
                      <td class="numeric">$0.74</td>
                      <td class="numeric">$0.72</td>
                      <td class="numeric">8,602,291</td>
                    </tr>
                    <tr>
                      <td>AGG</td>
                      <td>ANGLOGOLD ASHANTI LIMITED</td>
                      <td class="numeric">$7.81</td>
                      <td class="numeric">-0.22</td>
                      <td class="numeric">-2.74%</td>
                      <td class="numeric">$7.82</td>
                      <td class="numeric">$7.82</td>
                      <td class="numeric">$7.81</td>
                      <td class="numeric">148</td>
                    </tr>
                    <tr>
                      <td>AGK</td>
                      <td>AGL ENERGY LIMITED</td>
                      <td class="numeric">$13.82</td>
                      <td class="numeric"> +0.02</td>
                      <td class="numeric">0.14%</td>
                      <td class="numeric">$13.83</td>
                      <td class="numeric">$13.83</td>
                      <td class="numeric">$13.67</td>
                      <td class="numeric">846,403</td>
                    </tr>
                    <tr>
                      <td>AGO</td>
                      <td>ATLAS IRON LIMITED</td>
                      <td class="numeric">$3.17</td>
                      <td class="numeric">-0.02</td>
                      <td class="numeric">-0.47%</td>
                      <td class="numeric">$3.11</td>
                      <td class="numeric">$3.22</td>
                      <td class="numeric">$3.10</td>
                      <td class="numeric">5,416,303</td>
                    </tr>
                  </tbody>
                </table>
              </section>
            </div>
            <!-- /content-panel 
          </div>
          <!-- /col-lg-4
        </div>
    -->
      <div class="row mt">
        <div class="col-md-12">
            <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i>BUSCAR PROVEEDOR:
                    <br />
                    <label>Por Cédula:<input type="number" aria-controls="hidden-table-info" /></label>
                    <label>Por Nombre:<input type="text" aria-controls="hidden-table-info" /></label></h4>

                <table class="table table-striped table-advance table-hover">

                    <thead>
                        <tr>
                            <th><i class="fa fa-user"></i>Nombre del proveedor</th>
                            <th class="hidden-phone"><i class="fa fa-search"></i>Cédula</th>
                            <th><i class=" fa fa-calendar"></i>Fecha</th>
                            <!--<th><i class="fa fa-bookmark"></i></th>-->
                            <th><i class="fa fa-star"></i>Acción</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <a href="basic_table.html#">Carlos Alberto Ortiz Losada</a>
                            </td>
                            <td class="hidden-phone">1117552597</td>
                            <td>12-11-2015</td>
                            <!--   <td><span class="label label-info label-mini">Due</span></td>-->
                            <td>
                                     <button class="btn btn-success btn-xs"><i class="fa fa-check"></i></button>
                                <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                                <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="basic_table.html#">Carlos Alberto Ortiz Losada</a>
                            </td>
                            <td class="hidden-phone">1117552597</td>
                            <td>17-01-2015</td>
                            <!--    <td><span class="label label-warning label-mini">Due</span></td>-->
                            <td>
                                   <button class="btn btn-success btn-xs"><i class="fa fa-check"></i></button>
                                <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                                <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="basic_table.html#">Another Co
                                </a>
                            </td>
                            <td class="hidden-phone">Lorem Ipsum dolor</td>
                            <td>14400.00$ </td>
                            <!--     <td><span class="label label-success label-mini">Paid</span></td>-->
                            <td>
                                     <button class="btn btn-success btn-xs"><i class="fa fa-check"></i></button>
                                <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                                <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="basic_table.html#">Dashio ext</a>
                            </td>
                            <td class="hidden-phone">Lorem Ipsum dolor</td>
                            <td>22000.50$ </td>
                            <!--      <td><span class="label label-success label-mini">Paid</span></td>-->
                            <td>
                                     <button class="btn btn-success btn-xs"><i class="fa fa-check"></i></button>
                                <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                                <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="basic_table.html#">Total Ltd</a>
                            </td>
                            <td class="hidden-phone">Lorem Ipsum dolor</td>
                            <td>12120.00$ </td>
                            <!--     <td><span class="label label-warning label-mini">Due</span></td>-->
                            <td>
                                      <button class="btn btn-success btn-xs"><i class="fa fa-check"></i></button>
                                <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                                <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- /content-panel -->
        </div>
        <!-- /col-md-12 -->
    </div>
</asp:Content>
