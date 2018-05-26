using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

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
            string ten_chuong;
            string noi_dung_chuyen;
            string textresult = "";
            Search search1 = new Search(key);
            search1.getKeyword();

            //lay du lieu de search
            SqlConnection conn = new SqlConnection(@"Data Source=DUCHUY5700;Initial Catalog=kim_dung;Integrated Security=True");
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("Select * from than_dieu_dai_hiep", conn);
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    ten_chuong ="Chương " + rdr["id"] + ": " + rdr["ten_chuong"].ToString();
                    noi_dung_chuyen = rdr.GetString(rdr.GetOrdinal("noi_dung"));
                    search1.find(noi_dung_chuyen);
                    for (int i = 0; i < search1.splitscheck.Length; i++)
                    {
                        if (search1.splitscheck[i] == true)
                        {
                            textresult += ten_chuong;
                            textresult += "\n";
                            textresult += search1.splits[i];
                            textresult += "\n\n\n\n\n";
                            break;
                        }
                    }
                }
            }
            catch
            {
                MessageBox.Show("lỗi");
            }


            
            rich2.Text = textresult;
            textresult = "";
        }
    }
}
