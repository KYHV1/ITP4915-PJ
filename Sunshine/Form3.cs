using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Sunshine
{
    public partial class Form3 : Form
    {
        public Form3()
        {
            InitializeComponent();
        }

        private void bthChange_Click(object sender, EventArgs e)
        {
            int rowsAffected = 0;
            using (var sb = new sunshinedbEntities())
            {
                var products = (from list in sb.product
                           where list.productID == txtProductID.Text
                           select list).First();

                products.productName = txtProductName.Text;
                products.description = txtDescription.Text;
                products.price = decimal.Parse(txtPrice.Text);
                try
                {
                    rowsAffected = sb.SaveChanges();

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }

        private void btnViewRecord_Click(object sender, EventArgs e)
        {
            this.Hide();
            Form1 form = new Form1();
            form.Show();
        }
    }
}

