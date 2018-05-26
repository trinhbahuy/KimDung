﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.RegularExpressions;
namespace KimDung
{
    class CheckCT
    {
        //mang amdau1 chua cac am co the dung dau, ngoai tru cac am co the dung mot minh
        public string[] amdau = new string[] { "a", "á", "à", "ả", "ạ", "ă", "â", "ẩ", "b", "c", "d", "đ", "e", "é", "ê", "ế", "g", "h", "i",
            "ì", "ỉ", "k", "l", "m", "n", "o", "ó", "ô", "ố", "ồ", "ổ", "ơ", "ớ", "ờ", "ở", "ợ",
            "p", "q", "r", "s", "t", "u", "ú", "ù", "ủ", "ụ", "ư", "ứ", "ừ", "ử", "v", "x", "y", "ý", "ỷ", "ch", "gh",
            "gi", "kh", "ng", "ngh", "nh", "ph", "th", "tr", "ph", "qu" };

        public string[] amdau_dung_mot_minh = new string[] { "a", "á", "à", "ả", "ạ", "ê", "ế", "i",
            "ì", "ỉ", "ó", "ô", "ố", "ồ", "ổ", "ơ", "ớ", "ờ", "ở", "ợ",
            "u", "ú", "ù", "ủ", "ụ", "ư", "ứ", "ừ", "ử", "y", "ý", "ỷ" };

        public string[] amcuoi = new string[] {
            "a", "á", "à", "ả", "ã", "ạ", "e", "é", "è", "ẻ", "ẽ", "ẹ", "ê", "ế", "ề", "ể", "ễ", "ệ",
            "i", "í", "ì", "ỉ", "ĩ", "ị", "o", "ó", "ò", "ỏ", "õ", "ọ", "ô", "ố", "ồ", "ổ", "ỗ", "ộ", "ơ", "ớ", "ờ", "ở", "ỡ", "ợ",
            "u", "ú", "ù", "ủ", "ũ", "ụ", "ư", "ứ", "ừ", "ử", "ữ", "ự", "y", "ý", "ỳ", "ỷ", "ỹ", "ỵ",
            "ác", "ạc", "ai", "ái", "ài", "ải", "ãi","ại", "am", "ám", "àm", "ảm", "ãm", "ạm", "an", "án", "àn", "ản", "ãn", "ạn",
            "ao", "áo", "ào", "ảo", "ão", "ạo", "áp", "ạp", "át", "ạt", "au", "áu", "àu", "ay", "áy", "ày", "ảy", "ãy", "ạy",
            "ắc", "ặc", "ăm", "ắm", "ằm", "ẳm", "ẵm", "ặm", "ăn", "ắn", "ằn", "ẳn", "ắt", "ặt", "ặn",
            "ấc", "ậc", "âm", "ấm", "ầm", "ẩm", "ẫm", "ậm", "ân", "ấn", "ần", "ẩn", "ẫn", "ận", "ất", "ật", "âu", "ấu", "ầu", "ẩu", "ẫu", "ậu",
            "éc", "ẹc", "em", "ém", "èm", "ẻm", "ẽm", "ẹm", "en", "én", "èn", "ẻn", "ẽn", "ẹn", "eo", "éo", "èo", "ẻo", "ẽo", "ẹo",
            "ép", "ẹp", "ét", "ẹt", "êm", "ếm", "ềm", "ệm", "ên", "ến", "ền", "ển", "ện", "ếp", "ệp", "êu", "ếu", "ều", "ểu",
            "ia", "ía", "ìa", "ỉa", "ĩa", "ịa", "im", "ím", "ìm", "ỉm", "ĩm", "ịm", "in", "ín", "ìn", "ỉn", "ịn", "íp", "ịp", "ít", "ịt",
            "oa", "óa", "òa", "ỏa", "õa", "ọa", "óc", "ọc", "oe", "óe", "ỏe", "ọe", "oi", "ói", "òi", "ỏi", "õi", "ọi",
            "om", "óm", "òm", "ỏm", "õm", "ọm", "on", "ón", "òn", "ỏn", "õn", "ọn", "óp", "ọp", "ót", "ọt", "ốc", "ộc",
            "ôi", "ối", "ồi", "ổi", "ỗi", "ội", "ôm", "ốm", "ồm", "ổm", "ộm", "ôn", "ốn", "ồn", "ổn", "ỗn", "ộn", "ốp", "ộp",
            "ốt", "ột", "ơi", "ới", "ời", "ởi", "ỡi", "ợi", "ơm", "ớm", "ờm", "ởm", "ỡm", "ợm", "ơn", "ớn", "ờn", "ởn", "ỡn", "ợn",
            "ớp", "ợp", "ua", "úa", "uá", "ùa", "uà", "ủa", "uả", "ũa", "ụa", "uạ", "úc", "ục", "uê", "uế", "uề", "uể", "uệ", "ui", "úi", "ùi", "ủi", "ũi", "ụi",
            "um", "úm", "ùm", "ủm", "ũm", "ụm", "un", "ún", "ùn", "ủn", "ũn", "ụn", "úp", "ụp", "út", "ụt", "ưa", "ứa", "ừa", "ửa", "ữa", "ựa",
            "ức", "ực", "ửi", "ứt", "uy", "úy", "uý", "uỳ", "ủy", "uỷ", "uỹ", "uỵ",
            "ách", "ạch", "ang", "àng", "ảng", "ãng", "ạng", "anh", "ành", "ảnh", "ãnh", "ạnh", "ếch", "ệch", "ênh", "ệnh", "ích", "ịch",
            "inh", "ính", "ình", "ỉnh", "ĩnh", "ịnh", "iên", "iến", "iền", "iển", "iễn", "iện", "iêm", "iếm", "iềm", "iểm", "iễm", "iệm",
            "oai", "oái", "oài", "oải", "oại",
            "oăn", "oắn", "oằn", "oặn", "oan", "oán", "oàn", "oản", "oãn", "oạn", "ong", "óng", "òng", "ỏng", "õng", "ọng",
            "oay", "oáy",
            "ông", "ống", "ồng", "ổng", "ỗng", "ộng", "ung", "úng", "ùng", "ủng", "ũng", "ụng", "uôn", "uốn", "uồn", "uộn",
            "uây", "uấy", "uầy", "uẫy", "uậy",
            "ươn", "ướn", "ườn", "ượn", "ưng", "ứng", "ừng", "ửng", "ững", "ựng",
            "iêng", "iếng", "iềng", "iệng", "uyên", "uyến", "uyền", "uyển", "uyễn", "uyện",
            "oang", "oáng", "oàng", "oảng", "oãng", "oạng", "uynh", "uỳnh", "uých", "uỳnh", "uỵch",
            "uông","uống","uồng","uổng","uộng", "ương", "ướng", "ường", "ưởng", "ưỡng", "ượng"
            };

