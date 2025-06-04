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
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
            InitializeMyControl();
        }
        private void InitializeMyControl()
        {
            // Set to no text.
            txtPwd.Text = "";
            // The password character is an asterisk.
            txtPwd.PasswordChar = '*';
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            bool login_flag = false;
            if (!txtEmpID.Text.Trim().Equals(""))
            {
                string empid = txtEmpID.Text;
                string password = txtPwd.Text;

                //Checking data in database
                using (var classicContext = new sunshinedbEntities())
                {
                    var emp = (from list in classicContext.employee
                               where list.employeeID == empid
                               select list);    // select * from employees where empid match

                    foreach (var emp2 in emp.ToList())
                    {
                        if (emp2.employeeID == empid && emp2.password.Equals(password))
                        {

                            login_flag = true;
                            break;
                        }
                    }
                }
            }
            //Display result
            if (login_flag) 
            {
                this.Hide();
                Form1 form = new Form1();
                form.Show(); 
            }   
            else
                MessageBox.Show("Login failed");

        }

        private void Login_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                btnLogin.PerformClick();
        }

        private void Login_KeyUp(object sender, KeyEventArgs e)
        {

        }
    }
}
