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
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private bool CheckValidEmpNum(string product)
        {
            bool result = false;
            using (var classicContext = new sunshinedbEntities())
            {
                var emp = (from list in classicContext.product
                           select list);

                foreach (var emp2 in emp.ToList())
                {
                    if (emp2.productID == product)
                    {
                        result = true;
                        break;
                    }
                }
            }
            return result;
        }

        private void InsertRecord()
        {
            int rowsAffected = 0;
            using (var classicContext = new sunshinedbEntities())
            {
                var product2 = new product();
                var emp = (from list in classicContext.product
                           select list);
                {
                    product2.productID = txtProductID.Text;
                    product2.productName = txtProductName.Text;
                    product2.description = txtDescription.Text;
                    product2.price = decimal.Parse(txtPrice.Text);
                };
                classicContext.product.Add(product2);

                try
                {
                    rowsAffected = classicContext.SaveChanges();

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }

            }
            MessageBox.Show(rowsAffected + " row(s) affected");
        }

        private void bthAdd_Click(object sender, EventArgs e)
        {
            if (!CheckValidEmpNum(txtProductID.Text))
            {
                InsertRecord();
            }
            else
                MessageBox.Show(txtProductID.Text + " is duplicated.");

        }

        private void btnViewRecord_Click(object sender, EventArgs e)
        {
            this.Hide();
            Form1 form = new Form1();
            form.Show();
        }
    }
}