        public string[] amcuoi_dung_mot_minh = new string[] {
            "ác", "ai", "ái", "ải", "am", "ám", "ảm", "an", "án",
            "ao", "áo", "ào", "ảo", "áp", "át", "ạt", "au", "ay", "áy",
            "ặc", "ẵm", "ăn", "ắt",
            "âm", "ấm", "ầm", "ẩm", "ân", "ấn", "ẩn", "ất", "âu", "ấu", "ẩu",
            "éc", "ẹc", "em", "ém", "ẻm", "én", "eo", "éo", "èo", "ẻo", "ẽo",
            "ép", "ét", "êm", "ếp",
            "ỉa", "im", "ím", "ỉm", "in", "ỉn", "ít", "ịt",
            "oa", "òa", "óc", "ọc", "oe", "óe", "ọe", "oi", "ói", "ỏi",
            "om", "óp", "ốc", "ộc",
            "ôi", "ối", "ổi", "ôm", "ốm", "ồm", "ôn", "ồn", "ổn", "ốp", "ộp",
            "ốt", "ơi", "ới", "ờm", "ơn", "ớn",
            "ua", "úa", "ùa", "ủa", "úc", "ục", "ui", "úi", "ủi",
            "um", "úm", "ùm", "ùn", "ủn", "ụn", "úp", "ụp", "út", "ụt", "ứa", "ựa",
            "ức", "ực", "úy", "ủy",
            "ách", "ạch", "ang", "anh", "ảnh", "ếch", "ích", "ịch",
            "inh",
            "oai", "oái", "oải",
            "oẳn", "oan", "oán", "oản", "ong", "óng",
            "ông", "ống", "ổng", "ung", "úng", "ủng", "uốn",
            "ươn", "ưng", "ứng", "ửng",
            "uyên", "uyển", "uyễn",
            "oang", "uynh", "uỳnh", "uỳnh", "uỵch",
            "uông", "uống", "uổng", "ương"
        };

