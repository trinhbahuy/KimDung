using System;

namespace KiDung
{
    public class CheckCT
    {
        //mang amdau1 chua cac am co the dung dau, ngoai tru cac am co the dung mot minh
        public string[] amdau = new string[] { "a", "á", "à", "ả", "ạ", "ă", "â", "ẩ", "b", "c", "d", "đ", "e", "ê", "ế", "g", "h", "i",
            "ì", "ỉ", "k", "l", "m", "n", "o", "ó", "ô", "ố", "ồ", "ổ", "ơ", "ớ", "ờ", "ở", "ợ",
            "p", "q", "r", "s", "t", "u", "ú", "ù", "ủ", "ụ", "ư", "ứ", "ừ", "ử", "v", "x", "y", "ý", "ỷ", "ch", "gh",
            "gi", "kh", "ng", "ngh", "nh", "ph", "th", "tr" };

        public string[] amdau_dung_mot_minh = new string[] { "a", "á", "à", "ả", "ạ", "ê", "ế", "i",
            "ì", "ỉ", "ó", "ô", "ố", "ồ", "ổ", "ơ", "ớ", "ờ", "ở", "ợ",
            "u", "ú", "ù", "ủ", "ụ", "ư", "ứ", "ừ", "ử", "y", "ý", "ỷ" };

