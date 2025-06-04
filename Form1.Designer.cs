
namespace Sunshine
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.txtSearch = new System.Windows.Forms.TextBox();
            this.btnLogout = new System.Windows.Forms.Button();
            this.addRecord = new System.Windows.Forms.Button();
            this.bthDelete = new System.Windows.Forms.Button();
            this.bthEdit = new System.Windows.Forms.Button();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Cloumm4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.button1 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column2,
            this.Column3,
            this.Cloumm4});
            this.dataGridView1.Location = new System.Drawing.Point(309, 63);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 62;
            this.dataGridView1.RowTemplate.Height = 31;
            this.dataGridView1.Size = new System.Drawing.Size(860, 424);
            this.dataGridView1.TabIndex = 0;
            this.dataGridView1.SelectionChanged += new System.EventHandler(this.dataGridView1_SelectionChanged);
            this.dataGridView1.MouseDoubleClick += new System.Windows.Forms.MouseEventHandler(this.dataGridView1_MouseDoubleClick);
            // 
            // txtSearch
            // 
            this.txtSearch.Location = new System.Drawing.Point(267, 24);
            this.txtSearch.Name = "txtSearch";
            this.txtSearch.Size = new System.Drawing.Size(182, 29);
            this.txtSearch.TabIndex = 1;
            this.txtSearch.TextChanged += new System.EventHandler(this.txtSearch_TextChanged);
            // 
            // btnLogout
            // 
            this.btnLogout.Location = new System.Drawing.Point(56, 532);
            this.btnLogout.Name = "btnLogout";
            this.btnLogout.Size = new System.Drawing.Size(92, 46);
            this.btnLogout.TabIndex = 2;
            this.btnLogout.Text = "Logout";
            this.btnLogout.UseVisualStyleBackColor = true;
            this.btnLogout.Click += new System.EventHandler(this.btnLogout_Click);
            // 
            // addRecord
            // 
            this.addRecord.Location = new System.Drawing.Point(992, 581);
            this.addRecord.Name = "addRecord";
            this.addRecord.Size = new System.Drawing.Size(118, 40);
            this.addRecord.TabIndex = 3;
            this.addRecord.Text = "Add Record";
            this.addRecord.UseVisualStyleBackColor = true;
            this.addRecord.Click += new System.EventHandler(this.button1_Click);
            // 
            // bthDelete
            // 
            this.bthDelete.Location = new System.Drawing.Point(696, 581);
            this.bthDelete.Margin = new System.Windows.Forms.Padding(4);
            this.bthDelete.Name = "bthDelete";
            this.bthDelete.Size = new System.Drawing.Size(112, 34);
            this.bthDelete.TabIndex = 4;
            this.bthDelete.Text = "Delete";
            this.bthDelete.UseVisualStyleBackColor = true;
            this.bthDelete.Click += new System.EventHandler(this.bthDelete_Click);
            // 
            // bthEdit
            // 
            this.bthEdit.ForeColor = System.Drawing.SystemColors.ControlText;
            this.bthEdit.Location = new System.Drawing.Point(389, 556);
            this.bthEdit.Name = "bthEdit";
            this.bthEdit.Size = new System.Drawing.Size(102, 49);
            this.bthEdit.TabIndex = 5;
            this.bthEdit.Text = "Edit";
            this.bthEdit.UseVisualStyleBackColor = true;
            this.bthEdit.Click += new System.EventHandler(this.bthEdit_Click_1);
            // 
            // Column1
            // 
            this.Column1.HeaderText = "PrductID";
            this.Column1.MinimumWidth = 8;
            this.Column1.Name = "Column1";
            this.Column1.Width = 150;
            // 
            // Column2
            // 
            this.Column2.HeaderText = "ProductName";
            this.Column2.MinimumWidth = 8;
            this.Column2.Name = "Column2";
            this.Column2.Width = 150;
            // 
            // Column3
            // 
            this.Column3.HeaderText = "Description";
            this.Column3.MinimumWidth = 8;
            this.Column3.Name = "Column3";
            this.Column3.Width = 150;
            // 
            // Cloumm4
            // 
            this.Cloumm4.HeaderText = "Price";
            this.Cloumm4.MinimumWidth = 8;
            this.Cloumm4.Name = "Cloumm4";
            this.Cloumm4.Width = 150;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(992, 519);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 6;
            this.button1.Text = "button1";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 18F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1274, 664);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.bthEdit);
            this.Controls.Add(this.bthDelete);
            this.Controls.Add(this.addRecord);
            this.Controls.Add(this.btnLogout);
            this.Controls.Add(this.txtSearch);
            this.Controls.Add(this.dataGridView1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.TextBox txtSearch;
        private System.Windows.Forms.Button btnLogout;
        private System.Windows.Forms.Button addRecord;
        private System.Windows.Forms.Button bthDelete;
        private System.Windows.Forms.Button bthEdit;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Cloumm4;
        private System.Windows.Forms.Button button1;
    }
}