using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.RegularExpressions;
namespace KimDung
{
    class Search
    {
        String a ;
        Regex myRegex = new Regex(@"(\w+)");
        public  MatchCollection AllMatches;
        public string[] search;//luu tru cac tu cua nguoi dung nhap vao
        public Regex[] myregex;//luu tru cac regex tao ra duoc tu mang search
        public string[] splits;//luu tru cac cau trong du lieu load ra
        public bool[] splitscheck;//luu tru cac bien kiem tra cac cau trong du lieu load ra

        public Search(string a)
        {
            this.a = a;
            AllMatches = myRegex.Matches(a);
            search = new string[AllMatches.Count];
            myregex = new Regex[AllMatches.Count];
        }

        public void getKeyword()
        {
            int d = 0;
            if (AllMatches.Count > 0)
            {

                foreach (Match SomeMatch in AllMatches)
                {
                    search[d] = SomeMatch.Groups[0].Value;
                    myregex[d] = new Regex(@"(\s)" + search[d] + @"(\W+)");
                    d += 1;
                }
                //Console.WriteLine(d);
               
            }

        }

        public void find(string s)
        {
            //String s = @" Ở bên kia bầu trời về đêm chắc đang lạnh dần. Và em giờ đang chìm trong giấc mơ êm đềm. Gửi mây mang vào phòng vòng tay của anh nồng nàn. ";
            splits = s.Split('.');
            splitscheck = new bool[splits.Length];
            for(int i=0;i<splits.Length;i++)
            {         
                bool check = true;
                splitscheck[i] = false;
                for (int j = 0; j < myregex.Length; j++)
                {
                    if (!(myregex[j].IsMatch(splits[i])))
                    {
                        check = false;
                        break;
                    }
                }

                if (check == true)   splitscheck[i] = true;
                else splitscheck[i] = false;
            }
        }

    }
}
