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
            string key = search_form.Text;
            Search search1 = new Search(key);
            search1.getKeyword();
            /*foreach (string word in search1.search)
                rich.Text += word;*/
            search1.find();
            string textresult="";
            for(int i=0; i<search1.splitscheck.Length;i++)
            {
                if(search1.splitscheck[i] == true)
                    textresult += search1.splits[i];
            }
            rich.Text = textresult;
            textresult = "";
        }
    }
}   
