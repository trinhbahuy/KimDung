namespace KimDung
{
    partial class fmain
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
            this.search = new System.Windows.Forms.Button();
            this.check = new System.Windows.Forms.Button();
            this.rich = new System.Windows.Forms.RichTextBox();
            this.list = new System.Windows.Forms.ComboBox();
            this.richTextBox1 = new System.Windows.Forms.RichTextBox();
            this.SuspendLayout();
            // 
            // search
            // 
            this.search.AccessibleName = "";
            this.search.Location = new System.Drawing.Point(784, 16);
            this.search.Name = "search";
            this.search.Size = new System.Drawing.Size(100, 31);
            this.search.TabIndex = 1;
            this.search.Text = "Search";
            this.search.UseVisualStyleBackColor = true;
            this.search.Click += new System.EventHandler(this.Find);
            // 
            // check
            // 
            this.check.Location = new System.Drawing.Point(196, 12);
            this.check.Name = "check";
            this.check.Size = new System.Drawing.Size(112, 35);
            this.check.TabIndex = 5;
            this.check.Text = "Check CT";
            this.check.UseVisualStyleBackColor = true;
            this.check.Click += new System.EventHandler(this.Click_Btn1);
            // 
            // rich
            // 
            this.rich.Location = new System.Drawing.Point(196, 60);
            this.rich.Name = "rich";
            this.rich.ReadOnly = true;
            this.rich.Size = new System.Drawing.Size(688, 398);
            this.rich.TabIndex = 6;
            this.rich.Text = "";
            this.rich.TextChanged += new System.EventHandler(this.rich_TextChanged);
            // 
            // list
            // 
            this.list.ForeColor = System.Drawing.SystemColors.WindowText;
            this.list.FormattingEnabled = true;
            this.list.Location = new System.Drawing.Point(12, 12);
            this.list.Name = "list";
            this.list.Size = new System.Drawing.Size(170, 21);
            this.list.TabIndex = 7;
            this.list.SelectionChangeCommitted += new System.EventHandler(this.list_SelectionChangeCommitted);
            // 
            // richTextBox1
            // 
            this.richTextBox1.Location = new System.Drawing.Point(12, 60);
            this.richTextBox1.Name = "richTextBox1";
            this.richTextBox1.ReadOnly = true;
            this.richTextBox1.Size = new System.Drawing.Size(170, 398);
            this.richTextBox1.TabIndex = 9;
            this.richTextBox1.Text = "";
            // 
            // fmain
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Inherit;
            this.AutoScroll = true;
            this.AutoValidate = System.Windows.Forms.AutoValidate.EnablePreventFocusChange;
            this.ClientSize = new System.Drawing.Size(888, 470);
            this.Controls.Add(this.richTextBox1);
            this.Controls.Add(this.list);
            this.Controls.Add(this.rich);
            this.Controls.Add(this.check);
            this.Controls.Add(this.search);
            this.Name = "fmain";
            this.Text = "Đọc truyện kiếm kiệp của Kim Dung";
            this.Load += new System.EventHandler(this.fmain_Load);
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Button search;
        private System.Windows.Forms.Button check;
        private System.Windows.Forms.RichTextBox rich;
        private System.Windows.Forms.ComboBox list;
        private System.Windows.Forms.RichTextBox richTextBox1;
    }
}

