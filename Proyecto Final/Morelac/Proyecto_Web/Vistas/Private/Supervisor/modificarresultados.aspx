<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="modificarresultados.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.modificarresultados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <h3><i class="fa fa-angle-right"></i>MODIFICACIÓN DE RESUTADOS SOBRE LAS PRUEBAS DE CALIDAD DE LA LECHE</h3>
   
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <fieldset>
        <legend style="text-align: center;" class="legend1">
            <br />
            Diligenciar los resultados de las pruebas</legend>

        <div class="col-md-6">
            Temperatura:
                    <input class="Tempreratura" name='tempe' type="number" required>
            °C
            <p></p>
            CARACTERISTICAS LACTOFILTRACIÓN:<br />

            <p></p>
            Peso Especifico:
                    <input class="PesoE" name='pesoE' type="number" required>
            °Q (Grados Quevenne)
            <p></p>

            Acidez Titulable:
                    <input class="Acidez" name='Acidez' type="number" required>
            ml
            <p></p>
            pH:
                    <input class="ph" name='ph' type="number" required>
            mL
            <p></p>

            Prueba del Alcohol:
                    <input class="Pr_Alcohol" name='pralcohol' type="number" required>
            mL
            <p></p>
            <!--</div>-->
            <!--   <div " class="col-lg-6"> -->
            Reducción del Azul de Metileno:
                    <select class="Red_Azul_Metileno" required>
                        <option value="value0" selected>Selecionar</option>
                        <option value="value1">Buena a exelente</option>
                        <option value="value2">Regular a buena</option>
                        <option value="value3">Aceptable</option>
                        <option value="value4">Mala</option>
                    </select>
            <!--Mala: Menos de 2 horas    
                Aceptable: 2 - 6 horas
                Regular a buena: 6 - 8 horas    
                Buena a exelente: más de 8 horas  

                Numero estimado de bacterias por ml 
                Mala: 2 a 10 millones
                Regular a buena: 200.000 a 2.000.000 
                Buena a exelente:   100.000 a 200.000
                -->
            <p></p>

            Tiempo de Reducción de la Resazuina:
                    <select class="Red_Resazuina" required>
                        <option value="value0" selected>Selecionar</option>
                        <option value="value1">Buena a exelente</option>
                        <option value="value2">Regular a buena</option>
                        <option value="value3">Aceptable</option>
                        <option value="value4">Mala</option>
                    </select>
            <p></p>
            Prueba de Féculas:
                    <input class="Pr_feculas" name='textu' type="text" placeholder="Viscosidad de 1,6"
                        required>
            <p></p>

            Prueba de Antibióticos:
                    <input class="Pr_Anti" name='textu' type="text" placeholder="Viscosidad de 1,6"
                        required>
            <p></p>


        </div>

        <div class="col-md-6">
            Agua:
                    <input class="agua" name='textu' type="number" required />
            gr
            <p></p>
            Energía:
                    <input class="agua" name='textu' type="number" required />
            kcal
            <p></p>
            Proteína:
                    <input class="agua" name='textu' type="number" required />
            gr
            <p></p>
            Grasas:
                    <input class="Grasas" name='textu' type="text" placeholder="Viscosidad de 1,6"
                        required />
            gr
            <p></p>
            Lactosa:
                    <input class="agua" name='textu' type="number" required />
            gr
            <p></p>
            Minerales:
                    <input class="agua" name='textu' type="number" required />
            gr
            <p></p>
            Colesterol:
                    <input class="coles" name='textu' type="text" placeholder="Viscosidad de 1,6"
                        required />
            gr
            <p></p>
            <!-- Fecha de prueba:
            <input class="coles" name='textu' type="date" />
      
            <p></p>
             -->
            Fecha de modificación:
          <script>
              var f = new Date();
              document.write(f.getDate() + "/" + (f.getMonth() + 1) + "/" + f.getFullYear());
          </script>
            <p></p>
            <p></p>
            <b>CARACTERISTICAS ORGANOLÉPTICOS:</b>
            <p></p>
            Textura:
                    <input class="Textura" name='textu' type="text" placeholder="Viscosidad de 1,6"
                        required />
            <p></p>

            Color:
                     <select class="Color" required>
                         <option value="value0" selected>Selecionar</option>
                         <option value="value1">Blanco</option>
                         <option value="value2">Blanco Con Tinte Azulado</option>
                         <option value="value3">Gris Amarillento</option>
                         <option value="value4">Rosado</option>
                         <option value="value5">Otros Colores</option>
                     </select>
            <p></p>
            Sabor:
                    <select class="Sabor" required>
                        <option value="value0" selected>Selecionar</option>
                        <option value="value1">Exelente</option>
                        <option value="value2">Buena</option>
                        <option value="value3">Regular</option>
                        <option value="value4">Pobre</option>
                        <option value="value5">Insulubre</option>
                    </select>

            <p></p>

            Olor:
                   <select class="Olor" required>
                       <option value="value0" selected>Selecionar</option>
                       <option value="value1">Caracteristico</option>
                       <option value="value2">Otro</option>
                   </select>
            <br />

        </div>



        <input style="margin: 0% 0% 1% 0%;" class="btn btn-theme02" type="submit" value="Guardar" />
    </fieldset>
</asp:Content>
