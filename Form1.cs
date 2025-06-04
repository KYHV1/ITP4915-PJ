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
    public partial class Form1 : Form
    {
        private static string productID;
        public Form1()
        {
            InitializeComponent();
        }
        private void loadData()
        {
            using (var classicContext = new sunshinedbEntities())
            {
                var emp = from list in classicContext.product
                          select list;


                foreach (var emp2 in emp.ToList())
                {
                    dataGridView1.Rows.Add(emp2.productID, emp2.productName, emp2.description, emp2.price);
                }
            }
        }


        private void Form1_Load(object sender, EventArgs e)
        {
            loadData();
        }

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            using (var classContext = new sunshinedbEntities())
            { //keyword search
                dataGridView1.Rows.Clear();
                string keyword = txtSearch.Text;
                var resultSet = from list in classContext.product
                                where list.productName.Contains(keyword)
                                select list;


                foreach (var emp2 in resultSet.ToList())
                {
                    dataGridView1.Rows.Add(emp2.productID, emp2.productName, emp2.description, emp2.price);
                }
            }

        }

        private void btnLogout_Click(object sender, EventArgs e)
        {
            this.Hide();
            Login form = new Login();
            form.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            Form2 form = new Form2();
            form.Show();
        }


        private void dataGridView1_MouseDoubleClick(object sender, MouseEventArgs e)
        {

        }

        private void bthDelete_Click(object sender, EventArgs e)
        {
            Int32 selectedCellCount =
                dataGridView1.GetCellCount(DataGridViewElementStates.Selected);
            string a = "";
            if (selectedCellCount > 0)
            {
                if (dataGridView1.AreAllCellsSelected(true))
                {
                    MessageBox.Show("All cells are selected", "Selected Cells");
                }
                else
                {
                    System.Text.StringBuilder sb =
                        new System.Text.StringBuilder();

                    for (int i = 0;
                        i < selectedCellCount; i++)
                    {
                        sb.Append("Row: ");
                        sb.Append(dataGridView1.SelectedCells[i].Value
                            .ToString());
                        sb.Append(", Column: ");
                        sb.Append(dataGridView1.SelectedCells[i].Value
                            .ToString());
                        a = dataGridView1.SelectedCells[i].Value.ToString();
                        sb.Append(Environment.NewLine);
                    }

                    sb.Append("Total: " + selectedCellCount.ToString());
                    //MessageBox.Show(sb.ToString(), "Selected Cells");
                    using (var classContext = new sunshinedbEntities())
                    {
                        string keyword = a;
                        var remove = (from list in classContext.product
                                      where list.productName == keyword
                                      select list).FirstOrDefault();

                        if (remove != null)
                        {
                            classContext.product.Remove(remove);
                            classContext.SaveChanges();
                            MessageBox.Show("Product " + keyword + " has been deleted");
                            dataGridView1.Rows.Clear();
                            loadData();
                        }
                    }
                }
            }
        }


        private void bthEdit_Click_1(object sender, EventArgs e)
        {
            this.Hide();
            Form3 form = new Form3();
            form.Show();
        }

        private void dataGridView1_SelectionChanged(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedCells.Count > 0)
            {
                int selectedrowindex = dataGridView1.SelectedCells[0].RowIndex;

                DataGridViewRow selectedRow = dataGridView1.Rows[selectedrowindex];

                //guessing you´re storing your value in a variable
                productID = Convert.ToString(selectedRow.Cells["Column1"].Value);
                //where columnName is the name of the column you want the value printed of...     
            }
        }
    }
}
