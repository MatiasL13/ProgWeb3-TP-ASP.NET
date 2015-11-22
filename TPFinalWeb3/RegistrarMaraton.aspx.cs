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
            this.GVMaratones_load();
        }

        private void GVMaratones_load()
        {
            int i = 0;
            PW3_20152C_TP2_MaratonesEntities3 context = new PW3_20152C_TP2_MaratonesEntities3();

            //Obtengo codigo de usuario
            Usuario user = GetIdUsuario(context);
            int IdUsuario = user.IdUsuario;
            //------------------------------

            //Query Maratones disponibles para inscripcion. Verifica fecha de inscripcion, solo muestra en caso de haber disponibilidad y ademas verifica si el que el usuario logueado no este previamente inscripto
            var query = from m in context.Maraton
                        where m.FechaHorarioComienzo >= DateTime.Now
                          && (m.MaxParticipantes + m.ParticipantesEnEspera) >
                                                                            (from rm in context.ResultadoMaratonParticipante
                                                                             where rm.IdMaraton == m.IdMaraton
                                                                             select rm).Count()
                        //&& !(from rm in context.ResultadoMaratonParticipante
                        //     where rm.IdUsuario == IdUsuario
                        //     select rm.IdMaraton).Contains(m.IdMaraton)

                        select new
                        {
                            m.IdMaraton,
                            m.Nombre,
                            m.LugarSalida,
                            m.FechaHorarioComienzo,
                            estado = (from rm in context.ResultadoMaratonParticipante
                                      where rm.IdMaraton == m.IdMaraton
                                      select rm.IdUsuario).Contains(IdUsuario) ? "Inscripto" :
                                      (((from rm in context.ResultadoMaratonParticipante
                                       where rm.IdMaraton == m.IdMaraton
                                       select rm).Count()) >= m.MaxParticipantes ? "En Espera" :  "Disponible")
                        };
            String mensaje = "No existen maratones disponibles por el momento";
            if (query.Count() > 0)
            {
                mensaje = "Cantidad de maratones disponibles: " + query.Count();
                GVMaratones.DataSource = query;
                GVMaratones.DataBind();
             //   Convert.ToInt32(((HiddenField)e.Row.FindControl("hfReversas")).Value);
            //  GVMaratones
                foreach (var datos in query)
                  {
                    
                      if (datos.estado == "Inscripto")
                      {
                          GVMaratones.Rows[i].Enabled = false;
                          GVMaratones.Rows[i].Cells[0].Text = "";
                      }
                      i++;
                  }
            }
            
        }

        public void CustomersGridView_SelectedIndexChanged(Object sender, EventArgs e)
        {
           
            GridViewRow row = GVMaratones.SelectedRow;
           // row.FindControl("inscipto").va
          //  if(row.Row.Cells[iEstado].Text = GetLocalResourceObject("CONCILIADO").ToString();)
            PW3_20152C_TP2_MaratonesEntities3 context = new PW3_20152C_TP2_MaratonesEntities3();

            ResultadoMaratonParticipante resultadoMaraton = new ResultadoMaratonParticipante();
            Usuario user = GetIdUsuario(context);

            int IdUsuario = user.IdUsuario;

            int IdMaraton = 0;
            bool id_maraton = Int32.TryParse(row.Cells[1].Text, out IdMaraton);

            //Query consulta cantidad total de inscripciones
            var qc = (from rm in context.ResultadoMaratonParticipante
                      select rm).ToList();

            int cantidad = qc.Count();
            cantidad++; //Incrementa cantidad de inscripciones en 1
        

            if (id_maraton)
            {
                resultadoMaraton.IdMaraton = IdMaraton;
                resultadoMaraton.IdUsuario = IdUsuario;
                resultadoMaraton.NroInscripcion = cantidad;
                context.ResultadoMaratonParticipante.AddObject(resultadoMaraton);
                context.SaveChanges();

            }

            this.GVMaratones_load(); //Recarga GridView

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