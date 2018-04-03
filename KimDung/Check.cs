using System;

namespace KiDung
{
    public class Check
    {
        public Check()
        {
        }

        public bool checklength(string a)
        {
            if (a.Length > 7)
                return false;
            return true;
        }
    }
}

