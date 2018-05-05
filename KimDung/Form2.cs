using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace KimDung
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string key = search_form.Text;
            Search search1 = new Search(key);
            search1.getKeyword();

            search1.find();
            string textresult = "";
            for (int i = 0; i < search1.splitscheck.Length; i++)
            {
                if (search1.splitscheck[i] == true)
                    textresult += search1.splits[i];
            }
            rich2.Text = textresult;
            textresult = "";
        }
    }
}
