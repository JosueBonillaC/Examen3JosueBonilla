using System;
using System.Data.SqlClient;

namespace Examen3JosueBonilla
{
    public partial class LlenarEncuesta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            // Lógica para agregar encuesta a la base de datos
            // Utiliza los valores de los controles y llama al procedimiento almacenado InsertarEncuesta
            string nombre = txtNombre.Text;
            int edad = Convert.ToInt32(txtEdad.Text);
            string correo = txtCorreo.Text;
            string partidoPolitico = ddlPartidoPolitico.SelectedValue;

            // Llama al procedimiento almacenado InsertarEncuesta
            InsertarEncuesta(nombre, edad, correo, partidoPolitico);

            // Puedes limpiar los controles después de agregar
            LimpiarControles();
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            // Lógica para guardar encuesta en la base de datos
            // Utiliza los valores de los controles y llama al procedimiento almacenado InsertarEncuesta
            string nombre = txtNombre.Text;
            int edad = Convert.ToInt32(txtEdad.Text);
            string correo = txtCorreo.Text;
            string partidoPolitico = ddlPartidoPolitico.SelectedValue;

            // Llama al procedimiento almacenado InsertarEncuesta
            InsertarEncuesta(nombre, edad, correo, partidoPolitico);

            // Puedes limpiar los controles después de guardar
            LimpiarControles();
        }

        private void InsertarEncuesta(string nombre, int edad, string correo, string partidoPolitico)
        {
            using (SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["EncuestasDBConnectionString"].ToString()))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("InsertarEncuesta", conn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Nombre", nombre);
                    cmd.Parameters.AddWithValue("@Edad", edad);
                    cmd.Parameters.AddWithValue("@Correo", correo);
                    cmd.Parameters.AddWithValue("@PartidoPolitico", partidoPolitico);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        private void LimpiarControles()
        {
            txtNombre.Text = string.Empty;
            txtEdad.Text = string.Empty;
            txtCorreo.Text = string.Empty;
            ddlPartidoPolitico.SelectedIndex = 0;
        }

        protected void ddlPartidoPolitico_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
