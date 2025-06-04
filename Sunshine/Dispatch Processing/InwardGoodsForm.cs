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
    public partial class InwardGoodsForm : Form
    {
        public InwardGoodsForm()
        {
            InitializeComponent();
        }
        private void InwardGoodsForm_Load(object sender, EventArgs e)
        {
            // You can put your ComboBox population code here later.
        }

        private void btnRecord_Click(object sender, EventArgs e)
        {
            string recordID = Guid.NewGuid().ToString().Substring(0, 8);
            string productID = cboProduct.SelectedValue.ToString();
            int quantity = (int)numQuantity.Value;
            string supplierID = cboSupplier.SelectedValue.ToString();
            string receivedBy = txtReceivedBy.Text.Trim();

            string sql = "INSERT INTO inward_goods (recordID, productID, quantity, supplierID, receivedBy) VALUES (@recordID, @productID, @quantity, @supplierID, @receivedBy)";

            using (MySqlConnection conn = DatabaseHelper.GetConnection())
            {
                conn.Open();
                using (MySqlCommand cmd = new MySqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@recordID", recordID);
                    cmd.Parameters.AddWithValue("@productID", productID);
                    cmd.Parameters.AddWithValue("@quantity", quantity);
                    cmd.Parameters.AddWithValue("@supplierID", supplierID);
                    cmd.Parameters.AddWithValue("@receivedBy", receivedBy);
                    cmd.ExecuteNonQuery();
                }
                MessageBox.Show("Goods Received Recorded!");
            }
        }
    }
}
