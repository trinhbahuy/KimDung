﻿namespace KimDung
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
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.back = new System.Windows.Forms.Button();
            this.next = new System.Windows.Forms.Button();
            this.check = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // search
            // 
            this.search.AccessibleName = "";
            this.search.Location = new System.Drawing.Point(458, 18);
            this.search.Name = "search";
            this.search.Size = new System.Drawing.Size(48, 23);
            this.search.TabIndex = 1;
            this.search.Text = "search";
            this.search.UseVisualStyleBackColor = true;
            this.search.Click += new System.EventHandler(this.Click_Btn1);
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(353, 20);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(100, 20);
            this.textBox1.TabIndex = 2;
            this.textBox1.Text = "1234";
            // 
            // back
            // 
            this.back.Location = new System.Drawing.Point(211, 226);
            this.back.Name = "back";
            this.back.Size = new System.Drawing.Size(40, 23);
            this.back.TabIndex = 3;
            this.back.Text = "back";
            this.back.UseVisualStyleBackColor = true;
            // 
            // next
            // 
            this.next.Location = new System.Drawing.Point(257, 226);
            this.next.Name = "next";
            this.next.Size = new System.Drawing.Size(39, 23);
            this.next.TabIndex = 4;
            this.next.Text = "next";
            this.next.UseVisualStyleBackColor = true;
            // 
            // check
            // 
            this.check.Location = new System.Drawing.Point(12, 12);
            this.check.Name = "check";
            this.check.Size = new System.Drawing.Size(47, 23);
            this.check.TabIndex = 5;
            this.check.Text = "check";
            this.check.UseVisualStyleBackColor = true;
            // 
            // fmain
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Inherit;
            this.AutoScroll = true;
            this.AutoValidate = System.Windows.Forms.AutoValidate.EnablePreventFocusChange;
            this.ClientSize = new System.Drawing.Size(545, 261);
            this.Controls.Add(this.check);
            this.Controls.Add(this.next);
            this.Controls.Add(this.back);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.search);
            this.Name = "fmain";
            this.Text = "fmain";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Button back;
        private System.Windows.Forms.Button next;
        private System.Windows.Forms.Button search;
        private System.Windows.Forms.Button check;
    }
}

