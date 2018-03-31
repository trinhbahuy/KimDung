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
        public string[] search;
        public Regex[] myregex;
        public int[] b;
        public string[] splits;
        public Search(string a)
        {
            this.a = a;
            AllMatches = myRegex.Matches(a);
            search = new string[AllMatches.Count];
            myregex = new Regex[AllMatches.Count];
        }

        int d = 0;
        public void getKeyword()
        {
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

        public void find()
        {
            String s = @" Ở bên kia bầu trời về đêm chắc đang lạnh dần. Và em giờ đang chìm trong giấc mơ êm đềm. Gửi mây mang vào phòng vòng tay của anh nồng nàn. ";
            splits = s.Split('.');
            int d = 0, x=0;
            b = new int[splits.Length];
            foreach (string split in splits)
            {
                
                bool check = true;
                for (int i = 0; i < d; i++)
                {
                    if (!(myregex[i].IsMatch(split)))
                    {
                        check = false;
                        break;
                    }
                }
                
                if (check)
                {
                    b[x] = d;
                    x++;
                }
                d += 1;


            }
        }

    }
}
