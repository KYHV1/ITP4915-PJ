using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using sunshine.DispatchProcessing;

namespace sunshine
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
        }

        private Form activeForm = null;

        private void OpenChildForm(Form childForm)
        {
            // Close previous form
            if (activeForm != null)
                activeForm.Close();
            activeForm = childForm;
            childForm.TopLevel = false;
            childForm.FormBorderStyle = FormBorderStyle.None;
            childForm.Dock = DockStyle.Fill;
            panelContent.Controls.Clear();
            panelContent.Controls.Add(childForm);
            panelContent.Tag = childForm;
            childForm.BringToFront();
            childForm.Show();
        }

        private void btnDeliveryNote_Click(object sender, EventArgs e)
        {
            OpenChildForm(new DeliveryNoteForm());
        }

        private void btnInwardGoods_Click(object sender, EventArgs e)
        {
            OpenChildForm(new InwardGoodsForm());
        }

        private void btnLogout_Click(object sender, EventArgs e)
        {
            // Optional: Confirm logout
            if (MessageBox.Show("Are you sure you want to logout?", "Logout", MessageBoxButtons.YesNo) == DialogResult.Yes)
            {
                this.Hide();
                // Show login form again (assuming Login is your login form)
                Login login = new Login();
                login.Show();
            }
        }
    }
}