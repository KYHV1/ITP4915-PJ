using System.Drawing;
using System.Windows.Forms;

namespace Sunshine
{
    public static class WinFormsStyleHelper
    {
        public static void ApplyButtonStyle(Button btn)
        {
            btn.BackColor = Color.FromArgb(0, 120, 215);
            btn.ForeColor = Color.White;
            btn.FlatStyle = FlatStyle.Flat;
            btn.FlatAppearance.BorderColor = Color.FromArgb(0, 90, 180);
            btn.FlatAppearance.BorderSize = 1;
            btn.Font = new Font("Segoe UI", 10F, FontStyle.Bold);
        }

        public static void ApplyLabelStyle(Label lbl)
        {
            lbl.Font = new Font("Segoe UI", 10F, FontStyle.Bold);
            lbl.ForeColor = Color.FromArgb(70, 70, 70);
            lbl.BackColor = Color.Transparent;
        }

        public static void ApplyTextBoxStyle(TextBox txt)
        {
            txt.Font = new Font("Segoe UI", 10F);
            txt.BackColor = Color.FromArgb(245, 245, 245);
            txt.ForeColor = Color.Black;
            txt.BorderStyle = BorderStyle.FixedSingle;
        }

        public static void ApplyDataGridViewStyle(DataGridView dgv)
        {
            dgv.BackgroundColor = Color.White;
            dgv.GridColor = Color.LightGray;
            dgv.DefaultCellStyle.Font = new Font("Segoe UI", 10F);
            dgv.DefaultCellStyle.BackColor = Color.White;
            dgv.DefaultCellStyle.ForeColor = Color.Black;
            dgv.ColumnHeadersDefaultCellStyle.Font = new Font("Segoe UI", 10F, FontStyle.Bold);
            dgv.ColumnHeadersDefaultCellStyle.BackColor = Color.FromArgb(240, 240, 240);
        }
    }
}