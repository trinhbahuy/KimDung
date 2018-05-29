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

            /*SqlConnection conn = new SqlConnection(@"Data Source=DUCHUY5700;Initial Catalog=test;Integrated Security=True");
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("Select * from Than_Dieu_Dai_Hiep where id = 1", conn);
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.Read())
                {

                    String content = rdr.GetString(rdr.GetOrdinal("content"));

                    rich.Text = content;
                }
            }
            catch
            {
                MessageBox.Show("lỗi");
            }
            */



            /*CheckCT obj2 = new CheckCT();
            bool result = obj2.checkword("biết");
            //MessageBox.Show(result.ToString());*/
            MatchCollection AllMatches;
            Regex myRegex = new Regex(@"(\w+)");
            AllMatches = myRegex.Matches(rich.Text);
            CheckCT obj2 = new CheckCT();
            obj2.cac_tu_lay_duoc = new string[AllMatches.Count];
            obj2.check_cac_tu_lay_duoc = new bool[AllMatches.Count];
            for(int i = 0; i < AllMatches.Count; i++)
            {
                obj2.cac_tu_lay_duoc[i] = AllMatches[i].Groups[0].Value;
                obj2.check_cac_tu_lay_duoc[i] = true;
            }
            obj2.kiem_tra_chinh_ta();

            /*string result = "";
            for (int i=1;i<obj2.check_cac_tu_lay_duoc.Length;i++)
            {
                if (obj2.check_cac_tu_lay_duoc[i] == false)
                {
                    result += obj2.cac_tu_lay_duoc[i];
                    result += "\t";
                }

            }
            rich.Text = result;*/
            //MessageBox.Show(result);



            //high light
            for(int i=1;i< obj2.check_cac_tu_lay_duoc.Length;i++)
            {
                if (obj2.check_cac_tu_lay_duoc[i] == false)
                {
                    int startIndex = 0;
                    while (startIndex < rich.TextLength)
                    {
                        int wordStartIndex = rich.Find(obj2.cac_tu_lay_duoc[i], startIndex, RichTextBoxFinds.None);
                        if (wordStartIndex != -1)
                        {
                            rich.SelectionStart = wordStartIndex;
                            rich.SelectionLength = obj2.cac_tu_lay_duoc[i].Length;
                            rich.SelectionBackColor = Color.Yellow;
                        }
                        else break;
                        startIndex += wordStartIndex + obj2.cac_tu_lay_duoc[i].Length;
                    }
                }               
            }
            /*string result = "";
            foreach (Match SomeMatch in AllMatches)
            {
                if (myRegex2.IsMatch(SomeMatch.Groups[0].Value))
                {
                    result += SomeMatch.Groups[0].Value;
                    result += "\n";
                }
                
            }
            MessageBox.Show(result);*/

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

        private void list_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}   
