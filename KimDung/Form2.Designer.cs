namespace KimDung
{
    partial class Form2
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
            this.button1 = new System.Windows.Forms.Button();
            this.search_form = new System.Windows.Forms.TextBox();
            this.rich2 = new System.Windows.Forms.RichTextBox();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(457, 24);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 0;
            this.button1.Text = "Search";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // search_form
            // 
            this.search_form.Location = new System.Drawing.Point(12, 27);
            this.search_form.Name = "search_form";
            this.search_form.Size = new System.Drawing.Size(439, 20);
            this.search_form.TabIndex = 1;
            // 
            // rich2
            // 
            this.rich2.Location = new System.Drawing.Point(12, 73);
            this.rich2.Name = "rich2";
            this.rich2.ReadOnly = true;
            this.rich2.Size = new System.Drawing.Size(520, 389);
            this.rich2.TabIndex = 3;
            this.rich2.Text = "";
            // 
            // Form2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(544, 474);
            this.Controls.Add(this.rich2);
            this.Controls.Add(this.search_form);
            this.Controls.Add(this.button1);
            this.Name = "Form2";
            this.Text = "Search";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TextBox search_form;
        private System.Windows.Forms.RichTextBox rich2;
    }
}