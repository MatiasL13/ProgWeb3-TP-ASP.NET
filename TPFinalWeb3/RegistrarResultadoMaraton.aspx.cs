using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPFinalWeb3
{
    public partial class Formulario_web14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                PW3_20152C_TP2_MaratonesEntities3 context = new PW3_20152C_TP2_MaratonesEntities3();

                var qMaraton = (from m in context.Maraton  where m.FechaHorarioComienzo < DateTime.Now
                                    select m);
                DDLMaraton.DataValueField = "IdMaraton";
                DDLMaraton.DataTextField = "Nombre";
                DDLMaraton.DataSource = qMaraton;
                DDLMaraton.DataBind();

                var part = context.Usuario.Select(u => new { IdUsuario = u.IdUsuario, NombreCompleto = u.Nombre + " " + u.Apellido });
                DDLParticipante.DataValueField = "IdUsuario";
                DDLParticipante.DataTextField = "NombreCompleto";
                DDLParticipante.DataSource = part;
                DDLParticipante.DataBind();
            }



        }

        protected void btnRegistrarResultados_Click(object sender, EventArgs e)
        {
            PW3_20152C_TP2_MaratonesEntities3 context = new PW3_20152C_TP2_MaratonesEntities3();
            int numeroDeInscripcion = 0;
            int id_maraton = Int32.Parse(DDLMaraton.SelectedValue);
            int id_usuario = Int32.Parse(DDLParticipante.SelectedValue);
            
            bool estado = bool.Parse(DDLCarreraStatus.SelectedValue);
                          
            try
                {
                    int posicion = Int32.Parse(txtPosicion.Text);
                    var consultaPosicion = (from rm in context.ResultadoMaratonParticipante
                                                                     where rm.IdMaraton == id_maraton && rm.PosicionFinal == posicion
                                                                     select rm).ToList();
               



                    if (consultaPosicion.Count()==0)
                    {
                        ResultadoMaratonParticipante resultadoMaraton = (from rm in context.ResultadoMaratonParticipante
                                                                         where rm.IdMaraton == id_maraton && rm.IdUsuario == id_usuario
                                                                         select rm).First();

                        Maraton maraton = (from m in context.Maraton where m.IdMaraton == id_maraton select m).First();

                        if (resultadoMaraton.NroInscripcion <= maraton.MaxParticipantes)
                        {
                            resultadoMaraton.PosicionFinal = posicion;
                            resultadoMaraton.TiempoLlegada = Int32.Parse(txtTiempo.Text);
                            resultadoMaraton.Finalizo = estado;

                            context.SaveChanges();

                            txtPosicion.Text = "";
                            txtTiempo.Text = "";
                            ErrorMessage.Text = null;
                            SuccessMessage.Visible = true;
                        }
                        else
                        {

                            ErrorMessage.Text = "El participante se encuentra en lista de espera";
                            SuccessMessage.Visible = false;
                        }
                }
                else
                {
                    ErrorMessage.Text = "La posición ya fue ingresada para otro participante";
                    SuccessMessage.Visible = false;
                }
                    
            }
                catch(Exception ex)
                {
                    ErrorMessage.Text = "El Participante seleccionado no corresponde con el maraton";
                    SuccessMessage.Visible = false;
            }




        }

        protected void datosMaraton()
        {

        }
    }
}