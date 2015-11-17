using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPFinalWeb3
{
    public partial class Formulario_web16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            PW3_20152C_TP2_MaratonesEntities3 context = new PW3_20152C_TP2_MaratonesEntities3();
            
            //Obtengo codigo de usuario
            Usuario user = GetIdUsuario(context);
            int IdUsuario = user.IdUsuario;
            //------------------------------


            var query = from m in context.Maraton
                        where m.FechaHorarioComienzo >= DateTime.Now
                          && (m.MaxParticipantes + m.ParticipantesEnEspera) >
                                                                            (from rm in context.ResultadoMaratonParticipante
                                                                             where rm.IdMaraton == m.IdMaraton
                                                                             select rm).Count()
                        &&  !(from rm in context.ResultadoMaratonParticipante
                                        where rm.IdUsuario == IdUsuario
                                        select rm.IdMaraton).Contains(m.IdMaraton)

                        select new { m.IdMaraton, m.Nombre, m.LugarSalida, m.FechaHorarioComienzo, estado = ((from rm in context.ResultadoMaratonParticipante
                                                                                                               where rm.IdMaraton == m.IdMaraton
                                                                                                               select rm).Count()) >= m.MaxParticipantes ? "En Espera":"Disponible"
                        };
            String mensaje = "No existen maratones disponibles por el momento";
            if (query.Count() > 0)
            {
                mensaje = "Cantidad de maratones disponibles: " + query.Count();
                GVMaratones.DataSource = query;
                GVMaratones.DataBind();
            }

            hMaraton.InnerText = mensaje;

        }

        void GVMaratones_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Inscribirme")
            {
                // Retrieve the row index stored in the 
                // CommandArgument property.
                int index = Convert.ToInt32(e.CommandArgument);
                
                // Retrieve the row that contains the button 
                // from the Rows collection.
                GridViewRow row = GVMaratones.Rows[index];

                PW3_20152C_TP2_MaratonesEntities3 context = new PW3_20152C_TP2_MaratonesEntities3();

                ResultadoMaratonParticipante resultadoMaraton = new ResultadoMaratonParticipante();
                Usuario user = GetIdUsuario(context);
                int IdUsuario = user.IdUsuario;

                resultadoMaraton.IdMaraton = Int32.Parse(row.Cells[0].Text);
                resultadoMaraton.IdUsuario = IdUsuario;
                resultadoMaraton.NroInscripcion = 123;

                context.ResultadoMaratonParticipante.AddObject(resultadoMaraton);
                context.SaveChanges();

                GVMaratones.DataBind();

            }
            
        }

        public void CustomersGridView_SelectedIndexChanged(Object sender, EventArgs e)
        {
            // Get the currently selected row using the SelectedRow property.
            GridViewRow row = GVMaratones.SelectedRow;

            // Display the first name from the selected row.
            // In this example, the third column (index 2) contains
            // the first name.
            //MessageLabel.Text = "You selected " + row.Cells[2].Text + ".";

            PW3_20152C_TP2_MaratonesEntities3 context = new PW3_20152C_TP2_MaratonesEntities3();

            ResultadoMaratonParticipante resultadoMaraton = new ResultadoMaratonParticipante();
            Usuario user = GetIdUsuario(context);
            int IdUsuario = user.IdUsuario;

            int IdMaraton = 0;
            bool id_maraton = Int32.TryParse(row.Cells[1].Text, out IdMaraton);

            if (id_maraton)
            {
                resultadoMaraton.IdMaraton = IdMaraton;
                resultadoMaraton.IdUsuario = IdUsuario;
                resultadoMaraton.NroInscripcion = 123;
                context.ResultadoMaratonParticipante.AddObject(resultadoMaraton);
                context.SaveChanges();
                
            }
            else
            {
                mensaje.InnerText = "error: " + row.Cells[1].Text;
            }
            
        }

        private Usuario GetIdUsuario(PW3_20152C_TP2_MaratonesEntities3 context)
        {

            int result = 0;
            string[] id = HttpContext.Current.User.Identity.Name.Split('-');
            bool ok = Int32.TryParse(id[0], out result);

            try
            {
                return context.Usuario.Where(r => r.IdUsuario == result).First();
            }
            catch (Exception ex)
            {
                return null;
            }

        }

    }
}