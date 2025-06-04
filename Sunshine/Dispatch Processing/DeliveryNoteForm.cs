using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace sunshine.DispatchProcessing
{
    public partial class DeliveryNoteForm : Form
    {
        public DeliveryNoteForm()
        {
            InitializeComponent();
        }

        private void btnGenerate_Click(object sender, EventArgs e)
        {
            string noteID = Guid.NewGuid().ToString().Substring(0, 8);
            string orderID = txtOrderID.Text.Trim();
            string createdBy = txtCreatedBy.Text.Trim();

            string sql = "INSERT INTO delivery_note (noteID, orderID, createdBy) VALUES (@noteID, @orderID, @createdBy)";

            using (MySqlConnection conn = DatabaseHelper.GetConnection())
            {
                conn.Open();
                using (MySqlCommand cmd = new MySqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@noteID", noteID);
                    cmd.Parameters.AddWithValue("@orderID", orderID);
                    cmd.Parameters.AddWithValue("@createdBy", createdBy);
                    cmd.ExecuteNonQuery();
                }
                MessageBox.Show("Delivery Note Created!");
            }
        }
    }
}