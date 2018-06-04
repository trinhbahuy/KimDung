using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WMPLib;

namespace KimDung
{
    public partial class Form3 : Form
    {
        WMPLib.WindowsMediaPlayer player = new WMPLib.WindowsMediaPlayer();
        public static String name = "";
        public Form3()
        {
            InitializeComponent();
            player.URL = "sound.mp3";
            //player.controls.stop();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            fmain form1 = new fmain();
            form1.Show();
        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = listBox1.SelectedIndex;
            pictureBox1.Image = imageList1.Images[index];
            if (index == 0)
                name = "than_dieu_dai_hiep";
            else if (index == 1)
                name = "anh_hung_xa_dieu";
            else if (index == 2)
                name = "thien_long_bat_bo";
            else if (index == 3)
                name = "loc_dinh_ky";
            else if (index == 4)
                name = "tieu_ngao_giang_ho";
            else if (index == 5)
                name = "bich_huyet_kiem";
            else if (index == 6)
                name = "be_kiem_ben_troi";
            else if (index == 7)
                name = "y_thien_do_long_ky";
            else 
                name = "bach_ma_khieu_tay_phong";
        }

        private void axWindowsMediaPlayer1_ClickEvent(object sender, AxWMPLib._WMPOCXEvents_ClickEvent e)
        {
            player.controls.play();
        }
    }
}