        public string[] cac_cap_am_khong_duoc_dung_cung_nhau = new string[] {
            "aa","aá","aà","aả","aã","aạ","ae","aé","aè","aẻ","aẽ","aẹ","aê","aế","aề","aể","aễ","aệ","ai","aí","aì","aỉ","aĩ","aị","ao",
            "aó","aò","aỏ","aõ","aọ","aô","aố","aồ","aổ","aỗ","aộ","aơ","aớ","aờ","aở","aỡ","aợ","au","aú","aù","aủ","aũ","aụ","aư","aứ",
            "aừ","aử","aữ","aự","ay","aý","aỳ","aỷ","aỹ","aỵ","áa","áá","áà","áả","áã","áạ","áe","áé","áè","áẻ","áẽ","áẹ","áê","áế","áề",
            "áể","áễ","áệ","ái","áí","áì","áỉ","áĩ","áị","áo","áó","áò","áỏ","áõ","áọ","áô","áố","áồ","áổ","áỗ","áộ","áơ","áớ","áờ","áở",
            "áỡ","áợ","áu","áú","áù","áủ","áũ","áụ","áư","áứ","áừ","áử","áữ","áự","áy","áý","áỳ","áỷ","áỹ","áỵ","àa","àá","àà","àả","àã",
            "àạ","àe","àé","àè","àẻ","àẽ","àẹ","àê","àế","àề","àể","àễ","àệ","ài","àí","àì","àỉ","àĩ","àị","ào","àó","àò","àỏ","àõ","àọ",
            "àô","àố","àồ","àổ","àỗ","àộ","àơ","àớ","àờ","àở","àỡ","àợ","àu","àú","àù","àủ","àũ","àụ","àư","àứ","àừ","àử","àữ","àự","ày",
            "àý","àỳ","àỷ","àỹ","àỵ","ảa","ảá","ảà","ảả","ảã","ảạ","ảe","ảé","ảè","ảẻ","ảẽ","ảẹ","ảê","ảế","ảề","ảể","ảễ","ảệ","ải","ảí",
            "ảì","ảỉ","ảĩ","ảị","ảo","ảó","ảò","ảỏ","ảõ","ảọ","ảô","ảố","ảồ","ảổ","ảỗ","ảộ","ảơ","ảớ","ảờ","ảở","ảỡ","ảợ","ảu","ảú","ảù",
            "ảủ","ảũ","ảụ","ảư","ảứ","ảừ","ảử","ảữ","ảự","ảy","ảý","ảỳ","ảỷ","ảỹ","ảỵ","ạa","ạá","ạà","ạả","ạã","ạạ","ạe","ạé","ạè","ạẻ",
            "ạẽ","ạẹ","ạê","ạế","ạề","ạể","ạễ","ạệ","ại","ạí","ạì","ạỉ","ạĩ","ạị","ạo","ạó","ạò","ạỏ","ạõ","ạọ","ạô","ạố","ạồ","ạổ","ạỗ",
            "ạộ","ạơ","ạớ","ạờ","ạở","ạỡ","ạợ","ạu","ạú","ạù","ạủ","ạũ","ạụ","ạư","ạứ","ạừ","ạử","ạữ","ạự","ạy","ạý","ạỳ","ạỷ","ạỹ","ạỵ",
            "ăa","ăá","ăà","ăả","ăã","ăạ","ăe","ăé","ăè","ăẻ","ăẽ","ăẹ","ăê","ăế","ăề","ăể","ăễ","ăệ","ăi","ăí","ăì","ăỉ","ăĩ","ăị","ăo",
            "ăó","ăò","ăỏ","ăõ","ăọ","ăô","ăố","ăồ","ăổ","ăỗ","ăộ","ăơ","ăớ","ăờ","ăở","ăỡ","ăợ","ău","ăú","ăù","ăủ","ăũ","ăụ","ăư","ăứ",
            "ăừ","ăử","ăữ","ăự","ăy","ăý","ăỳ","ăỷ","ăỹ","ăỵ","âa","âá","âà","âả","âã","âạ","âe","âé","âè","âẻ","âẽ","âẹ","âê","âế","âề",
            "âể","âễ","âệ","âi","âí","âì","âỉ","âĩ","âị","âo","âó","âò","âỏ","âõ","âọ","âô","âố","âồ","âổ","âỗ","âộ","âơ","âớ","âờ","âở",
            "âỡ","âợ","âu","âú","âù","âủ","âũ","âụ","âư","âứ","âừ","âử","âữ","âự","ây","âý","âỳ","âỷ","âỹ","âỵ","ẩa","ẩá","ẩà","ẩả","ẩã",
            "ẩạ","ẩe","ẩé","ẩè","ẩẻ","ẩẽ","ẩẹ","ẩê","ẩế","ẩề","ẩể","ẩễ","ẩệ","ẩi","ẩí","ẩì","ẩỉ","ẩĩ","ẩị","ẩo","ẩó","ẩò","ẩỏ","ẩõ","ẩọ",
            "ẩô","ẩố","ẩồ","ẩổ","ẩỗ","ẩộ","ẩơ","ẩớ","ẩờ","ẩở","ẩỡ","ẩợ","ẩu","ẩú","ẩù","ẩủ","ẩũ","ẩụ","ẩư","ẩứ","ẩừ","ẩử","ẩữ","ẩự","ẩy",
            "ẩý","ẩỳ","ẩỷ","ẩỹ","ẩỵ","bỡ","bũ","bư","bứ","bừ","bử","bữ","by","bý","bỳ","bỷ","bỹ","bỵ","cã","ce","cé","cè","cẻ","cẽ","cẹ",
            "cê","cế","cề","cể","cễ","cệ","ci","cí","cì","cỉ","cĩ","cị","cõ","cở","cợ","cy","cý","cỳ","cỷ","cỹ","cỵ","de","dẽ","dề","dệ",
            "dỉ","dỏ","dõ","dô","dố","dổ","dớ","dờ","dỡ","dủ","dy","dý","dỳ","dỷ","dỹ","dỵ","đé","đẽ","đễ","đở","đợ","đử","đữ","đy","đý",
            "đỳ","đỷ","đỹ","đỵ","ea","eá","eà","eả","eã","eạ","ee","eé","eè","eẻ","eẽ","eẹ","eê","eế","eề","eể","eễ","eệ","ei","eí","eì",
            "eỉ","eĩ","eị","eo","eó","eò","eỏ","eõ","eọ","eô","eố","eồ","eổ","eỗ","eộ","eơ","eớ","eờ","eở","eỡ","eợ","eu","eú","eù","eủ",
            "eũ","eụ","eư","eứ","eừ","eử","eữ","eự","ey","eý","eỳ","eỷ","eỹ","eỵ","éa","éá","éà","éả","éã","éạ","ée","éé","éè","éẻ","éẽ",
            "éẹ","éê","éế","éề","éể","éễ","éệ","éi","éí","éì","éỉ","éĩ","éị","éo","éó","éò","éỏ","éõ","éọ","éô","éố","éồ","éổ","éỗ","éộ",
            "éơ","éớ","éờ","éở","éỡ","éợ","éu","éú","éù","éủ","éũ","éụ","éư","éứ","éừ","éử","éữ","éự","éy","éý","éỳ","éỷ","éỹ","éỵ","êa",
            "êá","êà","êả","êã","êạ","êe","êé","êè","êẻ","êẽ","êẹ","êê","êế","êề","êể","êễ","êệ","êi","êí","êì","êỉ","êĩ","êị","êo","êó",
            "êò","êỏ","êõ","êọ","êô","êố","êồ","êổ","êỗ","êộ","êơ","êớ","êờ","êở","êỡ","êợ","êu","êú","êù","êủ","êũ","êụ","êư","êứ","êừ",
            "êử","êữ","êự","êy","êý","êỳ","êỷ","êỹ","êỵ","ếa","ếá","ếà","ếả","ếã","ếạ","ếe","ếé","ếè","ếẻ","ếẽ","ếẹ","ếê","ếế","ếề","ếể",
            "ếễ","ếệ","ếi","ếí","ếì","ếỉ","ếĩ","ếị","ếo","ếó","ếò","ếỏ","ếõ","ếọ","ếô","ếố","ếồ","ếổ","ếỗ","ếộ","ếơ","ếớ","ếờ","ếở","ếỡ",
            "ếợ","ếu","ếú","ếù","ếủ","ếũ","ếụ","ếư","ếứ","ếừ","ếử","ếữ","ếự","ếy","ếý","ếỳ","ếỷ","ếỹ","ếỵ","gá","ge","gé","gè","gẻ","gẽ",
            "gẹ","gê","gế","gề","gể","gễ","gệ","gí","gĩ","gó","gỏ","gố","gộ","gơ","gở","gợ","gủ","gũ","gứ","gử","gữ","gự","gy","gý","gỳ",
            "gỷ","gỹ","gỵ","hẽ","hể","hừ","hy","hý","hỳ","hỹ","hỵ","ia","iá","ià","iả","iã","iạ","ie","ié","iè","iẻ","iẽ","iẹ","iê","iế",
            "iề","iể","iễ","iệ","ii","ií","iì","iỉ","iĩ","iị","io","ió","iò","iỏ","iõ","iọ","iô","iố","iồ","iổ","iỗ","iộ","iơ","iớ","iờ",
            "iở","iỡ","iợ","iu","iú","iù","iủ","iũ","iụ","iư","iứ","iừ","iử","iữ","iự","iy","iý","iỳ","iỷ","iỹ","iỵ","ìa","ìá","ìà","ìả",
            "ìã","ìạ","ìe","ìé","ìè","ìẻ","ìẽ","ìẹ","ìê","ìế","ìề","ìể","ìễ","ìệ","ìi","ìí","ìì","ìỉ","ìĩ","ìị","ìo","ìó","ìò","ìỏ","ìõ",
            "ìọ","ìô","ìố","ìồ","ìổ","ìỗ","ìộ","ìơ","ìớ","ìờ","ìở","ìỡ","ìợ","ìu","ìú","ìù","ìủ","ìũ","ìụ","ìư","ìứ","ìừ","ìử","ìữ","ìự",
            "ìy","ìý","ìỳ","ìỷ","ìỹ","ìỵ","ỉá","ỉà","ỉả","ỉã","ỉạ","ỉe","ỉé","ỉè","ỉẻ","ỉẽ","ỉẹ","ỉê","ỉế","ỉề","ỉể","ỉễ","ỉệ","ỉi","ỉí",
            "ỉì","ỉỉ","ỉĩ","ỉị","ỉo","ỉó","ỉò","ỉỏ","ỉõ","ỉọ","ỉô","ỉố","ỉồ","ỉổ","ỉỗ","ỉộ","ỉơ","ỉớ","ỉờ","ỉở","ỉỡ","ỉợ","ỉu","ỉú","ỉù",
            "ỉủ","ỉũ","ỉụ","ỉư","ỉứ","ỉừ","ỉử","ỉữ","ỉự","ỉy","ỉý","ỉỳ","ỉỷ","ỉỹ","ỉỵ","ká","kà","kả","kã","kạ","ke","kễ","ko","kó","kò",
            "kỏ","kõ","kọ","kô","kố","kồ","kổ","kỗ","kộ","kơ","kớ","kờ","kở","kỡ","kợ","ku","kú","kù","kủ","kũ","kụ","kư","kứ","kừ","kử",
            "kữ","kự","ky","lế","lể","lủ","lụ","lứ","lự","lỳ","lỷ","lỹ","lỵ","mể","mễ","mệ","mọ","mú","mư","mứ","mử","mữ","mự","my","mý",
            "mỷ","mỵ","nẽ","nẹ","nễ","nĩ","nố","nờ","nỡ","nù","nứ","ny","ný","nỳ","nỷ","nỹ","nỵ","oá","oả","oã","oạ","oe","oé","oè","oẻ",
            "oẽ","oẹ","oê","oế","oề","oể","oễ","oệ","oi","oí","oì","oỉ","oĩ","oị","oo","oó","oò","oỏ","oõ","oọ","oô","oố","oồ","oổ","oỗ",
            "oộ","oơ","oớ","oờ","oở","oỡ","oợ","ou","oú","où","oủ","oũ","oụ","oư","oứ","oừ","oử","oữ","oự","oy","oý","oỳ","oỷ","oỹ","oỵ",
            "óa","óá","óà","óả","óã","óạ","óe","óé","óè","óẻ","óẽ","óẹ","óê","óế","óề","óể","óễ","óệ","ói","óí","óì","óỉ","óĩ","óị","óo",
            "óó","óò","óỏ","óõ","óọ","óô","óố","óồ","óổ","óỗ","óộ","óơ","óớ","óờ","óở","óỡ","óợ","óu","óú","óù","óủ","óũ","óụ","óư","óứ",
            "óừ","óử","óữ","óự","óy","óý","óỳ","óỷ","óỹ","óỵ","ôa","ôá","ôà","ôả","ôã","ôạ","ôe","ôé","ôè","ôẻ","ôẽ","ôẹ","ôê","ôế","ôề",
            "ôể","ôễ","ôệ","ôi","ôí","ôì","ôỉ","ôĩ","ôị","ôo","ôó","ôò","ôỏ","ôõ","ôọ","ôô","ôố","ôồ","ôổ","ôỗ","ôộ","ôơ","ôớ","ôờ","ôở",
            "ôỡ","ôợ","ôu","ôú","ôù","ôủ","ôũ","ôụ","ôư","ôứ","ôừ","ôử","ôữ","ôự","ôy","ôý","ôỳ","ôỷ","ôỹ","ôỵ","ốa","ốá","ốà","ốả","ốã",
            "ốạ","ốe","ốé","ốè","ốẻ","ốẽ","ốẹ","ốê","ốế","ốề","ốể","ốễ","ốệ","ối","ốí","ốì","ốỉ","ốĩ","ốị","ốo","ốó","ốò","ốỏ","ốõ","ốọ",
            "ốô","ốố","ốồ","ốổ","ốỗ","ốộ","ốơ","ốớ","ốờ","ốở","ốỡ","ốợ","ốu","ốú","ốù","ốủ","ốũ","ốụ","ốư","ốứ","ốừ","ốử","ốữ","ốự","ốy",
            "ốý","ốỳ","ốỷ","ốỹ","ốỵ","ồa","ồá","ồà","ồả","ồã","ồạ","ồe","ồé","ồè","ồẻ","ồẽ","ồẹ","ồê","ồế","ồề","ồể","ồễ","ồệ","ồi","ồí",
            "ồì","ồỉ","ồĩ","ồị","ồo","ồó","ồò","ồỏ","ồõ","ồọ","ồô","ồố","ồồ","ồổ","ồỗ","ồộ","ồơ","ồớ","ồờ","ồở","ồỡ","ồợ","ồu","ồú","ồù",
            "ồủ","ồũ","ồụ","ồư","ồứ","ồừ","ồử","ồữ","ồự","ồy","ồý","ồỳ","ồỷ","ồỹ","ồỵ","ổa","ổá","ổà","ổả","ổã","ổạ","ổe","ổé","ổè","ổẻ",
            "ổẽ","ổẹ","ổê","ổế","ổề","ổể","ổễ","ổệ","ổi","ổí","ổì","ổỉ","ổĩ","ổị","ổo","ổó","ổò","ổỏ","ổõ","ổọ","ổô","ổố","ổồ","ổổ","ổỗ",
            "ổộ","ổơ","ổớ","ổờ","ổở","ổỡ","ổợ","ổu","ổú","ổù","ổủ","ổũ","ổụ","ổư","ổứ","ổừ","ổử","ổữ","ổự","ổy","ổý","ổỳ","ổỷ","ổỹ","ổỵ",
            "ơa","ơá","ơà","ơả","ơã","ơạ","ơe","ơé","ơè","ơẻ","ơẽ","ơẹ","ơê","ơế","ơề","ơể","ơễ","ơệ","ơi","ơí","ơì","ơỉ","ơĩ","ơị","ơo",
            "ơó","ơò","ơỏ","ơõ","ơọ","ơô","ơố","ơồ","ơổ","ơỗ","ơộ","ơơ","ơớ","ơờ","ơở","ơỡ","ơợ","ơu","ơú","ơù","ơủ","ơũ","ơụ","ơư","ơứ",
            "ơừ","ơử","ơữ","ơự","ơy","ơý","ơỳ","ơỷ","ơỹ","ơỵ","ớa","ớá","ớà","ớả","ớã","ớạ","ớe","ớé","ớè","ớẻ","ớẽ","ớẹ","ớê","ớế","ớề",
            "ớể","ớễ","ớệ","ới","ớí","ớì","ớỉ","ớĩ","ớị","ớo","ớó","ớò","ớỏ","ớõ","ớọ","ớô","ớố","ớồ","ớổ","ớỗ","ớộ","ớơ","ớớ","ớờ","ớở",
            "ớỡ","ớợ","ớu","ớú","ớù","ớủ","ớũ","ớụ","ớư","ớứ","ớừ","ớử","ớữ","ớự","ớy","ớý","ớỳ","ớỷ","ớỹ","ớỵ","ờa","ờá","ờà","ờả","ờã",
            "ờạ","ờe","ờé","ờè","ờẻ","ờẽ","ờẹ","ờê","ờế","ờề","ờể","ờễ","ờệ","ời","ờí","ờì","ờỉ","ờĩ","ờị","ờo","ờó","ờò","ờỏ","ờõ","ờọ",
            "ờô","ờố","ờồ","ờổ","ờỗ","ờộ","ờơ","ờớ","ờờ","ờở","ờỡ","ờợ","ờu","ờú","ờù","ờủ","ờũ","ờụ","ờư","ờứ","ờừ","ờử","ờữ","ờự","ờy",
            "ờý","ờỳ","ờỷ","ờỹ","ờỵ","ởa","ởá","ởà","ởả","ởã","ởạ","ởe","ởé","ởè","ởẻ","ởẽ","ởẹ","ởê","ởế","ởề","ởể","ởễ","ởệ","ởi","ởí",
            "ởì","ởỉ","ởĩ","ởị","ởo","ởó","ởò","ởỏ","ởõ","ởọ","ởô","ởố","ởồ","ởổ","ởỗ","ởộ","ởơ","ởớ","ởờ","ởở","ởỡ","ởợ","ởu","ởú","ởù",
            "ởủ","ởũ","ởụ","ởư","ởứ","ởừ","ởử","ởữ","ởự","ởy","ởý","ởỳ","ởỷ","ởỹ","ởỵ","ợa","ợá","ợà","ợả","ợã","ợạ","ợe","ợé","ợè","ợẻ",
            "ợẽ","ợẹ","ợê","ợế","ợề","ợể","ợễ","ợệ","ợi","ợí","ợì","ợỉ","ợĩ","ợị","ợo","ợó","ợò","ợỏ","ợõ","ợọ","ợô","ợố","ợồ","ợổ","ợỗ",
            "ợộ","ợơ","ợớ","ợờ","ợở","ợỡ","ợợ","ợu","ợú","ợù","ợủ","ợũ","ợụ","ợư","ợứ","ợừ","ợử","ợữ","ợự","ợy","ợý","ợỳ","ợỷ","ợỹ","ợỵ",
            "pa","pá","pà","pả","pã","pạ","pe","pé","pè","pẻ","pẽ","pẹ","pê","pế","pề","pể","pễ","pệ","pi","pí","pì","pỉ","pĩ","pị","po",
            "pó","pò","pỏ","põ","pọ","pô","pố","pồ","pổ","pỗ","pộ","pơ","pớ","pờ","pở","pỡ","pợ","pu","pú","pù","pủ","pũ","pụ","pư","pứ",
            "pừ","pử","pữ","pự","py","pý","pỳ","pỷ","pỹ","pỵ","qa","qá","qà","qả","qã","qạ","qe","qé","qè","qẻ","qẽ","qẹ","qê","qế","qề",
            "qể","qễ","qệ","qi","qí","qì","qỉ","qĩ","qị","qo","qó","qò","qỏ","qõ","qọ","qô","qố","qồ","qổ","qỗ","qộ","qơ","qớ","qờ","qở",
            "qỡ","qợ","qu","qú","qù","qủ","qũ","qụ","qư","qứ","qừ","qử","qữ","qự","qy","qý","qỳ","qỷ","qỹ","qỵ","rẹ","rế","rề","ri","rờ",
            "rở","rự","ry","rý","rỳ","rỷ","rỹ","rỵ","sã","sè","sề","sể","sễ","sệ","sí","sì","sỏ","sõ","sỗ","sù","sừ","sy","sý","sỳ","sỷ",
            "sỵ","tề","tễ","tỗ","tộ","tỡ","tợ","tũ","tữ","tỹ","tỵ","ua","uá","uà","uả","uã","uạ","ue","ué","uè","uẻ","uẽ","uẹ","uê","uế",
            "uề","uể","uễ","uệ","ui","uí","uì","uỉ","uĩ","uị","uo","uó","uò","uỏ","uõ","uọ","uô","uố","uồ","uổ","uỗ","uộ","uơ","uớ","uờ",
            "uở","uỡ","uợ","uu","uú","uù","uủ","uũ","uụ","uư","uứ","uừ","uử","uữ","uự","uy","uý","uỳ","uỷ","uỹ","uỵ","úa","úá","úà","úả",
            "úã","úạ","úe","úé","úè","úẻ","úẽ","úẹ","úê","úế","úề","úể","úễ","úệ","úi","úí","úì","úỉ","úĩ","úị","úo","úó","úò","úỏ","úõ",
            "úọ","úô","úố","úồ","úổ","úỗ","úộ","úơ","úớ","úờ","úở","úỡ","úợ","úu","úú","úù","úủ","úũ","úụ","úư","úứ","úừ","úử","úữ","úự",
            "úy","úý","úỳ","úỷ","úỹ","úỵ","ùa","ùá","ùà","ùả","ùã","ùạ","ùe","ùé","ùè","ùẻ","ùẽ","ùẹ","ùê","ùế","ùề","ùể","ùễ","ùệ","ùi",
            "ùí","ùì","ùỉ","ùĩ","ùị","ùo","ùó","ùò","ùỏ","ùõ","ùọ","ùô","ùố","ùồ","ùổ","ùỗ","ùộ","ùơ","ùớ","ùờ","ùở","ùỡ","ùợ","ùu","ùú",
            "ùù","ùủ","ùũ","ùụ","ùư","ùứ","ùừ","ùử","ùữ","ùự","ùy","ùý","ùỳ","ùỷ","ùỹ","ùỵ","ủa","ủá","ủà","ủả","ủã","ủạ","ủe","ủé","ủè",
            "ủẻ","ủẽ","ủẹ","ủê","ủế","ủề","ủể","ủễ","ủệ","ủi","ủí","ủì","ủỉ","ủĩ","ủị","ủo","ủó","ủò","ủỏ","ủõ","ủọ","ủô","ủố","ủồ","ủổ",
            "ủỗ","ủộ","ủơ","ủớ","ủờ","ủở","ủỡ","ủợ","ủu","ủú","ủù","ủủ","ủũ","ủụ","ủư","ủứ","ủừ","ủử","ủữ","ủự","ủy","ủý","ủỳ","ủỷ","ủỹ",
            "ủỵ","ụa","ụá","ụà","ụả","ụã","ụạ","ụe","ụé","ụè","ụẻ","ụẽ","ụẹ","ụê","ụế","ụề","ụể","ụễ","ụệ","ụi","ụí","ụì","ụỉ","ụĩ","ụị",
            "ụo","ụó","ụò","ụỏ","ụõ","ụọ","ụô","ụố","ụồ","ụổ","ụỗ","ụộ","ụơ","ụớ","ụờ","ụở","ụỡ","ụợ","ụu","ụú","ụù","ụủ","ụũ","ụụ","ụư",
            "ụứ","ụừ","ụử","ụữ","ụự","ụy","ụý","ụỳ","ụỷ","ụỹ","ụỵ","ưa","ưá","ưà","ưả","ưã","ưạ","ưe","ưé","ưè","ưẻ","ưẽ","ưẹ","ưê","ưế",
            "ưề","ưể","ưễ","ưệ","ưi","ưí","ưì","ưỉ","ưĩ","ưị","ưo","ưó","ưò","ưỏ","ưõ","ưọ","ưô","ưố","ưồ","ưổ","ưỗ","ưộ","ươ","ướ","ườ",
            "ưở","ưỡ","ượ","ưu","ưú","ưù","ưủ","ưũ","ưụ","ưư","ưứ","ưừ","ưử","ưữ","ưự","ưy","ưý","ưỳ","ưỷ","ưỹ","ưỵ","ứa","ứá","ứà","ứả",
            "ứã","ứạ","ứe","ứé","ứè","ứẻ","ứẽ","ứẹ","ứê","ứế","ứề","ứể","ứễ","ứệ","ứi","ứí","ứì","ứỉ","ứĩ","ứị","ứo","ứó","ứò","ứỏ","ứõ",
            "ứọ","ứô","ứố","ứồ","ứổ","ứỗ","ứộ","ứơ","ứớ","ứờ","ứở","ứỡ","ứợ","ứu","ứú","ứù","ứủ","ứũ","ứụ","ứư","ứứ","ứừ","ứử","ứữ","ứự",
            "ứy","ứý","ứỳ","ứỷ","ứỹ","ứỵ","ừa","ừá","ừà","ừả","ừã","ừạ","ừe","ừé","ừè","ừẻ","ừẽ","ừẹ","ừê","ừế","ừề","ừể","ừễ","ừệ","ừi",
            "ừí","ừì","ừỉ","ừĩ","ừị","ừo","ừó","ừò","ừỏ","ừõ","ừọ","ừô","ừố","ừồ","ừổ","ừỗ","ừộ","ừơ","ừớ","ừờ","ừở","ừỡ","ừợ","ừu","ừú",
            "ừù","ừủ","ừũ","ừụ","ừư","ừứ","ừừ","ừử","ừữ","ừự","ừy","ừý","ừỳ","ừỷ","ừỹ","ừỵ","ửa","ửá","ửà","ửả","ửã","ửạ","ửe","ửé","ửè",
            "ửẻ","ửẽ","ửẹ","ửê","ửế","ửề","ửể","ửễ","ửệ","ửi","ửí","ửì","ửỉ","ửĩ","ửị","ửo","ửó","ửò","ửỏ","ửõ","ửọ","ửô","ửố","ửồ","ửổ",
            "ửỗ","ửộ","ửơ","ửớ","ửờ","ửở","ửỡ","ửợ","ửu","ửú","ửù","ửủ","ửũ","ửụ","ửư","ửứ","ửừ","ửử","ửữ","ửự","ửy","ửý","ửỳ","ửỷ","ửỹ",
            "ửỵ","vễ","vổ","vộ","vủ","vử","vý","vỳ","vỷ","vỵ","xẽ","xẹ","xê","xề","xể","xễ","xĩ","xò","xõ","xọ","xỗ","xộ","xớ","xờ","xỡ",
            "xợ","xủ","xũ","xụ","xừ","xữ","xự","xy","xý","xỳ","xỷ","xỹ","xỵ","ya","yá","yà","yả","yã","yạ","ye","yé","yè","yẻ","yẽ","yẹ",
            "yê","yế","yề","yể","yễ","yệ","yi","yí","yì","yỉ","yĩ","yị","yo","yó","yò","yỏ","yõ","yọ","yô","yố","yồ","yổ","yỗ","yộ","yơ",
            "yớ","yờ","yở","yỡ","yợ","yu","yú","yù","yủ","yũ","yụ","yư","yứ","yừ","yử","yữ","yự","yy","yý","yỳ","yỷ","yỹ","yỵ","ýa","ýá",
            "ýà","ýả","ýã","ýạ","ýe","ýé","ýè","ýẻ","ýẽ","ýẹ","ýê","ýế","ýề","ýể","ýễ","ýệ","ýi","ýí","ýì","ýỉ","ýĩ","ýị","ýo","ýó","ýò",
            "ýỏ","ýõ","ýọ","ýô","ýố","ýồ","ýổ","ýỗ","ýộ","ýơ","ýớ","ýờ","ýở","ýỡ","ýợ","ýu","ýú","ýù","ýủ","ýũ","ýụ","ýư","ýứ","ýừ","ýử",
            "ýữ","ýự","ýy","ýý","ýỳ","ýỷ","ýỹ","ýỵ","ỷa","ỷá","ỷà","ỷả","ỷã","ỷạ","ỷe","ỷé","ỷè","ỷẻ","ỷẽ","ỷẹ","ỷê","ỷế","ỷề","ỷể","ỷễ",
            "ỷệ","ỷi","ỷí","ỷì","ỷỉ","ỷĩ","ỷị","ỷo","ỷó","ỷò","ỷỏ","ỷõ","ỷọ","ỷô","ỷố","ỷồ","ỷổ","ỷỗ","ỷộ","ỷơ","ỷớ","ỷờ","ỷở","ỷỡ","ỷợ",
            "ỷu","ỷú","ỷù","ỷủ","ỷũ","ỷụ","ỷư","ỷứ","ỷừ","ỷử","ỷữ","ỷự","ỷy","ỷý","ỷỳ","ỷỷ","ỷỹ","ỷỵ"
        };

