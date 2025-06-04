namespace sunshine.DispatchProcessing
{
    partial class InwardGoodsForm
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
            this.lblProduct = new System.Windows.Forms.Label();
            this.cboProduct = new System.Windows.Forms.ComboBox();
            this.lblQuantity = new System.Windows.Forms.Label();
            this.numQuantity = new System.Windows.Forms.NumericUpDown();
            this.lblSupplier = new System.Windows.Forms.Label();
            this.cboSupplier = new System.Windows.Forms.ComboBox();
            this.lblReceivedBy = new System.Windows.Forms.Label();
            this.txtReceivedBy = new System.Windows.Forms.TextBox();
            this.btnRecord = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.numQuantity)).BeginInit();
            this.SuspendLayout();
            // 
            // lblProduct
            // 
            this.lblProduct.AutoSize = true;
            this.lblProduct.Location = new System.Drawing.Point(30, 30);
            this.lblProduct.Name = "lblProduct";
            this.lblProduct.Size = new System.Drawing.Size(47, 13);
            this.lblProduct.TabIndex = 0;
            this.lblProduct.Text = "Product:";
            // 
            // cboProduct
            // 
            this.cboProduct.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboProduct.FormattingEnabled = true;
            this.cboProduct.Location = new System.Drawing.Point(120, 27);
            this.cboProduct.Name = "cboProduct";
            this.cboProduct.Size = new System.Drawing.Size(180, 21);
            this.cboProduct.TabIndex = 1;
            // 
            // lblQuantity
            // 
            this.lblQuantity.AutoSize = true;
            this.lblQuantity.Location = new System.Drawing.Point(30, 70);
            this.lblQuantity.Name = "lblQuantity";
            this.lblQuantity.Size = new System.Drawing.Size(49, 13);
            this.lblQuantity.TabIndex = 2;
            this.lblQuantity.Text = "Quantity:";
            // 
            // numQuantity
            // 
            this.numQuantity.Location = new System.Drawing.Point(120, 67);
            this.numQuantity.Maximum = new decimal(new int[] {
            10000,
            0,
            0,
            0});
            this.numQuantity.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.numQuantity.Name = "numQuantity";
            this.numQuantity.Size = new System.Drawing.Size(180, 20);
            this.numQuantity.TabIndex = 3;
            this.numQuantity.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
            // 
            // lblSupplier
            // 
            this.lblSupplier.AutoSize = true;
            this.lblSupplier.Location = new System.Drawing.Point(30, 110);
            this.lblSupplier.Name = "lblSupplier";
            this.lblSupplier.Size = new System.Drawing.Size(51, 13);
            this.lblSupplier.TabIndex = 4;
            this.lblSupplier.Text = "Supplier:";
            // 
            // cboSupplier
            // 
            this.cboSupplier.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboSupplier.FormattingEnabled = true;
            this.cboSupplier.Location = new System.Drawing.Point(120, 107);
            this.cboSupplier.Name = "cboSupplier";
            this.cboSupplier.Size = new System.Drawing.Size(180, 21);
            this.cboSupplier.TabIndex = 5;
            // 
            // lblReceivedBy
            // 
            this.lblReceivedBy.AutoSize = true;
            this.lblReceivedBy.Location = new System.Drawing.Point(30, 150);
            this.lblReceivedBy.Name = "lblReceivedBy";
            this.lblReceivedBy.Size = new System.Drawing.Size(73, 13);
            this.lblReceivedBy.TabIndex = 6;
            this.lblReceivedBy.Text = "Received By:";
            // 
            // txtReceivedBy
            // 
            this.txtReceivedBy.Location = new System.Drawing.Point(120, 147);
            this.txtReceivedBy.Name = "txtReceivedBy";
            this.txtReceivedBy.Size = new System.Drawing.Size(180, 20);
            this.txtReceivedBy.TabIndex = 7;
            // 
            // btnRecord
            // 
            this.btnRecord.Location = new System.Drawing.Point(120, 190);
            this.btnRecord.Name = "btnRecord";
            this.btnRecord.Size = new System.Drawing.Size(120, 30);
            this.btnRecord.TabIndex = 8;
            this.btnRecord.Text = "Record Goods Received";
            this.btnRecord.UseVisualStyleBackColor = true;
            this.btnRecord.Click += new System.EventHandler(this.btnRecord_Click);
            // 
            // InwardGoodsForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(340, 250);
            this.Controls.Add(this.btnRecord);
            this.Controls.Add(this.txtReceivedBy);
            this.Controls.Add(this.lblReceivedBy);
            this.Controls.Add(this.cboSupplier);
            this.Controls.Add(this.lblSupplier);
            this.Controls.Add(this.numQuantity);
            this.Controls.Add(this.lblQuantity);
            this.Controls.Add(this.cboProduct);
            this.Controls.Add(this.lblProduct);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "InwardGoodsForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Record Goods Received";
            this.Load += new System.EventHandler(this.InwardGoodsForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.numQuantity)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();
        }

        #endregion

        private System.Windows.Forms.Label lblProduct;
        public System.Windows.Forms.ComboBox cboProduct;
        private System.Windows.Forms.Label lblQuantity;
        public System.Windows.Forms.NumericUpDown numQuantity;
        private System.Windows.Forms.Label lblSupplier;
        public System.Windows.Forms.ComboBox cboSupplier;
        private System.Windows.Forms.Label lblReceivedBy;
        public System.Windows.Forms.TextBox txtReceivedBy;
        private System.Windows.Forms.Button btnRecord;
    }
}