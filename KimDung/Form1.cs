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
using System.Data.SqlClient;
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
            //MessageBox.Show("abc");
            //CheckCT obj2 = new CheckCT();
        }



        private void Find(object sender, EventArgs e)
        {
     
            
            Form2 form2 = new Form2();
            form2.ShowDialog();
        }

        private void rich_TextChanged(object sender, EventArgs e)
        {
           
        }

        private void button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=DUCHUY5700;Initial Catalog=kim_dung;Integrated Security=True");
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("Select * from than_dieu_dai_hiep", conn);
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    string ten_chuong = /*"Chương " + rdr["id"] + ": " +*/ rdr["ten_chuong"].ToString();
                    list.Items.Add(ten_chuong);
                }
            }
            catch
            {
                MessageBox.Show("lỗi");
            }
        }

        private void list_SelectionChangeCommitted(object sender, EventArgs e)
        {
            String ten_chuong = list.SelectedItem.ToString();
            SqlConnection conn = new SqlConnection(@"Data Source=DUCHUY5700;Initial Catalog=kim_dung;Integrated Security=True");
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("Select noi_dung from than_dieu_dai_hiep where ten_chuong like N'" + ten_chuong + "'", conn);
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.Read())
                {
                    String noi_dung = rdr.GetString(rdr.GetOrdinal("noi_dung"));
                    rich.Text = noi_dung ;
             }
         }
         catch
         {
             MessageBox.Show("lỗi");
         }
        }
    }
}   
