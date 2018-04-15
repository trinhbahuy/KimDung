using System;

namespace KiDung
{
    public class CheckCT
    {
        public string[] amdau = new string[] { "a", "ă", "â", "b", "c", "d", "đ", "e", "ê", "g", "h", "i", "k", "l", "m", "n",
                                                "o", "ô", "ơ", "p", "q", "r", "s", "t", "u", "ư", "v", "x", "y", "ch", "gh",
                                                "gi", "kh", "ng", "ngh", "nh", "ph", "th", "tr" };
        public string[] amcuoi = new string[] {
            "a", "á", "à", "ả", "ã", "ạ", "e", "é", "è", "ẻ", "ẽ", "ẹ", "ê", "ế", "ề", "ể", "ệ",
            "i", "í", "ì", "ỉ", "ĩ", "ị", "o", "ó", "ò", "ỏ", "õ", "ọ", "ô", "ố", "ồ", "ổ", "ỗ", "ộ", "ơ", "ớ", "ờ", "ở", "ỡ", "ợ",
            "u", "ú", "ù", "ủ", "ũ", "ụ", "ư", "ứ", "ừ", "ử", "ữ", "ự","y","ý","ỳ","ỷ","ỵ",
            "ác", "ạc", "ai", "ái", "ài", "ải", "ãi","ại", "am", "ám", "àm", "ảm", "ãm", "ạm", "an", "án", "àn", "ản", "ãn", "ạn",
            "ao", "áo", "ào", "ảo", "ão", "ạo", "áp", "ạp", "át", "ạt", "au", "áu", "àu", "ay", "áy", "ày", "ảy", "ãy", "ạy",
            "ắc", "ặc", "ăn", "ắn", "ằn", "ẳn", "ắt", "ặt", "ặn", "ấc", "ậc", "âm", "ấm", "ầm", "ẩm", "ẫm", "ậm", "ân", "ấn", "ần", "ẩn", "ẫn", "ận", "ất", "ật",
            "âu", "ấu", "ầu", "ẩu", "ẫu", "ậu", "éc", "ẹc", "em", "ém", "èm", "ẻm", "ẽm", "ẹm", "en", "én", "èn", "ẻn", "ẽn", "ẹn",
            "eo", "éo", "èo", "ẻo", "ẽo", "ẹo", "ép", "ẹp", "ét", "ẹt", "êm", "ếm", "ềm", "ệm", "ên", "ến", "ền", "ển", "ện",
            "ếp", "ệp", "im", "ím", "ìm", "ỉm", "ĩm", "ịm", "in", "ín", "ìn", "ỉn", "ịn", "íp", "ịp", "ít", "ịt",
            "oa", "óa", "òa", "ỏa", "õa", "ọa", "óc", "ọc", "oe", "óe", "ỏe", "ọe", "oi", "ói", "òi", "ỏi", "õi", "ọi",
            "om", "óm", "òm", "ỏm", "õm", "ọm", "on", "ón", "òn", "ỏn", "õn", "ọn", "óp", "ọp", "ót", "ọt", "ốc", "ộc",
            "ôi", "ối", "ồi", "ổi", "ỗi", "ội", "ôm", "ốm", "ồm", "ổm", "ộm", "ôn", "ốn", "ồn", "ổn", "ỗn", "ộn", "ốp", "ộp",
            "ốt", "ột", "ơi", "ới", "ời", "ởi", "ỡi", "ợi", "ơm", "ớm", "ờm", "ởm", "ỡm", "ợm", "ơn", "ớn", "hờn", "ởn", "ỡn", "ợn",
            "ớp", "ợp", "ua", "úa", "ùa", "ủa", "ũa", "ụa", "úc", "ục", "uê", "uế", "uề", "uể", "uệ", "ui", "úi", "ùi", "ủi", "ũi", "ụi",
            "um", "úm", "ùm", "ủm", "ũm", "ụm", "un", "ún", "ùn", "ủn", "ũn", "ụn", "úp", "ụp", "út", "ụt", "ưa", "ứa", "ừa", "ửa", "ữa", "ựa",
            "ức", "ực", "ửi", "ứt",
            "ách", "ạch", "ang", "àng", "ảng", "ãng", "ạng", "anh", "ành", "ảnh", "ãnh", "ạnh","ếch", "ệch", "ênh", "ệnh", "ích", "ịch",
            "inh", "ính", "ình", "ỉnh", "ĩnh", "ịnh", "iên", "iến", "iền", "iển", "iễn", "iện","oai", "oái", "oài", "oải", "oại",
            "oăn", "oắn", "oằn", "oặn", "oan", "oán", "oàn", "oản", "oãn", "oạn", "ong", "óng", "òng", "ỏng", "õng", "ọng",
            "ông", "ống", "ồng", "ổng", "ỗng", "ộng", "ung", "úng", "ùng", "ủng", "ũng", "ụng","uôn", "uốn", "uồn", "uộn",
            "ươn", "ướn", "ườn", "ượn", "ưng", "ứng", "ừng", "ửng", "ững", "ựng", "yên", "yến",
            "iêng", "iếng", "iềng", "iệng", "uyên", "uyến", "uyền", "uyển", "uyễn", "uyện",
            "oang", "oáng", "oàng", "oảng", "oãng", "oạng", "uynh", "uỳnh", "uých", "uỳnh", "uỵch",
            "uông","uống","uồng","uổng","uộng", "ương", "ướng", "ường", "ưởng", "ưỡng", "ượng"
            };

        public CheckCT()
        {
        }

        public bool checklength(string word)
        {
            if (word.Length > 7)
                return false;
            return true;
        }

        public bool check(string word)
        {
            string[] am_tiet = word.ToCharArray().Select(c => c.ToString()).ToArray();
            int index = 0; ;
            bool checkdau = true, checkcuoi = false;
            string amdautmp = "", amcuoitmp = "";

            while (check1)
            {
                amdautmp += am_tiet[index];
                bool check1tmp = false;
                foreach(string ad in amdau)
                {
                    if(amdautmp == ad)
                    {
                        index += 1;
                        check1tmp = true;
                        break;
                    }
                }

                if(check1tmp == false)
                {
                    if (index == 0) checkdau = false;
                    break;
                }
            }

            if (checkdau = true)
            {
                for(int i = index;i< word.Length; i++)
                {
                    amcuoitmp += am_tiet[i];
                }

                foreach(string ac in amcuoi)
                {
                    if (amcuoitmp = ac)
                    {
                        checkcuoi = true;
                        break;
                    }
                }
            }

            if (checkdau & checkcuoi) return true;
            else return false;
        }
    }
}