        public string[] cac_am_khong_the_dung_canh_nhau_neu_tu_chi_co_hai_am_tiet = new string[]
        {
            "bĩ","dá","dả","dé","dẹ","dể","dó","dò","dợ","dú","dứ","dử","đạ","đẹ","đí","đì","đỉ","đị","đõ","đớ","đũ",
            "đụ","đư","đứ","đừ","đự","gi","gị","gớ","gư","ha","hã","hẻ","hế","hi","hĩ","hị","hó","hỏ","hõ","hỡ","hợ","hụ","hứ","hử",
            "hữ","ka","lé","lỉ","lĩ","lỏ","lồ","lổ","lư","mế","mố","mừ","nà","nả","ne","nế","nệ","ni","ní","nì","nị","nò","nõ","nồ",
            "nớ","nu","nú","nủ","nũ","nư","nừ","nử","nữ","nự","rạ","rê","rễ","rệ","rí","rì","rĩ","rị","ró","rỏ","rố","rơ","rớ","rù",
            "rụ","rư","rứ","rừ","rử","rữ","sá","sạ","sé","sẹ","sế","sị","só","sồ","sũ","sụ","sữ","sỹ","te","tẹ","tĩ",
            "tó","tõ","tọ","tở","vẹ","vể","vọ","vư","vứ","vừ","vữ","vự","xở","xú","xư"

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


        
        //kiem tra chinh ta
        public bool checkct(string word)
        {
            string tmpword = word.ToLower();
            string[] am_tiet = tmpword.ToCharArray().Select(c => c.ToString()).ToArray();
            int index = 0;
            int wordlength = word.Length;
            bool checkdau = false, checkcuoi = false, checkgiua = true, checktmp1 = true;
            string amdautmp = "", amdautmp2 = "", amcuoitmp = "";



            //kiem tra word co phai la am dau dung mot minh khong
            foreach(string ad in amdau_dung_mot_minh)
            {
                if(tmpword == ad)
                {
                    checkdau = true;
                    checkcuoi = true;
                    break;
                }
            }

            //kiem tra word co phai la am cuoi dung mot minh khong
            foreach(string ac in amcuoi_dung_mot_minh)
            {
                if(tmpword == ac)
                {
                    checkdau = true;
                    checkcuoi = true;
                    break;
                }
            }

            if(checkdau == false)
            {
                checkdau = true;
                while (checktmp1)
                {
                    amdautmp += am_tiet[index];
                    checktmp1 = false;
                    foreach (string ad in amdau)
                    {
                        if (amdautmp == ad)
                        {
                            checktmp1 = true;
                            amdautmp2 = amdautmp;
                            break;
                        }
                    }

                    if (checktmp1 == false)
                    {
                        if (index == 0) checkdau = false;
                        break;
                    }
                    else
                    {
                        if (index < (wordlength - 1))
                        {
                            index += 1;
                        }
                        else break;
                    }
                }
            }
            

            //check am cuoi
            if ((checkdau == true) && (checkcuoi == false))
            {
                /*neu ca word la mot am dau, can kiem tra xem am dau nay co duoc dung mot minh khong
                if((checktmp1 == true)&&(index == (wordlength - 1)))
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
                neu khong, can kiem tra phan con lai cua word co nam trong amcuoi[] khong
                else
                {*/
                    for (int i = index; i < wordlength; i++)
                    {
                        amcuoitmp += am_tiet[i];
                    }

                    //neu tu bi lap lai am dau, tu do chac chan sai chinh ta VD: "aa", "bb"
                    if (amdautmp2 == amcuoitmp) checkcuoi = false;
                    else
                    {
                        foreach (string ac in amcuoi)
                        {
                            if (amcuoitmp == ac)
                            {
                                checkcuoi = true;
                                checkgiua = false;//can phai kiem tra tiep amgiua cua word
                                break;
                            }
                        }

                        /*neu check phan con lai cua word khong nam trong amcuoi[],
                         *  thi can check ca cum tu xem co nam trong amcuoi_dung_mot_minh[] khong
                         *  vi doi khi mot van cung co the la mot tu vidu: "an"
                        if (checkcuoi == false)
                        {
                            amdautmp -= am_tiet[index];
                            amcuoitmp = amdautmp + amcuoitmp;
                            foreach (string ac in amcuoi_dung_mot_minh)
                            {
                                if (amcuoitmp == ac)
                                {
                                    checkcuoi = true;
                                    break;
                                }
                            }
                        }*/
                    }    
                //}              
            }

            /*neu da kiem tra am dau va am cuoi cua tu co ton tai thi kiem tra xem hai am nay co duoc di cung nhau khong.
             * hay buoc nay co the coi la check am giua
             * (khong can kiem tra hai truong hop ca am dau la mot tu hoac ca am cuoi la mot tu)
             */
            if ((checkdau == true) && (checkcuoi == true) && (checkgiua == false))
            {
                checkgiua = true;
                string amgiuatmp = am_tiet[index - 1] + am_tiet[index];

                
                if (word.Length == 2)
                {
                    foreach (string ag in cac_am_khong_the_dung_canh_nhau_neu_tu_chi_co_hai_am_tiet)
                    {
                        if (amgiuatmp == ag)
                        {
                            checkgiua = false;
                            break;
                        }
                    }
                }
                if(checkgiua == true)
                {
                    foreach (string ag in cac_cap_am_khong_duoc_dung_cung_nhau)
                    {
                        if (amgiuatmp == ag)
                        {
                            checkgiua = false;
                            break;
                        }
                    }
                }

                if (checkgiua == true) return true;
                else return false;
            }
            else if ((checkdau == true) && (checkcuoi == true) && (checkgiua == true)) return true;
            else return false;
        }


        public bool checkword(string word)
        {
            bool check1 = false, check2 = false;
            check1 = this.checklength(word);
            check2 = this.checkct(word);
            if (check1 == false) return false;
            if (check1 == false) return false;
            return true;
        }
    }
}

