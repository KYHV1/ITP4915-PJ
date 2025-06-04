namespace sunshine
{
    partial class MainForm
    {
        private System.ComponentModel.IContainer components = null;

        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null)) components.Dispose();
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        private void InitializeComponent()
        {
            this.panelSidebar = new System.Windows.Forms.Panel();
            this.btnLogout = new System.Windows.Forms.Button();
            this.btnInwardGoods = new System.Windows.Forms.Button();
            this.btnDeliveryNote = new System.Windows.Forms.Button();
            this.panelSeparator = new System.Windows.Forms.Panel();
            this.pictureBoxIcon = new System.Windows.Forms.PictureBox();
            this.panelContent = new System.Windows.Forms.Panel();
            this.panelSidebar.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxIcon)).BeginInit();
            this.SuspendLayout();
            // 
            // panelSidebar
            // 
            this.panelSidebar.BackColor = System.Drawing.Color.FromArgb(30, 30, 45);
            this.panelSidebar.Controls.Add(this.btnLogout);
            this.panelSidebar.Controls.Add(this.btnInwardGoods);
            this.panelSidebar.Controls.Add(this.btnDeliveryNote);
            this.panelSidebar.Controls.Add(this.panelSeparator);
            this.panelSidebar.Controls.Add(this.pictureBoxIcon);
            this.panelSidebar.Dock = System.Windows.Forms.DockStyle.Left;
            this.panelSidebar.Location = new System.Drawing.Point(0, 0);
            this.panelSidebar.Name = "panelSidebar";
            this.panelSidebar.Size = new System.Drawing.Size(160, 500);
            this.panelSidebar.TabIndex = 0;
            // 
            // pictureBoxIcon
            // 
            this.pictureBoxIcon.Image = Properties.Resources.sunshine_icon; // Replace with your icon resource
            this.pictureBoxIcon.Location = new System.Drawing.Point(40, 20);
            this.pictureBoxIcon.Size = new System.Drawing.Size(80, 80);
            this.pictureBoxIcon.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBoxIcon.TabIndex = 0;
            this.pictureBoxIcon.TabStop = false;
            // 
            // panelSeparator
            // 
            this.panelSeparator.BackColor = System.Drawing.Color.Gray;
            this.panelSeparator.Location = new System.Drawing.Point(15, 110);
            this.panelSeparator.Name = "panelSeparator";
            this.panelSeparator.Size = new System.Drawing.Size(130, 2);
            this.panelSeparator.TabIndex = 1;
            // 
            // btnDeliveryNote
            // 
            this.btnDeliveryNote.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnDeliveryNote.ForeColor = System.Drawing.Color.White;
            this.btnDeliveryNote.BackColor = System.Drawing.Color.Transparent;
            this.btnDeliveryNote.Location = new System.Drawing.Point(15, 130);
            this.btnDeliveryNote.Name = "btnDeliveryNote";
            this.btnDeliveryNote.Size = new System.Drawing.Size(130, 40);
            this.btnDeliveryNote.TabIndex = 2;
            this.btnDeliveryNote.Text = "Delivery Note";
            this.btnDeliveryNote.UseVisualStyleBackColor = false;
            this.btnDeliveryNote.Click += new System.EventHandler(this.btnDeliveryNote_Click);
            // 
            // btnInwardGoods
            // 
            this.btnInwardGoods.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnInwardGoods.ForeColor = System.Drawing.Color.White;
            this.btnInwardGoods.BackColor = System.Drawing.Color.Transparent;
            this.btnInwardGoods.Location = new System.Drawing.Point(15, 180);
            this.btnInwardGoods.Name = "btnInwardGoods";
            this.btnInwardGoods.Size = new System.Drawing.Size(130, 40);
            this.btnInwardGoods.TabIndex = 3;
            this.btnInwardGoods.Text = "Inward Goods";
            this.btnInwardGoods.UseVisualStyleBackColor = false;
            this.btnInwardGoods.Click += new System.EventHandler(this.btnInwardGoods_Click);
            // 
            // btnLogout
            // 
            this.btnLogout.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnLogout.ForeColor = System.Drawing.Color.White;
            this.btnLogout.BackColor = System.Drawing.Color.Transparent;
            this.btnLogout.Location = new System.Drawing.Point(15, 440);
            this.btnLogout.Name = "btnLogout";
            this.btnLogout.Size = new System.Drawing.Size(130, 40);
            this.btnLogout.TabIndex = 4;
            this.btnLogout.Text = "Logout";
            this.btnLogout.UseVisualStyleBackColor = false;
            this.btnLogout.Click += new System.EventHandler(this.btnLogout_Click);
            // 
            // panelContent
            // 
            this.panelContent.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelContent.Location = new System.Drawing.Point(160, 0);
            this.panelContent.Name = "panelContent";
            this.panelContent.Size = new System.Drawing.Size(640, 500);
            this.panelContent.TabIndex = 1;
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 500);
            this.Controls.Add(this.panelContent);
            this.Controls.Add(this.panelSidebar);
            this.Name = "MainForm";
            this.Text = "Sunshine Dispatch Processing";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.panelSidebar.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxIcon)).EndInit();
            this.ResumeLayout(false);

        }
        #endregion

        private System.Windows.Forms.Panel panelSidebar;
        private System.Windows.Forms.PictureBox pictureBoxIcon;
        private System.Windows.Forms.Panel panelSeparator;
        private System.Windows.Forms.Button btnDeliveryNote;
        private System.Windows.Forms.Button btnInwardGoods;
        private System.Windows.Forms.Button btnLogout;
        private System.Windows.Forms.Panel panelContent;
    }
}