        public string[] amcuoi = new string[] {
            "a", "á", "à", "ả", "ã", "ạ", "e", "é", "è", "ẻ", "ẽ", "ẹ", "ê", "ế", "ề", "ể", "ệ",
            "i", "í", "ì", "ỉ", "ĩ", "ị", "o", "ó", "ò", "ỏ", "õ", "ọ", "ô", "ố", "ồ", "ổ", "ỗ", "ộ", "ơ", "ớ", "ờ", "ở", "ỡ", "ợ",
            "u", "ú", "ù", "ủ", "ũ", "ụ", "ư", "ứ", "ừ", "ử", "ữ", "ự", "y", "ý", "ỳ", "ỷ", "ỵ",
            "ác", "ạc", "ai", "ái", "ài", "ải", "ãi","ại", "am", "ám", "àm", "ảm", "ãm", "ạm", "an", "án", "àn", "ản", "ãn", "ạn",
            "ao", "áo", "ào", "ảo", "ão", "ạo", "áp", "ạp", "át", "ạt", "au", "áu", "àu", "ay", "áy", "ày", "ảy", "ãy", "ạy",
            "ắc", "ặc", "ăm", "ắm", "ằm", "ẳm", "ẵm", "ăn", "ắn", "ằn", "ẳn", "ắt", "ặt", "ặn",
            "ấc", "ậc", "âm", "ấm", "ầm", "ẩm", "ẫm", "ậm", "ân", "ấn", "ần", "ẩn", "ẫn", "ận", "ất", "ật", "âu", "ấu", "ầu", "ẩu", "ẫu", "ậu",
            "éc", "ẹc", "em", "ém", "èm", "ẻm", "ẽm", "ẹm", "en", "én", "èn", "ẻn", "ẽn", "ẹn", "eo", "éo", "èo", "ẻo", "ẽo", "ẹo",
            "ép", "ẹp", "ét", "ẹt", "êm", "ếm", "ềm", "ệm", "ên", "ến", "ền", "ển", "ện", "ếp", "ệp", "êu", "ếu", "ều", "ểu",
            "ia", "ía", "ìa", "ỉa", "ịa", "im", "ím", "ìm", "ỉm", "ĩm", "ịm", "in", "ín", "ìn", "ỉn", "ịn", "íp", "ịp", "ít", "ịt",
            "oa", "óa", "òa", "ỏa", "õa", "ọa", "óc", "ọc", "oe", "óe", "ỏe", "ọe", "oi", "ói", "òi", "ỏi", "õi", "ọi",
            "om", "óm", "òm", "ỏm", "õm", "ọm", "on", "ón", "òn", "ỏn", "õn", "ọn", "óp", "ọp", "ót", "ọt", "ốc", "ộc",
            "ôi", "ối", "ồi", "ổi", "ỗi", "ội", "ôm", "ốm", "ồm", "ổm", "ộm", "ôn", "ốn", "ồn", "ổn", "ỗn", "ộn", "ốp", "ộp",
            "ốt", "ột", "ơi", "ới", "ời", "ởi", "ỡi", "ợi", "ơm", "ớm", "ờm", "ởm", "ỡm", "ợm", "ơn", "ớn", "ờn", "ởn", "ỡn", "ợn",
            "ớp", "ợp", "ua", "úa", "ùa", "ủa", "ũa", "ụa", "úc", "ục", "uê", "uế", "uề", "uể", "uệ", "ui", "úi", "ùi", "ủi", "ũi", "ụi",
            "um", "úm", "ùm", "ủm", "ũm", "ụm", "un", "ún", "ùn", "ủn", "ũn", "ụn", "úp", "ụp", "út", "ụt", "ưa", "ứa", "ừa", "ửa", "ữa", "ựa",
            "ức", "ực", "ửi", "ứt",
            "ách", "ạch", "ang", "àng", "ảng", "ãng", "ạng", "anh", "ành", "ảnh", "ãnh", "ạnh", "ếch", "ệch", "ênh", "ệnh", "ích", "ịch",
            "inh", "ính", "ình", "ỉnh", "ĩnh", "ịnh", "iên", "iến", "iền", "iển", "iễn", "iện", "iêm", "iếm", "iềm", "iểm", "iễm", "iệm",
            "oai", "oái", "oài", "oải", "oại",
            "oăn", "oắn", "oằn", "oặn", "oan", "oán", "oàn", "oản", "oãn", "oạn", "ong", "óng", "òng", "ỏng", "õng", "ọng",
            "oay", "oáy",
            "ông", "ống", "ồng", "ổng", "ỗng", "ộng", "ung", "úng", "ùng", "ủng", "ũng", "ụng","uôn", "uốn", "uồn", "uộn",
            "uây", "uấy", "uầy", "uẫy", "uậy",
            "ươn", "ướn", "ườn", "ượn", "ưng", "ứng", "ừng", "ửng", "ững", "ựng",
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
            string tmpword = word.ToLower();
            string[] am_tiet = word.ToCharArray().Select(c => c.ToString()).ToArray();
            int index = 0; ;
            bool checkdau = true, checkcuoi = false;
            string amdautmp = "", amcuoitmp = "";


            //check am dau
            while (check1)
            {
                amdautmp += am_tiet[index];
                bool check1tmp = false;
                foreach(string ad in amdau)
                {
                    if (amdautmp == ad)
                    {
                        if (index < (word.Length - 1))
                        {
                            index += 1;
                        }    
                        check1tmp = true;
                        break;
                    }
                }

                if(check1tmp == false)
                {
                    if (index == 0) checkdau = false;
                    break;
                }
                else
                {
                    if (index == (word.Length - 1)) break;
                }
            }


            //check am cuoi
            if (checkdau == true)
            {
                /*neu ca word la mot am dau, can kiem tra xem am dau nay co duoc dung mot minh khong*/
                if(index == (word.Length - 1))
                {
                    foreach(string ad in amdau_dung_mot_minh)
                    {
                        if(amdautmp == ad)
                        {
                            checkcuoi = true;
                            break;
                        }
                    }
                }
                /*neu khong, can kiem tra phan con lai cua word co nam trong amcuoi[] khong*/
                else
                {
                    for (int i = index; i < word.Length; i++)
                    {
                        amcuoitmp += am_tiet[i];
                    }

                    //neu tu bi lap lai am dau, tu do chac chan sai chinh ta VD: "aa", "bb"
                    if (amdautmp == amcuoitmp) checkcuoi == false;
                    else
                    {
                        foreach (string ac in amcuoi)
                        {
                            if (amcuoitmp == ac)
                            {
                                checkcuoi = true;
                                break;
                            }
                        }

                        /*neu check phan con lai cua word khong nam trong amcuoi[],
                         *  thi can check ca cum tu xem co nam trong amcuoi[] khong
                         *  vi doi khi mot van cung co the la mot tu*/
                        if (checkcuoi == false)
                        {
                            amdautmp -= am_tiet[index];
                            amcuoitmp = amdautmp + amcuoitmp;
                            foreach (string ac in amcuoi)
                            {
                                if (amcuoitmp == ac)
                                {
                                    checkcuoi = true;
                                    break;
                                }
                            }
                        }
                    }    
                }              
            }

            if (checkdau & checkcuoi) return true;
            else return false;
        }
    }
}

