namespace sunshine.DispatchProcessing
{
    partial class DeliveryNoteForm
    {
        private System.ComponentModel.IContainer components = null;
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        private void InitializeComponent()
        {
            this.lblOrderID = new System.Windows.Forms.Label();
            this.txtOrderID = new System.Windows.Forms.TextBox();
            this.lblCreatedBy = new System.Windows.Forms.Label();
            this.txtCreatedBy = new System.Windows.Forms.TextBox();
            this.btnGenerate = new System.Windows.Forms.Button();
            this.dgvDeliveryNotes = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDeliveryNotes)).BeginInit();
            this.SuspendLayout();
            // 
            // lblOrderID
            // 
            this.lblOrderID.AutoSize = true;
            this.lblOrderID.Location = new System.Drawing.Point(30, 30);
            this.lblOrderID.Name = "lblOrderID";
            this.lblOrderID.Size = new System.Drawing.Size(57, 13);
            this.lblOrderID.TabIndex = 0;
            this.lblOrderID.Text = "Order ID:";
            // 
            // txtOrderID
            // 
            this.txtOrderID.Location = new System.Drawing.Point(120, 27);
            this.txtOrderID.Name = "txtOrderID";
            this.txtOrderID.Size = new System.Drawing.Size(180, 20);
            this.txtOrderID.TabIndex = 1;
            // 
            // lblCreatedBy
            // 
            this.lblCreatedBy.AutoSize = true;
            this.lblCreatedBy.Location = new System.Drawing.Point(30, 70);
            this.lblCreatedBy.Name = "lblCreatedBy";
            this.lblCreatedBy.Size = new System.Drawing.Size(65, 13);
            this.lblCreatedBy.TabIndex = 2;
            this.lblCreatedBy.Text = "Created By:";
            // 
            // txtCreatedBy
            // 
            this.txtCreatedBy.Location = new System.Drawing.Point(120, 67);
            this.txtCreatedBy.Name = "txtCreatedBy";
            this.txtCreatedBy.Size = new System.Drawing.Size(180, 20);
            this.txtCreatedBy.TabIndex = 3;
            // 
            // btnGenerate
            // 
            this.btnGenerate.Location = new System.Drawing.Point(120, 110);
            this.btnGenerate.Name = "btnGenerate";
            this.btnGenerate.Size = new System.Drawing.Size(120, 30);
            this.btnGenerate.TabIndex = 4;
            this.btnGenerate.Text = "Generate Delivery Note";
            this.btnGenerate.UseVisualStyleBackColor = true;
            this.btnGenerate.Click += new System.EventHandler(this.btnGenerate_Click);
            // 
            // dgvDeliveryNotes
            // 
            this.dgvDeliveryNotes.AllowUserToAddRows = false;
            this.dgvDeliveryNotes.AllowUserToDeleteRows = false;
            this.dgvDeliveryNotes.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvDeliveryNotes.Location = new System.Drawing.Point(30, 160);
            this.dgvDeliveryNotes.Name = "dgvDeliveryNotes";
            this.dgvDeliveryNotes.ReadOnly = true;
            this.dgvDeliveryNotes.Size = new System.Drawing.Size(420, 200);
            this.dgvDeliveryNotes.TabIndex = 5;
            // 
            // DeliveryNoteForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(500, 380);
            this.Controls.Add(this.dgvDeliveryNotes);
            this.Controls.Add(this.btnGenerate);
            this.Controls.Add(this.txtCreatedBy);
            this.Controls.Add(this.lblCreatedBy);
            this.Controls.Add(this.txtOrderID);
            this.Controls.Add(this.lblOrderID);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "DeliveryNoteForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Generate Delivery Note";
            ((System.ComponentModel.ISupportInitialize)(this.dgvDeliveryNotes)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();
        }

        #endregion

        private System.Windows.Forms.Label lblOrderID;
        public System.Windows.Forms.TextBox txtOrderID;
        private System.Windows.Forms.Label lblCreatedBy;
        public System.Windows.Forms.TextBox txtCreatedBy;
        private System.Windows.Forms.Button btnGenerate;
        private System.Windows.Forms.DataGridView dgvDeliveryNotes;
    }
}