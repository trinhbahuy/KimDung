using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Text.RegularExpressions;
namespace KimDung
{
    public partial class fmain : Form
    {
        public fmain()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void Click_Btn1(object sender, EventArgs e)
        {
            MessageBox.Show("abc");
        }



        private void Find(object sender, EventArgs e)
        {
     
            
            Form2 form2 = new Form2();
            form2.ShowDialog();
        }
    }
}   
