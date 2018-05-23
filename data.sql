USE [master]
GO
/****** Object:  Database [kim_dung]    Script Date: 5/24/2018 2:17:27 AM ******/
CREATE DATABASE [kim_dung]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'kim_dung', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\kim_dung.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'kim_dung_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\kim_dung_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [kim_dung] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [kim_dung].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [kim_dung] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [kim_dung] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [kim_dung] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [kim_dung] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [kim_dung] SET ARITHABORT OFF 
GO
ALTER DATABASE [kim_dung] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [kim_dung] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [kim_dung] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [kim_dung] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [kim_dung] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [kim_dung] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [kim_dung] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [kim_dung] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [kim_dung] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [kim_dung] SET  DISABLE_BROKER 
GO
ALTER DATABASE [kim_dung] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [kim_dung] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [kim_dung] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [kim_dung] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [kim_dung] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [kim_dung] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [kim_dung] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [kim_dung] SET RECOVERY FULL 
GO
ALTER DATABASE [kim_dung] SET  MULTI_USER 
GO
ALTER DATABASE [kim_dung] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [kim_dung] SET DB_CHAINING OFF 
GO
ALTER DATABASE [kim_dung] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [kim_dung] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'kim_dung', N'ON'
GO
USE [kim_dung]
GO
/****** Object:  Table [dbo].[than_dieu_dai_hiep]    Script Date: 5/24/2018 2:17:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[than_dieu_dai_hiep](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten_chuong] [ntext] NULL,
	[noi_dung] [ntext] NULL,
 CONSTRAINT [PK_than_dieu_dai_hiep] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[than_dieu_dai_hiep] ON 

INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (1, N'Người Dị Khách Trên Bờ Hồ', N'Giang Nam, một dải đất hữu tình gồm nhiều thắng cảnh mà xưa nay khách giang hồ đã từng lưu gót, không một ai không quyến luyến. Bốn mùa đều có hoa nở: Xuân có thuỳ liễu xinh tươi, hạ có anh đào trắng xoá. Nhất là vào đầu thu, trong hồ sen không ngớt những tiếng hát véo von cũ những thân nhân quý tộc. Họ tiêu khiển bằng thú chèo ghe hái sen trông rất thanh lịch.

Năm đó, vào thời Nam-Tống, trấn Lăng hồ, phía Bắc trai thanh gái lịch du ngoạn rất nhiềụ

Một hôm, vào cận tiết Trung thu, dưới hồ sen có một chiếc ghe nhỏ chở năm người thiểu nữ lơ lửng trên dòng nước như mặt gương. Năm thiếu nữ ấy có ba người tuổi suýt soát nhau. Họ vừa hái sen vừa cất tiếng hát:

Sen xa hồ, sen khô nhuỵ úa

Hồ không sen như dải lục đìa hiu

Tình đời mấy kẻ biết yêu

Giữa lúc đó thì hai cô bé kia tuổi mới lên chín, chưa hiểu gì tình tứ của câu hát đó, và cũng không cần để ý, đưa tay chỉ một ông lão ngồi ở hồ sen cười nức nở.

Một cô bé nói:

-Kìa, đến hôm nay ông lão vẫn còn ngồi đó.

Thật vậy, một ông lão đầu râu mốc xếch, quần áo tả tơi, tóc dài và dựng ngược, choàng một chiếc áo dàì cũng rách nát, thủng nhiều chỗ, phía dưới là một tấm xiêm của phụ nữ và có thêu hồ điệp (bướm ) trong trạng thái say sưa và lơi lả. Lão ngồi đó đã ba hôm nay, tay cầm chiếc trống con con cho trẻ em chơi tết Trung thu, thỉnh thoảng lại gõ một hồi vào mặt trống, mắt đăm chiêu nhìn vào tận chân trời xạ Không ai hiểu lão đến từ đâu cả. Mọi người nhìn lão như một người điên hay một kẻ mất trí. Hai cô bé trên thuyền là hai chị em họ, hơn nhau chưa đầy nửa tuổị Cô lớn tên Trình Anh, tính nết đoan trang dịu dàng, tâm hồn chứa đựng đầy tình thương, uỷ mị. Còn cô nhỏ là Lục Vô Song, trái với chị nàng rất ranh mãnh, liến thoắng và hoạt bát. Bởi vậy, tuy hai chị em nhưng mỗi người một tâm tư khác nhaụ

Trong lúc mọi người đang chú ý nhìn lão già kỳ dị thì Lục Vô Song nhảy dựng trên thuyền, chỏ miệng về phía ông già nói:

- Các chị ơi, ông lãi điên kia ngồi đó đã ba ngày, chắc ông ta đói lắm.

Trình Anh bấm nhẹ vào vai Lục Vô Song bảo:

- ấy chết, biết có phải người ta điên hay không. Nói khẽ chứ nếu ông ta nghe được thì khốn !

Lục Vô Song vẫn lớn tiếng:


- Nếu không người điên sao mặc tấmm ciêm phụ nữ, ngồi đó đánh trống làm gì? Lão càng giận chúng ta càng được xem vui mắt !

Dứt lời Lục Vô Song phá lên cười rồi cúi xuống mặt hồ ngắt một gương sen ném về phía ông lãọ

Trình Anh vội đưa tay cản laị

- Hiền muội đừng đùa thế, tội nghiệp người tạ

Nhưng không kịp, chiếc thuyền cách bờ hơn trăm thước, thế mà mặc dù Lục Vô Song còn nhỏ tuổi nàng đã ném chiếc gương sen trúng ngay đầu ông lãọ Lão già kỳ dị vẫn ngồi điềm nhiên đánh trống, mắt vẫn hướng về phía trời xạ Đợi cho chiếc rơi đến, lão nhe răng đớp lấy nhai ngấu nghiến.

Ba người thiếu nữ lớn tuổi thấy lão không hề bóc gì cả, nhai ngấu nghiến của xác lẫn vỏ lấy làm ngạc nhiên lắm lắm. Lục Vô Song lấy làm thú vị, nhặt tiếp một chiếc gương ném đến. Ông lão chưa nhai xong chiếc gương trước đưa đầu ra hứng. Chiếc gương sen rơi vào mé đầu lão và nằm đấỵ Năm cô thiếu nữ phá lên cười một lượt bảo nhau:

- Thật là lý thú.

Lục Vô Song lại ném tiếp. Và cứ mỗi lần chiếc gương sen bay vèo đến, ông lão lè lưỡi ra lám cho chiếc gương sen bay tung lên rồi đưa đầu ra hứng lấỵ Gương sen chồng chất lên đầu lão như những chiếc cổ tháp rất ngoạn mục. Chỉ một lúc, chiếc cổ tháp đó được xây rất cao, gần đến đọt cây thuỳ liễụ Lục Vô Song thấy thế không ném gương sen nữa, bào mọi người:

- Chúng ta chèo thuyền vào bờ đến gần ông ấy xem sao !

Trình Anh nói:

- Không nên, biết đâu ông ấy đang giận chúng ta

Lục Vô Song nói:

- Tiểu muội xem ông ấy không có ý giận chúng ta đâụ Nhưng nếu ông ấy có giận thì làm gì chúng ta được mà sợ.

Trong lúc năm cô thiếu nữ đang bàn cãi với nhau thì lão già kỳ dị lắc đầu cho từng cánh sen rơi vào mồm. Và cứ thế nai cho gần hết chiếc cổ tháp trên đầu lãọ

Trình Anh thấy thế thương tâm, bàn với ba thiếu nữ lớn cho thuyền vào bờ rồi tự mình bước lên dâng cho ông lão một chung trà ngon và nói:

- LãoTrượng ăn sen như thế chắc khát nước lắm.

Ông lão không nói gì cả, tiếp lấy chung trà và uống một hơị

Trình Anh lại tự tay mình lôi vài chiếc gương sen, lấy hạt đưa vào mồm ông lãọ Hơi trà lẫn với vị hương sen khiến ông lão cảm thấy ngọt ngàọ Và đôi mắt hoang vắng đang theo đuổi một bóng hình nào ở nơi chân trời dường như dịu lại, ông ta liếc nhìn Trình Anh chậm rãi và gật đầu tỏ ý cảm ơn.

Nhưng lạ thay, trong lúc ông ta gật đầu xuống mà những chiếc gương sen trên đầu không rơị Ngay sau đó bên bờ hồ lại có tiếng kêu của một con chó. Trình Anh quay lại chỉ thấy một đám trẻ con, đứa cầm gậy, đứa cầm đá đang đuổi theo một con chó ghẻ chạy xuống cây cầụ Con vật ghẻ khốn nạn đó đã từng bị bọn trẻ nghịch ngợm kia đuổi đánh mấy lần vì nó là con chó hoang vo chủ. Trình Anh động lòng thương nên mỗi lần gặp con chó ấy nàng vội vã lấy thức ăn đem chọ

Đang bị đuổi đánh, bỗng thấy ân nhân mình, con chó liền lao đầu đến bên Trình Anh có ý cầu cứụ

Trình Anh nói với bầy trẻ:

- Thôi! Các em chớ đánh đập nó tội nghiệp. Nó là một con vật bệnh hoạn, vô chủ, đáng thương hạị

Bọn trẻ thấy Trình Anh là gái, lại không lớn hơn tụi nó là bao nên sì sộ không nghe lờị Một đứa trong bọn trẻ, vẻ mặt đanh ác nhất xông ra nói:

- Chúng ta đánh chó can gì đến mày mà can thiệp. Hãy đứng dang ra kẻo liên luỵ đến thân.

Lục Vô Song đứng bên chị, thấy thằng bé hỗn lão bèn bước tới nói:

- Tao bảo chúng bay không được tàn nhẫn với con vật nàỵ..

Lục Vô Song chưa dứt lời, thằng bé đã nhảy chồm tới, đưa tay thoi vào mặt. Lục Vô Song né vội sang một bên làm cho thằng bé mất thăng bằng té nhủi về phía trước. Thừa thế, cô ta tung chân đạp mạnh vào vai làm cho hắn cắm đầu xuống, mặt va phải mô đất, gãy mất hai chiếc răng cửạ Thích chí, Lục Vô Song đứng vỗ tay cườị Trong lúc đó Trình Anh thấy thương tâm vội đỡ thằng bé dậy, lau các vết máu trên mặt và vỗ về:

- Thôi! Em đừng khóc ! Chỉ tại em tánh hung hăng! Em có đau lắm không ?

Nàng vừa nói vừa rút chiếc khăn ra lau những vết máụ Nhưng thằng bé không lấy thế làm lành, đưa tay xô mạnh Trình Anh ra và nguyền rủa:

- Tao không cần chúng bay an ủi taọ Chúng bay là lũ không cha không mẹ , thua gì con chó ghẻ vô chủ kiạ

Lục Vô Song tức giận bước tới, toan đấm vào mặt hắn ta một thoi nữa nhưng Trình Anh ngăn lại:

- Nó đã bị thương, hiền muội đừng giận nữa!

Thằng bé trố mắt nhìn Lục Vô Song chòng chọc, nhưng nó vừa bị đạp, liệu không đủ sức chống cự liền xua lũ trẻ bỏ chạy, vừa chạy vừa chửi rủa đủ lờị Qua đến giữa cầu, lũ trẻ nhặt đá ném vào chị em Trình Anh tới tấp. Chị em Trình Anh biết võ nghệ nên tránh né lanh lẹ, chỉ tội nghiệp ba cô thiếu nữ lớn tuổi bị gạch ngói rơi trúng người la ôi ốị

Bây giờ ông lão cùng đứng bên cạnh chi em Trình Anh và cũng bị gạch ngói ném trúnng, nhưng ông ta vẫn điềm nhiên không hề né tránh, và cũng không hề tỏ ra đau đớn gì cả. Bọn trẻ cho kỳ lạ, tập trung cả gạch ngói một lượt ném ông lão nhưng ông ta vẫn như thường. Chúng càng thích thú, càng cố gắng ném gạch đá nhiều hơn. Lục Vô Song bực tức trước cử chỉ trêu ngươi đó, cô ta hét lên một tiếng, toan nhảy phóc qua cầu để cùng với bầy trẻ ăn thua một trận. Nhưng ông lão đã kịp thời cản lạị

Ông ta đứng án ngữ trước mặt chị em Trình Anh, gục đầu cho cho hai cánh sen rớt xuống , dùng lưỡi đưa vào mồm nhai ngấu nghiến. Nhưng lần này ông ta không nuốt, búng miệng phun vào đám trẻ con. Xác gương sen bay vụt đến trúng vào đứa nào cũng tỏ ra đau đớn, ù té bỏ chạỵ Lục Vô Song thích thú cườị Đồng thời cô ta cũng ngạc nhiên tự hỏi:

- Xác gương sen nhẹ như bông, ông lão làm sao phun ra xa được. Mà vật nhẹ như thế dẫu có trúng thì làm thế nào đau đớn được.

Cả chị em Trình Anh cũng đồng kinh ngạc và nghĩ như thế. Thấy bâỳ trẻ rên rỉ chạy trốn hết, ông lão kỳ dị ngửa mặt lên trời nói:

- Theo ta chăng ?

Nói xong ông ta rảo bước về hướng Tâỵ Lục Vô Song cầm tay Trình Anh nói:

- Chị ơi, chúng ta theo ông lão này xem thử !

Trình Anh còn trù trừ chưa quyết. Ba cô thiếu nữ lớn tuổi cản lại:

- Thôi, chớ nên đi chơi xa, hãy trở về sớm là hơn. Dì và dượng biết được sẽ rầy la không ít.

Lục Vô Song thấy Trình Anh do dự, nắm chặt tay nói:

- Nếu chị không đi thì em đi một mình.

Từ bé đến giờ, chị em Trình Anh lúc nào đi chơi đâu cũng có nhau, chẳng lẽ Trình Anh để cho Lục Vô Song đi một mình. Biết không cản trở được ý định của em, Trình Anh miễn cưỡng bước theọ Ba cô thiếu nữ lớn vừa ái ngại vừa sợ sệt đứng nơi bờ hồ kêu réọ Bóng ông già quái dị và chị em Trình Anh khuất dần trong bãi dâu xanh.

Đi được một lúc, ông già quay đầu lại thấy chị em Trình Anh lẽo đẽo theo sau mình, ông lão liền dnag tay kẹp mỗi người vào mỗi nách, phi thân vùn vụt như baỵ

Chị em Trình Anh nghe gió tạt vào tai ù ù, và những rặng cây bên đường lướt vun vút, còn chân ông lão hình như không chấm đất.

Thật vậy! lão già kỳ dị đó đã dùng thuật khinh công bồng chị em Trình Anh đi với tốc độ phi thường cho đến nỗi Lục Vô Song là cô gái ranh mãnh, bạo dạn nhất cũng có cảm giác sợ sợ . Cô ta la lớn:

- Thôi thôi! xin lão trượng hãy buông chị em tôi rạ Tôi không muốn theo lão trượng nữạ

Mặc kệ, lão già như không để ý lời nói của Lục Vô Song, lão càng gia tăng tốc độ.

Bị ông lão làm trái ý, Lục Vô Song căn mạnh vào cánh tay cảu lão mấy cáị Lão già hình như đã quá hiểu tính nết của Lục Vô Song nên vẫn xem như không, cha+?ng hề tỏ ý giận dữ. Trái lại, Lục Vô Song cảm thấy cánh tay ông lão như sắt đá, hàm răng nàng vừa cắn vào đã tê buốt, đau thấu tận tâm can.

Qua một lúc dùng thuật phi hành, ông lão dừng chân buông chị em Trình Anh giữa một bãi tha ma, trước mặt chân trời xa tha+?m.

Trình Anh lo lắng ôn tồn thưa:

- Ông ơi, Xin ông cho chị em tôi trở về kẻo tốị Chúng tôi không muốn ở đây nữạ

ông lão nhìn chòng chọc vào mặt Trình Anh không nói nửa lờị Cái nhìn của ông chứa đựng một nỗi buồn thê lương, ảm đạm làm sao, khiến cho Trình Anh, một cô gái mới lên chín cũng cảm nhận được. Trình Anh phút chốc động lòng trắc ẩn thấy thương hại vô cùng, và cô lại còn thấỳ nỗi buồn đó gợi vào tâm khảm mình một bi thảm, thiết thạ

Cô ta thỏ thẻ:

- Này ông ơi ! Tôi thấy ông buồn lắm !Ông cần tìm chốn khuyây khoả, vậy ông đưa hai chị em chúng tôi trở về bờ hồ. Từ nay cứ mỗi chiều chị em chúng tôi sẽ đến đó làm vui cho ông và hái sen bóc hột cho ông ăn nhé !

Lời nói thực thà của cô bé lên chín làm ông lão thấy cảm động rưng rưng nước mắt. Ông ta hé răng nói như than:

- Đúng vậy ! Đã bốn mươi năm qua không biết ai để vui buồn cùng lão!

Rồi sự đau đớn trong lòng lão vừa xuất hiện trên nét mặt phút chốc bỗng thay đổị Lão trở nên giận dữ, hung ác, hét lớn:

- Hà nguyên Quân, Hà nguyên Quân là gì của mày ? Lão chụp lấy Trình Anh, một tay nắm vai, một tay nắm lưng xốc lên quay một vòng ngược lên trờị

Lão vừa quay vừa hét: - Hà nguyên Quân, Hà nguyên Quân !

Trình Anh khiếp vía muốn la lên nhưng không ra tiếng. Vàì giọt nước mắt rươm rướm lăn trên đôi gò má cô bé.

Ông lão lại rít lên:

- Mày khóc ử Mày khóc ử Thì ra đã 40 năm nay mày vẫn thế! Vì sao mày không trốn theo ta ? Mày chê ta xấu xí ? Mày khóc ! Mày thương hại ta ?

Qua một lúc lão dừng tay nhìn tận mặt Trình Anh.

Trình Anh khiếp sợ rụt rè:

- Không, không! Tôi không khóc ! Tôi không khóc !

Lào già cười chua chát nói:

- ừ, Ta đâu xứng đáng nhận giọt nước mặt của em! Em không bao giờ có thể bố thí cho ta một giọt nước mắt. Thế thì ta còn sống trên đời này để làm gì.

Dứt lời ông lão xô mạnh Trình Anh ra và gắng lấy sức bình sinh của hai tay, lão lao vào tấm bia xanh bên cạnh. Tấm bia bằng đá xanh chôn chặt dưới đất, bị sức mạnh của lão bật tung lên. Còn ông lão cũng nằm sóng sượt bên tấm bia đá nặng hơn ngàn cân.

Lục Vô Song hốt hoảng, kêu thất thanh:

- Chị ơi, chúng ta đi trốn mau!

Cô bé vừa nói và bước tới nắm tay Trình Anh kéo chạỵ Trình Anh chạy theo Lục Vô Song được mấy bước, quay lại thấy ông lão máu me lai láng, nằm ngất lịm nên không nỡ bỏ đi, nói với Lục Vô Song:

- Hình như ông ấy chết mất. Chúng ta trở lại xem sao!

Lục Vô Song nói:

- Nếu lão chết tất thành quỷ, chúng ta đến gần nguy hiểm.

Trình Anh nghĩ thầm : "Chắc ông này có một dĩ vãng quá đau thương nên mới liều thân như vậy". Nhưng để cho lão chết lòng cô bé thấy không an. Trình Anh nói với Lục Vô Song:

- Đừng để ông ta chết tội nghiệp. Chị định chắc ông ta lúc tỉnh dậy sẽ không hung dữ và điên dại như lúc nãy đâụ

Lục Vô Song nghe lời chị. Hai chị em nắm tay lần bước đến gần. Máu tươi vẫn còn phụt ra, nhuộm đỏ cả mặt mày và râu tóc ông lãọ

Trình Anh thỏ thẻ gọi:

- Ông ơi !ông có đau lắm không ?

Ông lão rên lên một tiếng, tiếng rên chứa đầy uất hận. Trình Anh bạo dạn, bước đến lấy chiếc khăn lau máu trên mặt cho ông lãọ Nhưng máu ra nhiều quá, chiếc khăn cô bé ướt đẫm mà máu cứ phụt mãi như xốị

Trình Anh thở dài, ngẫm nghĩ một lúc rồi hé răng cắn vào vạt áo, xé ra một miếng cột nơi vết thương cho ông lãọ

Lục Vô Song thấy thế nói:

- Chị ơi, chị xé áo như thế lúc về nhà gia gia trông thấy chúng ta không khỏi bị quở mắng.

Trình Anh buồn bã đáp:

- Gia gia lúc nào cha+?ng rầy mắng chúng tạ Việc chị làm chị sẽ chịu cho gia gia trừng phat.

Vết thương ông lão được rịt lại máu cầm không chảy nữạ Và ông lão từ từ hồi tỉnh, nói khẽ qua hơi thở:

- Em lại đến cứu ta ử Không không, em đừng làm thế ! Vì sao em không để ta chết cho an thân.

Thấy ông lão tỉnh lại Trình Anh mừng rỡ hỏi: - Ông còn đau lắm không ?

Ông lão lắc đầu nói:

- Ta đau lắm, Ta đau đã 40 năm naỵ Ta không đau ở đầu mà đau ở lòng, em ơị

Trình Anh lấy làm lạ, ngơ ngác tự hỏi:

- Tại sao ông lão chạm đầu vào bia mộ lại không đau ở đầu mà đau ở lòng ? Thật quái ghở!

Nhưng Trình Anh, cô bé lên chín làm sao hiểu nổi cái đau bùôn dĩ vãng của con người sống yếm thế ấỵ

Cô bé cứ triền miên suy nghĩ và lau vết thương ông lão cho đến lúc dịu ha+?n. Bây giờ ông lão hé mắt nhìn Trình Anh, cái nhìn như nuối tiếc, đau thương. Ông ta rên rỉ:

- Em nhứt định không cùng ta hội ngộ ? Chúng ta đành phải chia ly mãi mãi chứ còn biết làm saỏ Trước khi ly biệt em có thể tặng cho ta vài giọt nước mắt chăng?

Giọng rên rỉ như hướng về dĩ vãng và quá bi ai khiến cho Trình Anh chạnh lòng nghĩ đến kiếp phong trần, suốt đời chỉ tha thiết cầu khẩn một tình thương. Nhưng tình thương nào đã làm cho ông lão đau đớn điền cuồng đến thế. Thật tội nghiệp !

Đột nhiên Trình Anh rơm rớm nước mắt. Giọt nước mắt trong vắt như hai giọt sương từ từ lăn trên gò má cộ

Ông lão trông thấy rú lên một tiếng, đôi mắt xoe tròn, hơi thở hổn hển:

- Em đã vì ta mà rơi lệ! Ôi chao! những giọt nước mắt đầm ấm làm sao!

Lão ôm chầm Trình Anh vào lòng mà nức nở. Sự xúc động kích thích vào lòng một em bé măng tơ, bé nhỏ. Trình Anh quên cả sự thực trước mắt. Cô bé cũng ôm chầm lấy ông lão khóc sướt mướt như hai kẻ yêu nhau tự thuở nàọ

Lục Vô Song đứng nhìn cảnh tượng quái dị một lúc rồi không thể nhịn cười được cô bé bật lên tiếng cười thích thú.

Tiếng cười có vẻ chế nhạo trước cảnh thương tâm, khiến ông lão bừng tỉnh, xô Trình Anh ra đừng phắt dậy, quắc mắt nhìn Lục Vô Song hét:

- à ra mi! Mi vừa thương hại ta, lại vừa chế nhạo tạ Được, ta sẽ cho mi gặp khổ suốt đờị

Nhưng, vừa dứt lời, lão già lại tỏ vẻ suy nghĩ. Đôi mắt lão đăm đăm nhìn Lục Vô Song rồi quay lại nhìn Trình Anh nói:

- Không ! Không ! Em không phải là nó. Thế ra Hà Nguyên Quân là gì của các em? Tại sao các em lại giống nó thế ?

Hai chị em Trình Anh nhỏ tủổi, song từ diện mạo đến tính tình khác biệt nhaụ Trình Anh có nước da trắng mịn nõn nà, có thân hình cân đối, tánh nết ôn hoà; ngược lại Lục Vô Song có nước da ngâm ngâm màu đỏ, người cao mảnh khảnh, tánh lại liến thoắng, ngạo nghễ.

Lục Vô Song nghe lão già nói, xen vào đáp:

- Chúng tôi nào có giống ai đâụ Sao ông lại bảo giống một người khác.

Lão già trừng mắt nhìn cả hai chị em cô bé, rồi bất thần lấy tay đấm vào đầu như cố tìm ra một hình ảnh nào trong ký ức. Ông ta nói:

- Thôi rồi! Ta loạn óc rồi! Này tiểu diệt, có phải cháu họ Lục không ?

Lục Vô Song ngạc nhiên đáp:

- Chính tôi họ Lục. Nhưng vì sao ông lại biết?

Lão già không đáp hỏi tiếp:

- Tổ phụ của tiểu diệt là Lục Triển Nguyên phải chăng?

Lục Vô Song gật đầu:

- Đúng vậỵ

Ông lão trầm ngâm một lúc trong yên lặng. Bỗng ông ta với ta bồng xốc Trình Anh lên không, nhìn vào mặt hỏi:

- Còn tiểu diệt này họ gì? và gọi Lục Triển Nguyên là gì?

Lần này Trình Anh không sợ sệt nữa bạo dạn đáp:

- Tôi họ Trình, tên Anh. Ngoại tôi họ Lục nên mẹ tôi họ Lục.

Ông lão cười khanh khách nói:

- Thôi đúng rồi ! Lục Triển Nguyên và Nguyên Quân sinh đặng một trai một gáị

Đoạn ông quay về phía Lục Vô Song nói tiếp:

- Con trai của Lục Triển Nguyên và Nguyên Quân chính là cha Lục tiểu diệt đấỵ Còn con gái của hai người này là mẹ của Trình tiểu diệt đâỵ Do đó mà hai cháu đều giống Nguyên Quân. Một cháu thì giống cái dáng yêu kiều, một cháu thì giống cái liến thoắng, ngang ngạnh.

Trình Anh cha+?ng hề biết bà ngoại mình tên Hà Nguyên Quân.

Từ bé đến giờ cô ta chỉ biết bà ngoại là bà ngoại mà thôị Còn Lục Vô Song cũng thế, cha+?ng biết đến danh tánh của bà nội mình.

Nghe ông lão nói, hai chị em đinh ninh rằng con người kỳ dị đó ha+?n có liên quan gì đến dònng họ mình trước đâỵ Bấy giờ ông lão thả Trình Anh xuống đất, ông ta ôn tồn nói với hai cô bé:

- Các cháu hãy dắt ta đến thăm Lục Triển Nguyên nhé?

Trình Anh thưa:

- Ông ngoại cháu không còn đây nữạ

Ông lão ngạc nhiên hỏi:

- Tại sao thế ? Ta cùng ông ngoại cháu đã có lời nguyền cùng nhau tương ngộ mà!

Trình Anh nói:

- Ông cháu mất từ mấy tháng nay, ông không thấy chúng cháu đang chịu tang saỏ

Ông lão nhìn thấy hai chị em Trình Anh đều thắt lưng gai nên tin lời và tỏ vẻ trầm ngâm luyến tiếc, lầm bẩm nói một mình: "Thế là bốn mươi năm nay ta đã uổng công mang xiêm phụ nữ, uổng công tập luyện công phu".

Lão ngửa mặt lên trời cười mấy tiếng thật lớn, tiếng cười vung theo gió làm rùng rợn cả bãi tha mạ

Lúc ấy mặt trời bắt đầu tốị Màn đêm rũ trên những cành thùy liễu, bày ra một cảnh trí hãi hùng.

Lục Vô Song bắt đầu cảm thấy lo sợ, níu áo Trình Anh bảo:

- Thôi, chúng ta về đi ! Chị ơi !

Ông lão bỗng hét lên:

- Trời ơi! Thế thì Hà Nguyên Quân phải đau khổ lắm sao! Hiu quạnh lắm sao! Này các cháu ơi, các cháu hãy đưa ta về thăm bà cháu đị

Lục Vô Song nói:

- Bà chúng tôi không còn nữạ

Câu nói như một tiếng sét đánh vào tai, ông lão nhảy lồng lên như con vật bị đau, hai hàm răng nghiến chặt nói:

- Các cháu nói saỏ Các cháu không nói dối lão chứ ? Bà các cháu đã chết ? Chết? Chết?

Trình Anh thấy cử chỉ ông lão, sợ tái mặt, nói không ra tiếng. Qua một lúc cô bé mới thỏ thẻ đôi lời:

- Ông ơi, ông làm các cháu sợ quá ! Vâng, bà các cháu chết rồi! Chết cùng một lúc với ông các cháụ

Ông lão nắm chặt hai bàn tay đấm vào bụng la lớn:

- Hỡi ơi ! Chết rồi saỏ Chết rồi saỏ Thế ta không bao giờ còn gặp mặt nữả

Sau phút giận dữ, lão dịu hẳn người lại mếu máo khóc:

- Ta nhớ ngày nào, lúc ly biệt, nàng hứa nhất quyết sống để cùng ta hội ngộ! Thế là giấc mộng đã tan tành, thế là lời nguyền đã bội ước.

Rồi như quá cảm kích, lão trở thành đau đớn, mất bình tĩnh, la rống lên như một con hổ. Lão bẻ gãy một cành cây cầm nguyên cả nhánh múa may quay cuồng.

Trình Anh và Lục Vô Song sợ quá, chẳng biết lão còn làm gì nữạ Hai chị em nắm tay nhau chờ đợị

Bỗng nhiên lão tung hai cây ra, chạy đến một gốc cây thuỳ dương ôm tận gốc, xây mấy vòng rồi rên rỉ:

- Em đã hứa cùng ta sao em lại bội ước. Em đã bảo nhất định có ngày tương ngộ kia mà.

Tiếng rên rỉ của lão vang dội giữa bãi tha ma nghe rất hãi hùng. Đoạn, lão ngồi chồm hổm xuống, đặt hai bàn tay lực lưỡng bám chặt gốc cây, rống lên một tiếng như sấm:

- Lên!

Gốc thùy dương vĩ đại kia đánh phứt một tiếng, gốc cây trốc lên, lão bẻ ngang giữa thân cây, cầm cả cành lá múa quay tròn, nhẹ nhàng như cầm một chiếc dù to tướng. Tiếng gió vùn vụt, cành lá xào xạc. Thật là một sức mạnh không tưởng tượng nổi!

Nhưng thần sắc của lão cũng lần lần lắng dịụ Lão buông gốc thùy dương ra, lền bước đến bên chị em Trình Anh nhoẻn một nụ cười, có vẻ thiện cảm nói:

- Lão đã làm các cháu sợ hãi! Lão thật lỗi lầm! Nhưng thôi! Mộ của ông bà các cháu nơi đâu hãy chỉ cho lão đến đó thăm viếng.

Lục Vô Song bấm tay Trình Anh cố ý chặn trước câu trả lờị Nhưng Trình Anh vốn thật thà không rõ ý định của nó liền nói:

- Mộ ông bà các cháu chôn gần trang viên, một bên có gốc cây hoè. Ông đem các cháu trở về các cháu sẽ chỉ chọ

Ông lão nhón mình lên, nhìn phía trời xa như muốn nuốt cả không gian. Lão kẹp hai cô bé vào mình và tung chân chạy như bay, hướng về phía gốc cây hoè. Lão nhắm thẳng đường không quan tâm gì đến trở ngạị Rạch, tường, sông hồ, lão nhảy qua hết bất kể sâu cạn, rộng hẹp.

Cha mẹ Lục Vô Song vốn là những tay võ nghệ cao cường. Hai cô bé này cũng đã từng thấy lối khinh công khác thường nhưng so với lão già này thì cha mẹ Lục Vô Song còn phải nhiều năm tập luyện mới sánh nổị

Trong khoảng khắc lão đã đến trước một gốc cây hoè. Nơi đó, quả nhiên có hai ngôi mộ nằm song song, trước mỗi ngôi mộ có dựng một tấm bia còn mới, nét chữ đỏ khắc vào đá chưa phai màụ Trên mộ, cỏ non lơ thơ lởm chởm.

Lão đặt hai chị em Trình Anh xúông đất, áp mặt vào hai tấm bia mộ cố đọc hai hàng chữ trong bóng tối nhá nhem :"Tiên khảo Lục Công Triển - Nguyên chi mộ" và " Tiên tỉ Lục Man Hà phu nhân chi mộ". Đọc xong, lão trầm ngâm nét mặt không khóc nhưng nước mắt lão cứ tuôn ra trào trên hai gò má nhăn nheo hốc hác.

Bấy giờ, đôi mắt lão không trông thấy mọi vật xung quanh nữạ Lão chỉ thấy hai tấm bia mộ... Hai tấm bia đang án ngữ trước tâm tư u buồn của lãọ

Bỗng, lão thấy như hai tấm bia đá lay động và biến thành đôi trai tài gái sắc. Nàng là một thiếu nữ yêu kiều, diễm lệ. Còn chàng là một thanh niên tuấn tú, uy nghị Họ nhảy múa trước mặt lão như đôi hồ điệp lả lơi say nắng màu xuân.

Bất giác lão hét lên:

- Ôi, thế này thì quá lắm rồi! Họ dám tặng nhau chiếc xiêm hồ điệp.

Lão vung tay lên, lấy hết sức bình sinh đấm vào trang thanh niên tuấn rú đang ngạo nghễ trước mắt lãọ Nhưng cú đấm cuả lão trúng vào chiếc bia mộ Lục Công Triển phát ra một tiếng "bốp" ghê hồn.

Chị em Trình Anh không hiểu gì cả.

Lão hét lớn:

- Mày trốn đi đâu! Hèn nhát !

Rồi một lần nữa, hai tay lão đấm túi bụi vào tấm biạ Càng đánh lão càng hăng và lão rống lên những tiếng nghe rùng rợn.

Cuối cùng, tấm bia đá tan ra từng mảnh. Lão cười một cách khoái trá:

- A ! Mày bị tao đánh nát sọ rồị Thôi, ta còn mặc tấm xiêm hồ điệp này làm gì nữạ

Lão đứng dậy cởi chiếc xiêm hồ điệp của lão đang mặc trong người, xé ra từng mảnh tan nát, và ném tung lên ngôi mộ Lục Công Triển.

Lão nhìn từ lưng lão xuống đến hai chân, thấy không còn chiếc xiêm phụ nữ mà lão đã từng mặc trong hơn 40 năm trời, lão thích chí cười khanh khách. Tiếng cười như điên như dạị Bỗng tiếng cười lão im bặt. Lão đứng lặng yên cảm thấy như có điều gì chưa thoả. Lão lẩm bẩm:

- Ta không thể không thấy mặt nàng.

Dứt lời, lão cúi xuống xoè hai bàn tay bấu vào ngôi mộ của Hà Nguyên Quân , bới đất lên từng mảnh. Và cứ thế, lão đào mãi cho đến lúc nắp quan tài lộ ra trước mặt.

Bây giờ hai chị em Trình Anh mặt mày tái nhợt, hai cô bé run rẩy năm tay nhau chạy trốn. May mà lão già đó mắc đào mả, không chú ý đến nên hai cô bé mới chạy thoát.

Hai cô bé chạy được một lúc, qua khỏi mấy khúc quanh, chẳng còn thấy bóng ông già đào mả đâu nữa mới yên lòng theo đường trở về Lục gia trang.

Bấy giờ trời cũng vừa tối, Lục Vô Song hấp tấp chạy vào sảnh đường la rối rít:

- Thân phu ơi! Thân mẫu ơi! có người đang đào mả bà nộị

Lục Lập Đỉnh, cha Lục Vô Song lúc đó đang trò truyên với ba người khách lạ.

Lục Lập Đỉnh trước kia vốn được cha mẹ công phu giáo dục theo nề nếp gia phong của thuở ấỵ Tuy võ nghệ cao cường, song từ nhỏ đến giờ bị cha mẹ cấm tuyệt con đường giang hồ mã thượng, nên giới hảo hớn chẳng mấy ai biết tên. Lục Lập Đỉnh cố nhiên không lấy thế làm vui, song muốn tròn chữ hiếu phải tuân lệnh gia nghiêm, đành cam mãi một tài nghệ trong trấn Lãng hồ, nơi đất Giang Nam ngày naỵ

Một hôm, Lục Lập Đỉnh đang ngồi suy nghĩ về dĩ vãng của song thân trong đại sảnh, bỗng nghe ngoài cửa có tiếngg ngựa hí và tiếng người kêu:

- Chúng tôi là kẻ hậu bối muốn xin vào yết kiến Lục Lão công.

Lục Lập Đỉnh đoán biết họ là khách lạ tìm đến, vì đất Giang Nam hiểm trở, toàn là sông rạch. Nếu không có việc gì thì không ai muốn dừng bước.

Không muốn để khách lạ đứng chờ lâu, Lục Lập Đỉnh chạy ra cổng, thấy có ba người khách tha phương, thân hình lực lưỡng, cỡi ngựa cao, lưng khoác thanh y đầy bụi trắng, đang đứng chờ.

Thấy Lục Lập Đỉnh cả ba đều xuống ngựa, chắp tay thi lễ và nói:

- Chúng tôi là kẻ ở xa, muốn tìm đến đây ra mắt Lục lão công.

Lục Lập Đỉnh nghe khách nhắc đến song thân mình, long buồn ứa lệ đáp:

- Tôn nghiêm tôi đã thất lộc hơn 3 tháng naỵ Quý vị là ai xin cho biết danh hiệụ

Ba người khách lạ nghe nói, mặt mày biến sắc, vẻ mặt lo lắng của họ hiện rõ trên những vầng sám đen và biến thành màu đất. Họ như tán loạn, mất trí, đang đứng thửo không nói ra lờị

Lục Lập Đỉnh chưa hiểu gì cả, thấy thế hỏi:

- Xin quý vị cho biết quý vị đến đây tìm phụ thân tôi có việc gì?

Ba người đứng yên không đáp. Một người cất tiếng than:

- Thôi thế là hết! Thế là hết ! Chúng ta không thể nàơ cản được số mệnh.

Ba người cúi đầu chào Lục Lập Đỉnh một cách lễ phép và hấp tấp lên ngựạ Một người bước xuống ngựa nói:

- Lẽ nào chúng ta đến đây mà không vào từ đường bái lạy anh linh của lão anh hùng.

Lục Lập Đỉnh vội đỡ lời, nói:

- Thưa, tôi không muốn làm phiền quý vị.

Một người trả lời:

- Không, chúng tôi rất thành kính anh linh của lão anh hùng. vậy xin gia chủ cho chúng tôi đến từ đường làm lễ lão công.

Lục Lập Đỉnh đáp:

- Vậy tôi xin mời quý vị theo tôị

Cả ba liền xuống ngựa phủi sạch lớp bụi mốc trên vao áo rồi bước theo chân Lục Lập Đỉnh vào hậu sảnh.

Cả ba đứng chắp tay trước bàn thờ Lục công và phu nhân tỏ ra rất cảm động. Họ đăm đăm nhìn trên bàn thờ rồi rồi khóc tấm tức như người trong thân thuộc. Lục Lập Đỉnh cũng động lòng trước cảnh tượng ấy, rưng rưng đôi dòng lệ khóc theọ

Trong ba người có người dáng hơi thấp và béo phệ nói:

- Châu hiền đệ, chúng ta xin cáo biệt gia chủ để lên đường.

Người được gọi Châu hiền đệ đưa tay lau nước mắt, cúi chào Lục Lập Đỉnh nói:

- Thưa Lục huynh, chúng tôi bái lễ xong, lục Huynh cho phép chúng tôi từ biệt.

Lục Lập Đỉnh ân cần mời:

- Xin quý vị hãy cùng tôi ra tiền sảnh uống chén trà cho ấm lòng đã.

Ba người lễ phép, nói:

- Chúng tôi không dám làm phiền gia chủ.

Nói xong ba người liền quay gót bước ra cổng.

Lục Lập Đỉnh thấy dáng điệu của ba người, người nào trông cũng con nhà võ, mà sao đến cũng hấp tấp, đi cũng hấp tấp nên có ý nghi hoặc nghĩ thầm:

- "Chắc ba người này có điều chi khẩn yếu".

Lục Lập Đỉnh liền bước theo tận cổng.

Ba người đến cổng liền chắp tay chào Lục Lập Đỉnh một lần cuối cùng rồi nhảy phóc lên lưng ngựạ

Một trong ba người vừa đưa chiếc roi ngựa lên thì vai áo bỗng hất ra để lộ trên da một vết bầm đỏ ửng.

Lục Lập Đỉnh trông thấy thất kinh, buột miệng kêu:

- Quí hữu đã bị "xích luyện thần chưởng " rồị

Bốn tiếng "xích luyện thần chưởng" như có sức mạnh lôi ba người khách trở lại vơí Lục Lập Đỉnh. Ba người run lập cập quay ngựa trở lại, đến trước Lục Lập Đỉnh cúi đầu nói:

- Ôi chao! Chúng tôi kẻ ngu phu, đứng trước núi Thái sơn mà không thấỵ Lục hiệp sĩ đã biết chúng tôi là bị "xích luyện thần chưởng " vậy xin mở lòng nhau cứu giúp chúng tôị

Lục Lập Đỉnh khiêm nhường nói:

- Kẻ hèn này võ công chưa rèn luyện được bao nhiêụ Trước kia nhờ thân phụ truyền dạy nên mới biết đôi chút về chưởng thuật nàỵ

Ba người khách lạ như bừng tỉnh, nhảy phóc xuống ngựa, cúi rạp đầu xuống đất nói:

- Trong lúc bối rối, chúng tôi đã quên mất Lục đại huynh là con của Lục lão công lẽ nào không thừa hưởng cái di sản ấỵ

Lục Lập Đỉnh không nói gì cả bước tới đỡ ba người khách lạ, dắt về đại sảnh để hỏi thăm duyên cớ. Trong lúc đang nói chuyện thì Lục Vô Song hớt hãi từ ngoài chạy vào, miệng nói rối rít. Lục Lập Đỉnh bận tiếp khách không đẻ ý đến lời nói của ái nữ, vội xua đuổi:

- Việc gì mà rối ren thế, chớ có vô lễ, hãy trở về hậu cảnh lập tức.

Lục Vô Song thấy cha mình không để ý đến quan hệ liền thưa:

- Thưa cha, việc này quan hệ lắm, không phải chuyện thường. Có một người đang quật mả bà nội của con.

Lục Lập Đỉnh ngơ ngác cau mày hét:

- Súc sanh đừng nói bậy! Có ai dám làm chuyện phi thường ấỵ

Lục Vô Song thấy cha mình không tin lời vội cãi lại:

- Quả thật như vậỵ Nếu cha không tin thì ra gốc hoè sẽ thấỵ

Bấy giờ Trình Anh đã về đến nhà và cũng nói y như Lục Vô Song đã nóị

Lục Lập Đỉnh xưa nay vốn biết tánh của Trình Anh không bao giờ đặt điều nói nhảm nên đem lòng tin hỏi lại từ đâu đuôị Trình Anh kể chuyện ông lão từ lúc ngồi trên bờ hồ đến lúc đào mả Hà Nguyên Quân.

Lục Lập Đỉnh nóng lòng, nghe chưa hết câu chuyện đã vội bước vào trong lấy chiếc đoản dao giắt vào mình và gọi ba người khách lạ nói:

- Xin mời quý hữu theo tôị

Trời lờ mờ tối, bốn cái bóng người lướt nhanh về phía cây hoè. Đến nơi, khong thấy bóng ông già đâu cả, chỉ thấy cái mộ đất đào tung toé, hai chiếc quan tài bị đào lên khỏi đất và bật nắp trống rỗng.

Những đồ khâm liệm vung vãi ra ngổn ngang. Lục Lập Đỉnh bước đến dòm vào hai quan tài thì thấy hai tử thi không còn nữa, chỉ thấy trên nắp in sâu những dấu tay rất lớn.

Ba người khách lạ nhìn nhau sửng sốt thì thầm:

- Hiện trạng này chứng tỏ lão già chỉ dùng tay không quật mộ và đoạt tử thị Hành động ấy phải là kẻ có một võ công siêu phàm mới làm được.

Lục Lập Đỉnh cũng nghĩ thế. Ngoài sự khâm phục tài nghệ của kẻ thù, Lục Lập Đỉnh còn phân vân tự hỏi:

- Lão già này có can hệ gì đến gia đình ta, song thân tạ Với hành động quái nghiệp này không phải là một chuyện vô cớ.

Nghĩ như thế, Lục Lập Đỉnh rút chiếc đoản dao lăm le cầm trên tay, từ từ đi quanh hai ngôi mộ để tìm vết chân cảu kè thù lúc đến và lúc đị Nhưng tuyệt nhiên, ngoài những dấu tay in sâu trên chiếc quan tài, lão già không còn để lại vết tích gì nữạ

Lục Lập Đỉnh tức giận hét lên:

- ác tặc ! Mi đã dùng thuật khinh công lui tới nơi nàỵ

Vừa nói Lục Lập Đỉnh vừa lăm lăm lưỡi dao, nét mặt hầm hầm, tiến từng bước về phía đàng trước như kẻ thù còn ẩn núp đâu đâỵ

Bấy giờ trời đã tối mịt. Bãi tha ma vắng lặng như tờ. Đây đó rải rác những cây thùy liễu đen ngòm như những con thú dữ rình mồị

Một vài nhát đoản dao của Lục Lập Đỉnh thoáng qua và cành thuỳ liễu rơi tua tủa phát ra tiếng động rồi lại im lặng. Thỉnh thoảng vài cơn gió thổi lẫn với tiếng côn trùng ra rỉ nghe rất rùng rợn.

Lục Lập Đỉnh càng tức giận , lòng can đảm càng nhiềụ Chàng vung đoản dao đi vào các lùm cây rậm, lá cành rơi lả tả. Chẳng biết như thế có làm nguôi cơn giận của chàng không? Ba người khác lạ đứng đàng xa thỉnh thoảng nghe Lục Lập Đỉnh chặc lưỡi nói một mình:

- Thế này thì chắc hắn phải có thuật khinh công siêu việt.

Nghĩ thế, Lục Lập Đỉnh lại dùng thuật khinh công chạy khắp vùng, ẩn hiện trong bóng tối chập chờn, hy vọng tìm ra dịch thủ. Nhưng vô hiệu, sau khi tìm khắp nơi, Lục Lập Đỉnh lại trở về trước ngôi mộ ôm mặt khóc sướt mướt.

Ba người khách thấy thế khuyên giải:

- Thưa Lục Huynh! Lục huynh hãy an tâm. Chúng tôi tin chắc rồi đây thế nào cũng tìm ra ác tặc nàỵ

Lục Lập Đỉnh giương đôi mắt tròn xoe nói lớn:- Lão già là aỉ Có liên quan gì đến gia đình tả Các ngươi đã biết sao các ngươi không nóỉ

Một trong ba người khách thưa:

- Câu chuyện này rất dài dòng và bí hiểm, chúng ta không nên ở đây mà đàm luận. Xin Lục huynh cùng chúng tôi về đại sảnh, đem hết trí ra xét đoán thế nào cũng tim ra được duyên cớ.

Lục Lập Đỉnh như hối hận trứoc cử chỉ quá bồng bột của mình tỏ vẻ ân hân nói:

- Xin quý khách thứ lỗi ! Tôi vì quá đau khổ nên đã thất lễ.

Ba người khách ôn tồn thưa:

- Xin Lục huynh đừng nghĩ thế.

Bốn người trở về Lục gia trang, vào an toạ nơi đại sảnh. Nét mặt Lục Lập Đỉnh vẫn rầu rầu chưa nguôị Sau một vài chung tra, Lục Lập Đỉnh lui vào hậu đường tim phu nhân kể lại sự tình. Nhưng lúc nãy giờ, sau khi nghe câu chuyện Lục Vô Song kể lại, phu nhân xách kiếm ra đi chưa về. Không tìm gặp vợ, Lục Lập Đỉnh quay ra đại sảnh để cũng khách hàn huyên.

Ba người khách bắt đầu kể lại câu chuyện của họ bị "xích luyện thần chưởng " cho Lục Lập Đỉnh nghẹ

Họ là những người hộ tống làng hoa thuộc đất Sơn Đông. Một người họ Tô, một người họ Long và một người họ Thân

Vừa nghe qua tên họ, nghề nghiệp của các vị khách Lục Lập Đỉnh đã bất bình nói:

- Ta xưa nay có bao giờ quen với những người hộ tống. Các ngươi tìm đến nhà ta ý muốn gì?

Ba người khách lễ mễ đứng dậy chắp tay nói:

- Xin Lục huynh rộng lòng thương cứu mạng mặc dầu chúng tôi là kẻ hèn mọn không dám được Lục huynh chiếu cố.

Lời rên rỉ ấy làm cho Lục Lập Đỉnh động lòng. Chàng hỏi:

- Thôi, các ngươi hãy đứng dậy và kể cho ta nghe vì sao laị bị "xích luyện thần chưởng "?

Hai người họ Long và Tô đồng thưa:

- Cả ba chúng tôi đều thụ thương bởi độc thủ "xích luyện thần chưởng ".

Vừa nói họ vừa lật áo đưa vai cho Lục Lập Đỉnh xem.

Thấy những dấu máu tay ửng hồng rùng rợn, Lục Lập Đỉnh hét lên:

- Vì sao cả ba người cũng bị một lần ? Kẻ nào đã dùng ngón độc thủ đấỷ Vì sao các ngươi lại biết thân phụ ta có thể chữa mạng cho các ngươi ?

Người họ Long thưa:

- Các đây bảy hôm chúng tôi có áp tải một chiếc xe từ Sơn Đông đế n Phúc Kiến. Khi đếnn vùng Dương chân, vì khí trời oi ả nên chúng tôi tạm dừng chân tại một tửu điếm để giải khát. Bỗng chúng tôi thấy xa xa có một người cưỡi ngựa xăm xăm đi tớị Đến gần thì ra đó là một đạo cô, khoác chiếc áo hoàng bào, ngồi trên lưng một con lừa thấp, tuổi vào trạc trung niên nhưng nhan sắc còn cực kỳ diễm lệ. Đạo cô đến trước quán cho ngựa dừng lại, bước đến gọi tửu điếm pha trà. Trong nhóm chúng tôi có tên Châu này vốn háo sắc, Nay gặp mỹ nhân khó có thể bỏ quạ Chàng bước đến giai nhân vừa cười vừa nói:

- Cô nương đi một người một ngựa, thân gái dặm trường không sợ cường đạo hay sao ? Thôi hãy cũng tôi sớm tối cho có bạn đường , ý cô nương nghĩ thế nàỏ

Người đẹp mỉm cười đáp:

- Thưa, tiên nữ nghĩ rằng cường đạo đâu có đáng ngại bằng quí vị hộ tống phiêu xạ

Dứt lời nàng đưa bàn tay ngọc vổ nhẹ vào vai tên Châụ Lạ thay, chàng Châu đang tươi tỉnh bỗng mặt mày xanh xám, tay chân run lẩy bẩy, hàm răng đánh vào nhau cầm cập như bị gió lạnh rồi toàn thân lảo đảo ngã quỵ xuống đất.

Nghe đến đây, Lục Lập Đỉnh nhìn kỹ lại tên Châu từ đầu đến chân và nói:

- Ngón đó gọi là ngón "Cửu do tục thủ". Con quái tắc ấy thật là nham hiểm.

Người họ Long kể tiếp:

- Còn lại tôi và Tô hiền đệ. Cả hai chúng tôi đều hoảng hốt. Tôi bước đến đỡ Châu hiền đệ , còn Tô hiền đệ nóng nảy xỉ vào mặt đạo cô mà rằng:

- Sao đạo cô nỡ ác tâm dùng tà thuật hại chúng tôi ?

Đạo cô không đáp, chỉ mỉm cười bước đến bên chúng tôi, cũng lấy tay vỗ nhẹ vào vai tôị Tôi cảm thấy toàn thân như bị lửa đốt, rồi lạnh giá như băng. Chúng tôi lảo đảo ngã xuống đất. Bọn phu xe thấy thế đứng nhìn trơ trơ như những tượng đá.

Đạo cô nhìn chúng tôi bĩu môi khinh bỉ:

- Tài nghệ của chúng bay chỉ có thế mà dám đảm đương bảo vệ phiêu xa, dám trương cờ đến đất Giang Nam này thì chúng bay quả cũng to gan thật.

Đoạn đạo cô chỉ vào mặt ba chúng tôi nói:

- Đứa nào muốn tận số hay đến đây ta cho nếm một chưởng nữạ

Tôi sợ đạo cô nổi giận, tặng thêm cho chúng tôi mỗi người vài chưởng nữa thì vong mạng nên vôi thưa:

- Xin đạo cô tha cho chúng tôi tội thất lễ.

Đạo cô cười với cái cười khinh bỉ nói:

- Thế ra đến bây giờ chúng bây mới biết cái uy của chúng bây saỏ

Chúng tôi tranh nhau nói:

- Thưa, chúng tôi không dám thất lễ nữa, xin bái phục đạo cộ

Đạo cô trở ngược chiếc quạt lông đang trên tay, dùng cán gõ nhẹ vào đầu tôi một cáị Ôi Chúa! Không biết bao nhiêu luồng tử khí khác thường, vừa nóng vừa lạnh chạy khắp mình khiến toàn thân bủn rủn và cực kỳ đau đớn. Tôi chắp tay lạy lục nói:

- Muôn lạy đạo cô ! Chúng tôi xác phàm mắt thịt, đứng trước núi Thái sơn mà không biết, xin đạo cô chớ chấp.

Lời van vỉ của tôi làm cho nét mặt của đạo cô có dịu lại, nàng nói:

- Sư phụ ta chỉ dạy ta thuật đánh người mà không truyền thuật cứu ngườị Ta cho các người biết, kẻ nào đã trúng độc của ta thì mạnh lắm cũng chỉ sống được 10 ngày thôị

Nói xong, đạo cô lại nhoẻn miệng cười, phe phẩy chiếc phất trần phủi sạch bụi trên vạt áo rồi đủng đỉnh bước ra, ung dung lên lưng lừa như một khách thừa lương giục cương rảo bước.

Bấy giờ nỗi lo sợ chiếm cả tâm hồn tôị Tôi không còn lưu giữ thể diện trước bọn xa phu nữạ Tôi rán sức chạy theo đạoc ô và quỳ gối van lơn:

- Xin đạo cô hãy thương tình cứu mạng chúng tôị Được sống chúng tôi nguyện kết cỏ ngậm vành.

Lục Lập Đỉnh nghe đến đây cau mày làm cho người tên Long hoảng sợ, nói:

- Thưa Lục chủ, chúng tôi đến đây mong được Lục chủ cứu mạng. Sự tình ra sao thế chúng tôi kể lại thế, không dám thêm bớt.

Lục Lập Đỉnh nói:

- Được, các ngươi cứ kể tiếp cho ta nghẹ

Người tên Long kể tiếp:

- Trong lúc tôi lạy lục cầu xin cứu mạng thì đạo cô quay lại cười nói:

- Thôi được ! Ta chỉ cho các ngươi một con đường sống nhưng con đường nầy hy vọng mong manh đấỵ Sống hay không là do ở số mạnh của các ngườị Vậy các ngươi hãy đến trấn Lăng Hồ, phủ Hồ Châu, gặp vị lão anh hùng Lục Triển Nguyên may ra có thể cứu mạng được. Ta nhắn lời hỏi thăm và ta sẽ gặp lãọ

Đôi mày Lục Lập Đỉnh càng cau lại, chàng vừa kinh ngạc vừa băn khoăn tự hỏi:

- Như thế viêc quật mồ song thân ta và việc trên hẳn có liên quan với nhau chăng? Thật lạ lùng làm saỏ

Người tên Long thưa:

- Theo ý kẻ hèn này thì hai việc ắt có gì mật thiết và quan hệ với nhaụ

Lục Lập Đỉnh hỏi:

- Với lời rên rỉ của ngươi, nữ tặc quyết định như thế nàỏ

- Tôi những hy vọng lời rên rỉ của tôi sẽ làm mềm lòng đạo cô đó nhưng ngờ đâu, nàng một mực như đe doạ:

- Đây đến Hồ Châu còn xa, các ngươi còn bao nhiêu thời khắc nữa mà lại phí phạm vào những hy vọng hão huyền.

Nói xong nàng thức lừa cất vó. Bụi đường tung lên. Trong khoảng khắc chúng tôi không còn thấy bóng nàng đâu nữạ Chúng tôi nhìn nhau ngao ngán và không thể không tin lời của đạo cộ

- Bấy giờ ba anh em chúng tôi, trên vai nào cũng in đậm một vết máu ửng đỏ mang dấu năm ngónn tay của mỹ nữ. Vết hồng chưởng càng ngày càng ăn rộng ra, chúng tôi còn chỉ có cách đến Lục Gia trang nhờ Lục công cứu mạng. Nhưng đến đây thì Lục công đã thành người thiên cổ. Chúng tôi tuyệt vọng nghe tin ấy như một bản án tử hình, chúng tôi không còn đủ trí óc để nghĩ rằng Lục huynh là người thừa kế Lục Công hẳn thừa hiểu cái bí quyết cứu nhân độ thế. Vậy mong Lục huynh thương tình cứu mạng, chúng tôi sẽ xin kết cỏ ngậm vành.

Lục Lập Đỉnh ngồi nghe tên Long kể một hồi rồi chậm rãi nói:

- Ta từ nhỏ chỉ biết luyện tập trong sân nhà, chưa bao giờ dấn thân trên các bước phiêu lưu mạo hiểm. Các ngươi không biết đến ta cũng không lấy làm lạ.

Lời nói của Lục Lập Đỉnh tuy có vẻ khiêm tốn song thực ra còn đượm một nét tự phụ vô cùng tinh tế.

Chàng đứng dậy đi tới đi lui trong phòng với dáng điệu hiên ngang tự đắc. Trông dáng điệu ấy ba người khách mừng thầm vì nghĩ rằng Lục Lập Đỉnh có đủ tài năng cứu mạng. ')
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (2, N'Xích Luyện Thần Chưởng Với Mối Tình Thù', N'Lục Lập Đỉnh đang thong dong đặt từng bước trước sân nhà bỗng chàng dừng lại, đôi mắt tròn xoe nhìn đăm đăm vào bức tường trước mặt. Dưới ánh sáng lập loè của chiếc thiền đăng nơi đại sảnh, bức tường trắng xoá hiện lên chín dấu bàn tay máu. Màu máu đỏ ửng còn tươi như có người vừa ấn vào. Vết tay in rất có thứ tự. Từ trên trần nhà trở xuống hai vệt song song. Dưới một chút tiếp theo hai vệt song song nữa. Và cứ thế chín bàn tay máu kéo dài từ trên xuống dưới, mà ba vết cuối cùng cách mặt đất hơn một trượng. Ba người khách hộ tống phiêu xa cũng ngạc nhiên trố mắt nhìn vào bức tường có bàn tay máu. Bấy giờ nét mặt của Lục Lập Đỉnh không còn ngang nhiên tự phụ nữa. Chàng lẩm bẩm:

- Con quỉ cái này đến tìm ta làm gì? Giữa ta và hắn có mối thù truyền kiếp gì chăng?

Lục Lập Đỉnh lại nghĩ đến Lục phu nhân vắng nhà, lòng nóng như đốt, không quan tâm đến ba người khách đang chờ quyết định của chàng, chàng rảo bước ra mé cổng toan đi tim Lục phu nhân, nhưng lúc đó Lục phu nhân cũng vừa về đến, một tay dắt Trình Anh, một tay dắt Lục Vô Song đẩy cổng bước vào. Trông thấy chồng, Lục phu nhân lắc đầu một cách tuyệt vọng.

Lục Lập Đỉnh chưa muốn cho Lục phu nhân biết chín bàn tay máu in trên tường vì sợ Lục phu nhân xúc động mạnh, bèn đem câu chuyện 3 tên hộ tống phiêu xa kể lại.Lục phu nhân hỏi:

- Như thế chúng ta có nên cho họ trú lại nhà chăng?

Lục Lập Đỉnh đáp:

- Việc này có quan hệ đến họ đâu.

Lục đại nương đem Trình Anh và Lục Vô Song vàophòng khép cửa cẩn thận rồi mới trở ra nói với Lục Lập Đỉnh:

- Lạ lùng làm sao! Gia trang chúng ta ngày hôm nay là ngày đại biến.

Lục Lập Đỉnh ngơ ngác hỏi:

- Có việc gì khác chăng ?

Lục đại nương nói :

- Bọn gia đinh đều cho thiếp hay gia súc trong nhà đều chết hết.

Lục Lập Đỉnh trố mắt nhìn vợ hỏi lại:

- Phu nhân nói sao ?

Lục đại nương thưa:

- Thiếp nói tất cả gia súc đều chết tiệt. Ba con chó, bốn con mèo, bảy mươi con heo, mười con ngỗng, hai mươi con gà đều chết một lượt.

Lục Lập Đỉnh vội vã mở cửa phòng chạy thẳng ra cửa sau thì thấy tên đầy tớ trại đang đứng khóc mếu máo. Trên sân nào heo, nào chó, nào ngỗng, nào gà nằm la liệt ngổn ngang, nhưng con vật nào cũng vẫn còn tươi như mới cắt tiết.

Lục Lập Đỉnh hỏi tên đây tớ:

- Vì sao gia súc lại bị chết như vậy ?

Tên đầy tớ vừa khóc vừa đáp:

- Thưa gia chủ, lúc xẩm tối con đang chẻ củi sau nhà, bỗng dưng con cảm thấy trong nhà sao vắng vẻ khác thường, chó không sủa, gà không kêu... Con bước vội ra chuồng gà xem thì thấy cả bầy gà trong chuồng đều chết hết. Con chạy lên chuồng heo thì thấy bảy mươi con heo vừa lứon vừa nhỏ đang nằm yên. Con liền ...

Lục Lập Đỉnh ra hiệu bảo tên đầy tớ đừng nói nữa, mắt đăm đăm nhìn vào con chó A hoa nằm chết, đầu bị đánh vỡ. Chàng lẩm bẩm

- Thế này thì không phải đám gia súc chết vì ôn dịch.

Lục Lập Đỉnh lại quan sát từng con vật thì thấy con vật nào cũng bị một vết đánh trên đầu, dấu vết rất nhỏ chứng tỏ kẻ sát hại dùng một cử chỉ rất nhẹ nhàng.

Lục Lập Đỉnh liên tưởng đến cái phất trần của đoạ cô đã dùng hãm hại hạ tên hộ tống phiêu xa, chàng buột miệng nói một mình:

- Thôi đích thị rồi, không còn lầm lẫn nữa. Chính nó đã đến đây dùng cán phất trần diệt gia súc của ta trước khi xâm nhập gia trang. Từ xưa đến nay, ta chưa hề dấn thân trên bước giang hồ làm gì có gây thù oán. Thế này thì hẳn con ác quỉ ấy đã nhắm vào hai vợ chồng ta để rửa một mối hận thù nào đó cho dòng giống. Nhưng hận thù gì?

Chàng còn suy nghĩ vừa thở bước vào đại sảnh, thấy ba người khách vẫn chờ đợi.

Chàng nói:

- Các người đã thấy việc nhà ta không may gặp phải chuyện không hay, chỉ có anh em em ruột thịt mới lưu trú được.Vậy các người hãy tìm nơi khác nghỉ ngơi.

Ba người khách nghe nói hốt hoảng mặt mày xám nhợt, nói không ra lời, vội tuột xuống ghế quỳ lạy thở than.

- Lục huynh nỡ nào để chúng tôi thiệt mạng trong lúc Lục huynh có thể cải tử hoàn sanh.

Tuy trong bối rối, nhưng Lục-lập-Đỉnh không nỡ từ khước lòng nhân đạo, liền vào phòng trong lấy ra 27 mũi kim vàng, rồi bảo ba người khách cởi cả quần áo, tự tay mình điểm vào các trọng huyệt. Lạ thay! Mỗi mũi kim dài độ nửa gang tay mà đâm lút vào người vẫn không thấy đau đớn gì cả.

Sau khi điểm xong mỗi người chín huyệt đạo Lục-lập-Đỉnh nói

- Thôi! Các người hãy đi quanh vùng nầy tìm nơi khác trú ngụ. Quá ba hôm ta mới biết có cứu được hay không.

Ba người khách cảm ơn và hỏi:

- Kính thưa Lục huynh, Lục huynh vừa nói đến những chuyện không may ở gia trang nầy chẳng hay đai hoa ấy do đâu, Lục huynh có thể cho chúng tôi biết chăng?

Lục lập Đỉnh không muốn mất thì giờ với những kẻ vô danh tiểu tốt, liền nói thẳng:

- Ba vị đã bị trúng ngón độc thủ xích luyện thần chưởng, chỉ mười ngày là vong mạng, nay ta đã làm phước điểm cho mọi vị chín huyệt bằng kim vàng để tạm dừng sự bành trướng của máu độc. Vậy phải chờ quá ba hôm mới biết hiệu quả. Các người hãy đi đi để ta lo việc của ta đừng làm mất thì giờ ta vô ích.

Ba người khách nói:

- Nếu chẳng may trong thời gian ấy Lục huynh có mệnh hệ naò chúng tôi biết phải làm sao?

Lục-lập-Đỉnh đảo lộn cặp mắt một vòng, lạnh lùng nói:

- Trên trần thế này, ngoài ta ra không còn ai có thể trị nổi ngón độc thủ ấy. Nếu ta có mệnh hệ nào tin các người cũng phải chết mà thôi.

Ba người khách còn chần chờ ý nghĩ, Lục lập Đỉnh dựng dậy tiếp lời:

- Các người còn chần chờ gì nữa! Nếu các người còn trì hoãn ở lại đây, con ác quỉ kia sẽ đến, và lúc đó không còn gì cứu chữa nữa.

Ba người khách nghe nhắc đến đạo cô hoảng vía, chắp tay bái tạ và kéo nhau ra khỏi Lục gia trang.

Lục lập Đỉnh không còn giữ lễ đưa khách ra cổng nữa, cứ ngồi yên trên ghế, mắt đăm đăm nhìn chín bàn tay máu in trên vách. Bỗng đằng sau có tiếng gót chân bước nhẹ, và hai bàn tay nhỏ xíu chạy vào đôi mắt của Lục lập Đỉnh.

Chàng thất kinh hét:

- Ai thế?

Thì ra đó là Lục vô Song, con gái cưng của Lục lập Đỉnh.

Lục Vô Song, đã quen cái trò chơi thân mật này đối với cha mẹ từ thuở lên ba. Cứ mỗi lần cha mẹ có việc gì lo buồn, cô bé ấy lại giở nhiều trò chơi tiêu khiển.

Nhưng lần này Lục lập Đỉnh ở trong trạng thái vô cùng hốt hoảng, mất bình tĩnh, hét như sấm, làm cho Lục vô Song cũng khiếp vía.

Thấy cha mình không nhã nhặn như mọi lần, Lục vô Song bất bình nói:

- Con đùa với phụ thân, sao phụ thân nỡ giận?

Lục lập Đỉnh thương hại, nắm tay con chưa kịp tỏ lời thì tên đầy tớ A Căn từ phía ngoài bước vào thưa:

- Thưa gia chủ, có khách từ xa đến.

Đang bực mình, Lục lập Đỉnh không muốn khách đến quấy rầy mình, liền bảo tên đầy tớ:

- Mày ra nói với khách rằng tao không có ở nhà, lúc khác sẽ đến.

A Căn nói:

- Người đó là một nữ khách, chẳng phải đến xin gặp gia chủ mà chỉ xin tá túc một đêm.

Lục lập Đỉnh kinh ngạc hỏi:

- Mày nói sao? Nữ khách nào?

A Căn đáp:

- Khách là một thiếu phụ, có dẫn theo hai đứa bé khôi ngô tuấn tú.

Như có ý nghi ngờ, Lục lập Đỉnh hỏi:

- Thiếu phụ ấy không phải là một đạo cô chứ?

A Căn thưa:

- Không phải đạo cô! Người này ăn mặc ra vẻ một đại nương quí phái.

Lục lập Đỉnh hơi yên lòng, nói:

Thế thì ngươi dẫn họ vào nhà khách dọn cơm cho họ lót lòng và xếp đặt cho họ chỗ nghỉ ngơi.

A Căn vâng lời bước ra ngoài. Lục lập Đỉnh thủng thẳng theo sau, bụng bảo dạ:

Ta hẵng xem người ấy ra sao?

Nhưng Lục phu nhân lại chạy vào phòng đón chàng lại cau đôi mày nói:
Phu quân bằng lòng cho hai đứa bé trai đó tạm trú nơi đây sao?

Lục lập Đỉnh quay về phía bức tường chỉ vào chín bàn tay máu nói:

Hai đứa bé ấy nếu đã được chỉ định vào con số 9 thì dẫu có trốn nơi đâu cũng không thoát khỏi độc thủ của đạo cô.

Lục đại nương nhìn kỹ chín bàn tay máu, bỗng đôi mắt hoa lên. Nàng có cảm giác như chín bàn tay kia lay động, mỗi lúc một lớn hơn và màu đỏ làm xây xẩm cả mặt mày.

Lục đại nương lảo đảo bước tới đưa tay đấm mạnh vào bức tường. Một tiếp "đốp" rợn người! Lục Phu nhân hét lên một tiếng rồi ngã xuống ngồi thừ trên chiếc tràng kỷ, đôi mắt mơ màng lẩm bẩm:

- Vì sao nhà ta chỉ có bảy người mà ở đây lại 9 bànn tay ?

Lục Lập Đỉnhthở dài đỡ vợ dậy ái ngại:

- Phu nhân ơi ! sự việc đã đến nỗi nãy dẫu chúng ta có sợ sệt cũng chẳng ích gì. Chúng ta cần mạnh dạn để chấp nhận sự thật. Hai bàn tay trên chính là mạng song thân ta. Hai bàn tay kế tiếp là mạng của chúng ta, rồi đến hai bàn tay nữa là Trình Anh và Lục Vô Song. Sau hết ba bànn tay cuối cùng là sinh mạng của A Căn và hai tên tỳ nữ. Đó là lỗi cảnh cáo của con ác tặc hăm doạ tàn sát cả gia đình để không còn một bóng người, không còn một tiếng vật.

Lục phu nhân hỏi:

- Sao chúng đeo đuổi song thân ta làm gì?

Lục Lập Đỉnhbuồn bã đáp:

- Chính ta cũng chẳng rõ nguyên nhân nào ? Chẳng biết con ác quỷ đó với song thân ta có một mối thù truyền kiếp nào chăng ? Những người đã chết chúng còn quật mồ cướp thây hẳn có một oan cừu cay nghiệt.

Lục phu nhân hỏi:

- Phu quân đinh ninh rằng lão già kia và con ác quỷ đó sẽ đến đây sao?

Lục Lập Đỉnhmím đôi môi, cay đắng nói:

- Điều đó tất nhiên rồi !

Giữa lúc hai vợ chồng đang bàn luận thì tên đầy tớ A Căn nét mặt hầm hầm bước vào thưa:

- Thưa gia chủ! Chúng nó chơi đến trò này quá lắm rồi.

Lục phu nhân hỏi dồn:

- Lại chuyện gì xảy ra nữa ? Thật khốn kiếp.

Lục Lập Đỉnhcũng nóng lòng hỏi vội:

- Việc gì đó ? Có quan hệ chăng?

A Căn thưa:

- Thưa, chẳng hiểu kẻ nào chơi nghịch đem xích sắt khoá kỹ chiếc cổng bên ngoài, kêu gì chúng cũng không mở. Con tức giận xô hoài mà chẳng được.

Cả hai vợ chồng Lục Lập Đỉnhnghe nói thất sắc, thu hết can đảm tiến về phía cổng ngoài. Họ đi song song với nhau và cẩn thận từng bước một.

Đến cổng, đôi cánh cửa nặng nề bằng gỗ lim vẫn đóng cứng. Lục Lập Đỉnhvận dụng hết sức bình sinh, hai tay bấu chặt vào cổng, chun chân dùng thế nhấc bổng lên, nhưng cánh cổng vẫn nặng như đá không lay chuyển chút nào.

Lục đại nương ngạc nhiên cho là điều quái lạ, dùng chân nhảy phóc lên đầu tường, đưa mắt quan sát. Bên ngoài không có một bóng người, không có một tiếng động, bốn bề yên lặng như tờ.

Để khám phá việc lạ, Lục đại nương rút kiếm, cẩn thận nhảy ra phía ngoài tường, men vào cánh cổng.

Thì ra, kẻ nào đùa nghịch đã đem xích sắt khoá cánh cổng tự lúc nào.

Lục đại nương nổi giận hỏi:

- Bọn này muốn trêu ta sao?

Nàng toan xông đến chém gãy chiếc xiềng xích cho vỡ tan hàng trăm mảnh cho hả giận. Nhưng bỗng nhiên nàng chùn chân vì phía trên có treo vuông lụa nhuộm chín bàn tay. Màu máu tươi và đỏ chót.

Lúc đó, Lục Lập Đỉnhcũng đã tung chân nhảy lên đầu tường, thấy vuông lụa máu, chàng biết ngay địch thủ đã dùng dấu hiệu để cảnh báo và uy hiếp tinh thần.

Không còn sợ sệt, Lục Lập Đỉnhquay về phía phu nhân nói với giọng cương quyết:

- Ngày hôm nay nhà ta phải chịu dồn dập những tai ương. Nhưng đó mới là chuyện mở màn cho những khốc liệt sau này. Con ác quỷ đó chỉ muốn cái chết của vợ chồng ta. Nhưng dù có chết chúng ta cũng phải giữ tròn uy danh cho dòng họ Lục.

Lục đại nương nghe chồng nói, lòng tự ái con nhà võ cũng nổi lên. Nàng nghiến chặt hai hàng răng nói:

- Thưa phu quân, Lời phu quân thật chí lý. Dẫu phải chết thiếp quyết không rời phu quân.

Hai người nhảy xuống bờ tường trở vào đại sảnh.

Khi vào đến hậu viên, Lục Lập Đỉnh thoáng nghe đâu đây có tiếng động chàng vội vã đẩy Lục đại nương vàoo trong còn mình xách kiếm lăm le từng bước một tiến tới.

Chàng thoáng thấy một bóng người! Một bóng người ngồi trên đầu tường ở hoa viên. Trông kỹ thì đó là một đứa bé trai, tóc đan thành hai bím chổng ngược lên trời, tay đang vân vê một cánh hoa lang tiêu.

- Hãy cẩn thận nhé ! Không khéo rơi xuống đấy !

Thì ra, Trình Anh và Lục Vô Song trong lúc vợ chồng Lục Lập Đỉnh mắc bận tâm lo công việc, hai cô bé này đã cũnng một đứa bé trai vừa mới đến túc ngụ rủ nhau đi tìm hoa lăng tiêu sau vườn.

Lục Lập Đỉnh nhủ thầm:

- Ta cứ tưởng hai đứa bé trai đến đây ẩn núp, nào ngờ chúng lại tinh nghịch vậy.

Thằng bé đứng trên đầu tường làm dáng điệu như sắp ném hoa đang cầm nơi tay.

Lục Vô Song kêu lớn:

- Ném cho tôi đi ! Ném cho tôi đi !

Thằng bé nghe kêu mỉm cười tung đoá hoa về phía Trình Anh.

Trình Anh nhanh tay hứng lấy rồi đưa lại cho Lục Vô Song . Lục Vô Song tỏ vẻ bất bình làm mặt giận , ném đóa hoa xuống đất giẫm chân lên chà nát rồi bĩu môi nói:

- Quí lắm đấy, ta chẳng thèm lấy đâu !

Thấy con và cháu đang đùa nghịch một cách vô tư, chẳng biết gì đến hiểm hoạ đang bao trùm cả Lục gia trang, Lục Lập Đỉnh thở dài quay gót trở về phòng.

Trình Anh thấy Lục Vô Song không lấy hoa, lại còn tỏ ý hờn giận liền hỏi:

- Sao em khó tánh thế ?

Lục Vô Song đáp:

- Em không thèm lấy hoa của nó. Để tự tay em lấy cho mà xem.

Dứt lời, Lục Vô Song nhún mình nhảy vọt lên cao, níu lấy một cành cây đu qua đầu tường, chuyển mình sang một cành cây châu ngân quế lanh lẹ như một con sóc.

Thằng bé thấy thế cười khì, thách:

- Có giỏi thì nhảy lại qua đây !

Lục Vô Song đang thòng người lơ lửng trân cành châu ngân quế nghe tiếng thách đố liền du cả người phóng mạnh về phía thằng bé.

Đứng về phương diện võ thuật, lối nhảy như thế là một lối nhảy vô cùng nguy hiểm, chỉ có những kẻ tài nghệ cao cường mới dùng thuật khinh công liều lĩnh trong nguy biến. Thế mà Lục Vô Song chỉ vì không được tặng hoa, chạm lòng tự ái, đã dám lao mình cho đến đích mà không lường trước được nguy hiểm.

Thằng bé hốt hoảng ré lên:

- Thôi rồi ! Thôi chết rồi !

Cả một khối người rơi đúng chỗ nó. Thằng bé giơ tay lên đỡ. Nhưng Lục Vô Song miệng thét lên lời trách móc, hai tay xua không cho thằng bé đón lấy mình.

Thật quá kinh ngạc ! Làm sao trong một thế giằng co như thế mà cô bé có thể giữ được quân hình.

Lục Vô Song miệng kêu thất thanh, liền rơi xuống đất.

Thằng bé thứ hai đứng dưới chân tường thấy thế chạy lại giơ tay đón đỡ nhưng Lục Vô Song rơi từ chỗ cao quá nên thằng bé không tài nào đỡ nổi. Cả hai đều lăn nhào trên mặt đất. Lục Vô Song nằm thiêm thiếp còn thằng bé bể gò má, máu me lênh láng.

Trình Anh và thằng bé kia hoảng vía chạy đến.

Bây giờ thằng bé kia lồm cồm ngồi dậy được, tay ôm má, còn Lục Vô Song bị thương nơi bàn toạ không đứng dậy nổi. Trình Anh ẵm xốc Lục Vô Song bồng vào nhà, miệng la lớn:

- Di trượng ơi, Adi ơi, nguy lắm, nguy lắm!

Lục đại nương nghe tiếng kêu lật đật nhảy ra khỏi phòng chạy về hướng hoa viên. Nhưng chạy được một đoạn thì từ trên mái nhà nghe tiếng một vật ném tới. Lục đại nương né mình tránh khỏi và xem lại vật ấy là một tử thi.

Không kịp trở vào lấy vũ khí, Lục đại nương phi thân lên mái ngói. Chân nàng vừa đặt chưa vững thì hai tử thi nữa bị ném vụt đến trước mặt nàng. Lục đại nương bị vướng chân phải lộn nhào xuống phía sau hoa viên.

Lúc ây, Lục Lập Đỉnh cũng nghe tiếng Trình Anh kêu cứu nên từ đại sảnh bước ra.

Vừa đến nơi, thấy Lục phu nhân bị rớt từ trên xuống, chàng thất kinh liền vận dụng ngón "Thanh đình tam sao thuỷ" phi thân đến, đưa hai tay đỡ. Lục phu nhân rớt gọn trên hai cánh tay chàng.

Xem lại thấy Lục phu nhân không bị thương tích gì, Lục Lập Đỉnh an lòng đặt vợ xuống đất rồi phóng mình lên mái nhà, quay nhìn tứ phía.

ánh trăng vằng vặc, gió rít rì rào. Tuyệt nhiên không có một bóng người. Lập Lục Đính khinh thân chạy khắp nơi, từ trước ra sau, từ tiền sảnh đến hậu viên, nhìn từ mái ngói đến thềm hè mà vẫn chẳng thấy gì lạ.

Chàng lẩm bẩm:

- Con ác quỉ này không muốn gặp ta ngay lúc bây giờ thì dẫu có tìm hắn cũng uổng công.

Nghĩ thế chàng phi thân nhảy về phía giếng nước.

Bỗng chàng gặp một thiếu phụ đến trọ ban chiều một tay bồng Lục Vô Song, một tay dắt đứa bé bị thương trở về đại sảnh.

Người thiếu phụ không lo cho đứa con mình mà lại lo săn sóc cho Lục Vô Song.

Lục Lập Đỉnh ngỡ là Lục Vô Song vừa bị độc thủ của đạo cô nhưng nhìn kỹ chỉ thấy thương tích nhẹ nơi bàn toạ nên chàng an lòng, lễ phép hỏi thiếu phụ:

- Thưa nương nương, nương nương không lấy thế làm phiền chứ?

Thiếu phụ mỉm cười lắc đầu:

- Xin Lục gia đừng nghĩ thế.

Lục Lập Đỉnh ra hiệu bảo Lục đại nương săn sóc cho thằng bé con chu đáo.

Lục đại nương thấy thương tích ở má thằng bé khá nặng liền xe toang vạt áo rịt lại vết thương. Trong lúc đó, người thiếu phụ để ý chăm sóc Lục Vô Song từng li từng tí.

Lục Vô Song, con bé gan dạ ấy bây giờ mới biết đau. Cô ta rên rỉ từng hồi.

Người thiếu phụ tỏ ra một tay châm cứu lành nghề. Nàng chỉ cần điểm huyệt đạo bên trên vết thương tức khắc Lục Vô Song không còn cảm thấy đau đớn gì nữa.

Lục Lập Đỉnh thấy thế ngạc nhiên hỏi:

- Thưa, huyệt đó là huyệt gì vậy?

Thiếu phụ đáp:

- Thưa, đó là Bích hải huyêt và uy hang huyệt. Điểm trúng hai huyệt đó thì thần kinh tạm tê liệt, huyết thống điều hoà cho đến khi vết thương được lành hẳn.

Được thiếu phụ giảng giải rành rẽ, lại thấy lối săm sóc thương tích rất tinh vi, Lục Lập Đỉnh tin chắc người thiếu phụ đó cũng là tay bản lĩnh trong đời, và con nhà danh giá nên không ngại ngùng hỏi tiếp:

- Thưa nương nương, nương nương là ai ? và nương nương đến đây có việc gì chỉ giáo cho vợ chồng tôi chăng ?

Người thiếu phụ không trả lời chỉ để tâm đến việc chăm sóc vết thương cho Lục Vô Song. Nàng dùng một bàn tay thoa cho bàn toạ Lục Vô Song, một tay vẽ trog không trung những vòng tưởng tượng.

Lục Lập Đỉnh lấy làm lạ tự hỏi:

-Taị sao người này lại có lối chữa vết tưhưong như lỗi cứu chữa thân phụ ta ngày trước. Thôi đúng rồi ! Nàng này quả là thủ pháp "Nhất dương chỉ".

Chàng rón rén bước ra phía sau lưng thiếu phụ, lấy cả hai bàn tay đánh mạnh vào ót. Thiếu phụ, tay mặt vẫn thao bóp cho Lục Vô Song, bỗng nghe tiếng gió nàng đưa tay trái ra đỡ. Hai chưởng lực chạm nhau quá mạnh làm cho Lục Lập Đỉnh đứng không vững phải bước lùi mấy bước.

Giữa lúc đó từ trên mái nhà xuất hiện một giọng cười trong trẻo, và có tiếng nói vòng xuống:

- Ta chỉ muốn lấy mạng của chín người trong nhà Lục gia trang. Kẻ nào không liên quan, hãy sớm rời khỏi đây kẻo mang họa.

Tiếng nói rõ ràng là giọng của một phụ nữ. Lục Lập Đỉnh quay đầu nhìn lên, thấy bóng một đạo cô chỉnh tề trong bộ võ phục, hai tay chống vào hông ngạo nghễ nhìn xuống.

ánh trăng rọi vào mặt, soi rõ đạo cô đó có một sắc đẹp vô cùng diễm lệ. Người ta có cảm tưởng đó là một cô gái măng tơ, tuổi chưa đầy hai tám và tràn đầy nhựa sống của lứa thanh niên. Nhưng đằng sau vai nàng nhô lên đôi kiếm khiến cho kẻ si tình cũng phải dè dặt.

Đạo cô buộc vào thắt lưng một dây lụa đào, gió tung phấp phới như hai vệt máu phụt giữa không trung khiến kẻ thiếu tinh thần cũng phải khiếp sợ.

Tuy trong căm hận nhưng Lục Lập Đỉnh cũng không thể không thừa nhận cái sắc đẹp uy nghi của đạo cô. Chàng tấm tắc ngợi khen và lẩm bẩm:

- Con ác quỉ đã 10 năm làm chấn động giới giang hồ, không ngờ ngày nay tuổi vẫn còn son trẻ, sắc đẹp chưa phai mờ.

Bỗng chàng quắc mắt, chỉ tay gọi lớn:

- Này, có phải ngươi đã từ giã "xích luyện" đến đây chăng ? Ta là Lục Lập Đỉnh đây ! Ngươi muốn gì ?

Đạo cô vẫn giữ nụ cười trên môi, ngạo nghễ đáp:

- à! té ra ngươi đang chờ ta đến! Biết điều như vậy cũng tốt lắm. Nhưng tốt hơn nếu ngươi đem vợ và con cháu ra đây giết hết trước mặt cho ta xem tận mắt, rồi ta cho ngươi được phép tự sát. Chỉ có thế ngươi mới bảo tồn được uy danh cho dòng họ Lục và ta cũng khỏi mất công hạ thủ cả gia đình ngươi.

Dứt lời, đạo cô buông một tràng cười khanh khách.

Trước những lời nhục mạ đó, Lục Lập Đỉnh tuy chưa phải là khách giang hồ song dòng máu con nhà võ cũng sôi lên. Vả lại, đứng trước một thiếu phụ thơ như liễu, yếu như đào, chàng tưởng như nội cộng chàng có thể bẻ gãy cành phù dung tức khắc. Chàng rít lên:

- Nữ tặc! Đừng lắm lời! Ta giúp cho mày theo ông bà về chín suối để ăn năn tội lỗi.

Vừa dứt tiếng, Lục Lập Đỉnh phóng người lên mái ngói. Đạo cô nhanh như chớp rút đôi song kiếm múa xoay tròn như vũ bão. Đôi kiếm long lanh dưới ánh trăng ánh lên những đường nét tuyệt mỹ.

Lục Lập Đỉnh nhìn những vệt sáng thu hẹp dần, mới cảm thấy tài nghệ mình còn quá non nớt, không thể đương đầu với đôi tay mềm mại đầy kinh nghiệm chiến đấu đó.

Về phần đạo cô, hẳn nàng cũng quá hiểu tài nghệ của Lục Lập Đỉnh, một kẻ từ thưở bé sống trong lụa là nhung gấm nên nàng không quan tâm mấy. Nàng chỉ dùng các thế võ khích lệ để trêu Lục Lập Đỉnh trước khi kết thúc.

Mũi kiếm của đạo cô dần dần siết hẹp vào người Lục Lập Đỉnh, vây quanh lấy mình và và dồn Lục Lập Đỉnh khắp mọi nơi theo ý muốn.

Cái trò chơi quái ác nầy cuối cùng buộc Lục Lập Đỉnh phải xuôi tay nhắm mát để đợi nhát kiếm kết liễu của đạo cô.

Nhưng việc phải đến không thể tránh. Nhát kiếm cuối cùng nhắm đầu Lục Lập Đỉnh chém sả tới với một thế rất mạnh.

Bỗng nhát kiếm dội lên. Một tiếng "kong" rùng rợn.

Thì ra, người thiếu phụ tá túc lúc chiều đã đến kịp thời cứu nguy cho Lục Lập Đỉnh.

Cuộc đấu chiến lại tiếp tục giữa hai thiếu phụ.
Nếu bình tĩnh mà thưởng thức thì trên mái ngói nãy giờ trở nên một đấu trường mà quang cảnh diễn ra vô cùng đẹp mắt.

Người thiếu phụ phục sức màu tro, còn đạo cô mặc màu hoàng hạnh. Cả hai thứ thay đổi chỗ ngôi, lúc tiến, lúc thoát, lúc công lúc thủ, lúc nào cũng như vâng theo mọi đường lối đã định trước.

Cái tuyệt kỷ của đôi bên là vũ khí không bao giờ chạm vào nhau mà tinh thần đôi bên cũng không lúc nào thay đổi. Người nào vẻ mặt cũng tươi cười như một vũ nữ lúc trình diễn trước khán giả. Thỉnh thoảng trên mặt họ chỉ thoáng hiện vài nét thần phục lẫn nhau.

Bỗng đạo cô hét lên:

- Con tiện tỳ kia! Ta vâng mạng sư phụ ta đến đây sát diệt nhà họ Lục, can hệ gì đến mày mà mày cản trở công việc của ta?

Người thiếu phụ cũng với nụ cười kiêu hãnh đáp lại:

- Sư phụ nhà ngươi có việc với Lục Triển Nguyên đáng lẽ phải sớm tìm Triển Nguyên mà thanh toán. Nay Triển Nguyên đã ra người thiên cổ sao sư phụ ngươi lại tìm đến giết hại con cháu. Như vậy đâu phải cử chỉ cao đẹp của người vũ dũng.

THiếu phụ nói chưa dứt lời, bất thình lình ba chiếc ngân châm từ tay áo đạo cô bắn ra. Hai chiếc hướng về phía thiếu phụ và một chiếc hướng về Lục Lập Đỉnh.

Nhanh như chớp, thiếu phụ tung kiếm đánh bật hai chiếc ngân châm rơi xuống mái ngói. Trong lúc đó Lục Lập Đỉnh đưa tay đón chiếc kim châm một cách bất ngờ.

Thấy thế đạo cô cười phá lên rồi tung mình nhảy ra cửa cổng. Trong phút chốc nàng đã mất dạng.

Thiếu phụ đứng nhìn theo lối khinh công của đạo cô tỏ vẻ thán phục vô cùng.

Khi xuống đến hoa viên, thiếu phụ thấy trong tay Lục Lập Đỉnh còn cầm chiếc kim châm thất kinh nói:

- Hãy ném đi, ném đi mau!

Bây giờ Lục Lập Đỉnh không còn mảy may ý thức nghi ngờ thiêú phụ nữa nên nghe nói chàng liền vứt chiếc ngân châm sang một bên, đưa tay lên xem thì thấy bàn tay chàng tái nhợt.

Qúa khiếp sợ, Lục Lập Đỉnh nói lớn:

- Trời ơi, tôi bị nhiễm độc rồi !

Thiếu phụ nói:

- Đúng vậy. Tôn huynh đã bị nhiễm phải một chất độc tối nguy hiểm. Chẳng những làm hại ở tay mà còn có thế nguy hiểm đến tánh mạng.

Dứt lời thiếu phụ dùng kiếm cắt ngang vạt áo buộc vàoo tay Lục Lập Đỉnh không cho máu độc chảy vào tim rồi móc túi lấy hai viên thuốc gia truyền đưa cho Lục Lập Đỉnh nhai nuốt.

Lục Lập Đỉnh cảm thấy hai ngón tay giữa như tê liệt và sưng lớn dần.

Bấy giờ, hai người đã đi đến bên Lục đại nương. Người thiếu phụ không hề lưu ý đến bệnh tình Lục đại nương cũng như Lục Vô Song và đứa bé trai mà chỉ lo hai ngón tay của Lục Lập Đỉnh. Nàng dùng mũi kiếm xẻ xâu vào hai ngón tay của Lục Lập Đỉnh đến tận xương. Hai dòng máu đen sẫm chảy ròng ròng xuống đất.

Lục Lập Đỉnh kinh hãi, bụng bảo dạ:

- Ta chỉ năm lấy kim ngân mà đã bị nhiễm độc như vậy. Nếu cây kim ấy đâm vào người thì còn gì là tính mạng.

Sau khi xẻ ngón tay của Lục Lập Đỉnh lấy máu xong, thiếu phụ bước đến đỡ Lục đại nương lên ghế và kéo xiêm áo lên nhìn thương tích.

Quả nhiên, hai đầu gối của Lục đại nương đều trúng phải ngân châm. Oái oăm thay, chính kim này là loại kim thường ngày Lục Lập Đỉnh dùng để chữa bệnh.

Lục Lập Đỉnh cảm thấy mầm đại hoạ càng trầm trọng hơn. Các vết thương của vợ con chưa lành nhưng chàng thấy đáng ngại hơn là những việc sắp xảy ra sau này.

Nhớ đến hai tử thi mà địch thủ đã dùng nó ném vào Lục đại nương, chàng bước vội ra ngoài xem.

Thì ra ba cái xác ấy chính là ba xác của những người đã bị xích luyện thần chưởng vừa rồi.

Lục Lập Đỉnh nhìn kỹ mỗi tử thi và rất ngạc nhiên vfi những chiếc kim trước đây Lục Lập Đỉnh châm vào huyệt giải để giúp chúng thoát chết thì nay lại được nằm ở các huyệt tử.

Chỉ một huyệt tử cũng đủ vong mạng huống hồ nay chín huyệt giải lại được thay đổi cả vào chín huyệt tử.

Lục Lập Đỉnh than thầm:

- Thật con đạo cô này không còn chút lương tâm nào.

Lục Lập Đỉnh thương tình đến vuốt mặt từng người.

Trong ba người, có tên Long chưa chết hẳn. Lục Lập Đỉnh xoè bànn tay trên mặt, hắn lấy hết tàn lực nói giọng khàn khàn:

- Lục chủ...! Phần tôi chết... bất hạnh đã dành.., còn Lục chủ cũng nên trốn đi nơi khác. Tôi thiết tưởng trên đời này chỉ có Lục Triển Nguyên .... mới cứu được.... còn con của Lục Triển Nguyên dẫu có thương người cũng chẳng làm gì nổi. Gia chủ ơi, gia chủ hãy trốn đi nơi khác là hay hơn... khỏi phải thiệt mạng. Sớm muộn hắn cũng trở lại đây...

Hơi nói yếu dần và ngất nghẹn. Cuối cùng hắn cố mở đôi mắt nhìn vào mặt Lục Lập Đỉnh lần chót.

Và khi thấy Lục Lập Đỉnh đã hiểu rõ ý muốn của hắn, hắn thở phào một hơi và nhắm mắt bằng lòng chết một cách thanh thản, không ân hận.

Người thiếu phụ rất cảm động trước cái chết của ba tên phiêu xa, thở dài nguyền rủa.

- Con ác quỉ! Con ác quỉ hắn nó không còn chút nhân tâm nào.

Bấy giờ Lục Lập Đỉnh mới có thì giờ để ý dến thiếu phụ, và nhớ đến ơn cứu mạng vừa rồi. Chàng chấp tay nói:

- Tôi thật kẻ có mắt như mù. Đứng trước núi Thái sơn mà không trông thấy, mong đại nương dung tha và cho kẻ hàn này được rõ đại danh.

Thiếu phụ đáp:

Thưa, dòng họ thiếp thuộc dòng quan gia, họ Vũ.

Lục Lập Đỉnh giật mình nói:

- Quả nhiên! Kẻ hèn này đoán không sai. Thấy đại nương săn sóc Lục Vô Song kẻ hèn này đã đoán hiểu đại nương là môn hạ của Đại sư Nhất Đăng, Đại lý đất Vân Nam. Vậy xin mời đại nương lên sảnh để kẻ hèn này được dâng ít chung trà.

Mọi người theo Lục Lập Đỉnh lên đại sảnh.

Sau khi an toạ, Lục Lập Đỉnh kéo con gáo vào lòng nựng nịu. Nét mặt cô bé còn xanh nhợt. tuy nhiên, cô bé rất can đảm. Dẫu vết thương còn đau mà cô bé không hề rên rỉ tiếng nào. Cử chỉ ấy khiến Lục Lập Đỉnh phải bận tâm suy nghĩ.

Qua một phút trầm lặng, Vũ tam nương cất tiếng:

- Lục chủ ạ! Chúng ta đang đứng trước một đối thủ rất kiên nhẫn và lợi hại. Vừa rồi đồ đệ của nó vừa tới thì nó lại thân hành đến ngay lập tức. Thiếp không dám khinh thường tài nghệ của Lục chủ, song đối với bọn chúng dẫu thiếp có giúp tay đi nữa cũng khó lòng địch nổi. Vả lại, với bọn này, khi chúng sanh chuyện thì trốn cũng không bao giờ thoát. Vậy tốt hơn sống chết đã có số trời, chúng ta cùng nhau đương đầu với chúng từ giờ phút này còn hơn. thiếp đoán chắc con ác tặc đó thế nào cũng trở lại.
')
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (3, N'Người Đạo Cô Áo Trắng', N'Lục đại nương hỏi:

- Con ác tặc đạo cô này là người thế nào? Vì sao đối với dòng họ chúng tôi lại có mối thâm thù như thế ?

Vũ tam nương nhìn về phía Lục Lập Đỉnh nói:

- Lục chủ có cho phép tôi được giãi bày chăng? Việc này có lẽ Lục chủ đã từng nghe Lục công kể lại.

Lục đại nương ngắt lời nói:

- Nhạc phụ tôi lúc sinh tiên cô nói rằng việc này dính líu đến nhạc mẫu, cho nên dẫu con cái trong nhà cũng chẳng tỏ tình. Vả lại, hình như nhạc phụ của tôi cũng không được biết tỏ cho lắm.

Vũ tam nương thở dài, nói:

- Tôi là người ngoài cuộc, có kể lại câu chuyện này cũng chẳng hề chi, nếu Lục chủ muốn biết rõ.

Lục Lập Đỉnh nói:

- Xin đại nương vui lòng cho chúng tôi biết .

Vũ tam nương nói:

- Tôn ông Lục Triển Nguyên, một lão anh hùng lúc thiếu thời, dáng mặt là một thanh niên tuấn tú, xứng danh là đệ nhất phong lưu trong giới vũ lâm. Còn con ác quỷ là Xích luyện Tiên tử tên là Lý Mạc Thu.

Lục Lập Đỉnh nghe đến tên Lý Mạc Thu liền nhắm mắt, thở dài một tiếng.

Vũ tam nương thấy thế ái ngại, kể tiếp:

- Xích luyện Tiên tử ngày nay đã làm cho giới giang hồ kiếm khách thất đởm dường ấy. Tuy nhiên, trước kia hắn là một thục nữ yêu kiều khả ái vào bậc nhất. Vì vậy, mới có chuyện oái oăm. Lục Triển Nguyên , trang anh hùng hiệp khách ấy đã say đắm tính tình và nhan sắc của Lý Mạc Thu. Chẳng biết đôi bên đã ràng buộc nhau bỏi tiền duyên oan nghiệt nào mà khi mới gặp nhau cả hai đều đem lòng quyến luyến lấy nhau trong một mối tình tha thiết nồng nàn. Họ đã từng phi ngựa bên nhau suốt ngày bên sườn núi, họ đã từng trao đổi nhau những lời nguyện ước ba sinh. 


Kể đến đây, Vũ tam nương ngừng lại, và thấy vợ chồng Lục Lập Đỉnh đang chú ý ngồi nghe nàng thở dai một hơi rồi kể tiếp:

- Rồi ... cũng như bao mối tình lãng mạn khác, mối tình giữa đôi trai tài gái sắc này không được bền vững với thời gian. Sau nhiều biến cố dồn dập, đôi bên không còn cơ hội gần nhau. Họ sống trong hoàn cảnh xa mặt cách lòng. Bỗng một ngày kia Lục Triển Nguyên kết bạn trăm năm với Hà Nguyên Quân, một tuyệt sắc giai nhân nổi tiếng trong một vùng.

Nghe đến đây, Lục Lập Đỉnh đôi mắt u buồn như đang mơ gì trong cõi mộng không gian.

Hà Nguyên Quân, một đoá hoa sắc nước hương trời, đã cũng với Lục Triển Nguyên, một phong lưu nghĩa hiệp chung sốnng. Thế thì cũng không lấy gì làm lạ. Nhưng đã nói đến Hà Nguyên Quân không thể bỏ qua câu chuyện Chuyết Phu được, mặc dù câu chuyện này không mấy tốt đẹp.

Từ nhỏ, Lục Lập Đỉnh cũng đã từng nghe cha mẹ nói cho biết gia đình chàng có hai kẻ thù: một là Xích luyện Tiên tử Lý Mạc Thu, hai là Vũ tam Thông cao đệ của Nhất Đăng Đại sư đất Vân Nam.

Nhất Đăng Đại sư xưa kia làm đại lý cho Vương quốc Nam chiều đến lúc tịnh vị tu hành thì có bốn đệ tử theo hầu, mỗi đệ tử chuyên chú một trong bốn ngành: ngư, tiều, canh, độc.

Vũ Tam Thông lúc thiếu thời vốn làm quan ở nam chiến, sau đó bỏ chức, theo Nhất Đăng Đại sư làm đệ tử, giữ việc nông tang.

Lục Lập Đỉnh chỉ biết có thế thôi. Còn mối thù giữa song thân với hai thù địch vì đâu gây oan nghiệt chàng cũng chưa được hiểu rõ.

Lục Lập Đỉnh thấy Vũ tam nương săn sóc vết thương cho Lục Vô Song chàng đã đem lòng nghi ngờ tự bảo:

- Mình đang tìm cách đối phó với kẻ thù này chưa hết thì kẻ thù kia đã tìm đến.

Sở dĩ Lục Lập Đỉnh nghĩ thế vì chàng cho Vũ tam nương một lòng với Vũ Tam Thông. Do đó chàng đã ra tay hành động. Không ngờ chính Vũ tam nương lại đương đầu với Xích luyện Tiên tử để cứu chàng và cả gia đình chàng. Bây giờ, Lục Lập Đỉnh ân hận không biết phải đối xử thế nào cho hợp lý.

Vũ tam nương vừa săn sóc vết thương trên mặt của con vừa tiếp tục kể:

- Chuyết phu và Hà Nguyên Quân vỗn được gần gũi nhau từ tấm bé và đôi bên chơi với nhau rất thân mật. Đến lúc lớn, mặc dù tính tình của hai người không hoàn toàn đồng hợp Chuyết phu vẫn đem lòng yêu Hà Nguyên Quân. Mối tình âm thầm ấp ủ trong lòng Chuyết phu cho đến lúc Hà Nguyên Quân, người yêu chàng bước lên xe hoa về chung sống trăn năm với Lục Triển Nguyên. Chàng trai si tình tức giận bèn đem cả gia đình thuộc hạ lên Đại lý phủ làm quan.

Một ngày kia, hai kẻ tình địch gặp nhau không phải vì ngẫu nhiên mà dọ sự quyết tâm tìm kiếm của chàng Chuyết phu hận tình.

Cuộc gặp gỡ bằng một cuộc thử tài. Thì ra, lúc đó Chuyết phu mới rõ tài nghệ của mình chưa phải là đối thủ của Lục anh hùng.

Sau hai lần thất bại trên tình trường, rồi trên vũ trường làm tâm hồn Chuyết phu rối loạn. Anh chàng si tình kia trở nên ngây dại.

Tuy nhiên, chàng ta chẳng bao giờ quên lời nguyện ước và cũng là lời thách đố với Lục Triển Nguyên là 15 năm sau sẽ so tài trở lại với tình địch.

Oái oăm thay! Đến lúc Chuyết phu có điều kiện giữ lời thề thì tình địch lẫn người yêu đã ra người thiên cổ.

Nghe đến đây, Lục Lập Đỉnh nổi giận, cau mày đá tung chiếc ghế lên trời nói:

- Nếu có muốn rửa hận thì cứ tìm thân phụ ta lúc sinh thời mà đọ sức, nay thân phụ ta quá vãng sao nó lại đến cướp thi thể làm cái chuyện đê hèn nhục nhã như vậy. Hành động ấy đâu xứng đáng với kẻ anh hùng hảo hớn.

Vũ tam nương than:

- Lục chủ trách như thế cũng phải, song Chuyết phu hiện giờ tâm trí cuồng loạn, cử chỉ thất thường còn biết là sao. Vả lại, hôm nay thiếp mang hai đứa con đến đây cũng không ngoài mục đích phòng bị Chuyết phu đến đây làm điều gàn dở. Trên trần Chuyết phu chỉ e ngại có mình thiếp và hai đứa con nầy mà thôi.

Nói đến đây Vũ tam nương ra hiệu bảo hai đứa bé:

- Các con hãy cúi đầu ra mắt nhị vị Lục gia.

Hai đứa bé ngoan ngoãn vâng theo lời mẹ chấp tay bái lạy vợ chồng Lục Lập Đỉnh.

Lục đại nương ân cần đỡ hai đứa bé dậy hỏi tánh danh.

Đứa bé bị thương ở mặt xưng là Vũ Đôn Nhu, còn đứa kia là Vũ Tu Văn. Hai anh em suýt soát nhau chừng một tuổi. Đứa lớn 12, đưa nhỏ 11.

Dòng họ Vũ xưa kia là dòng danh giá nên con cái đều mang danh tao nhã.

Vũ tam nương thưa:

- Thiếp chắc rằng Chuyết phu và Xích luyện Tiên tử thế nào cũng trở lại đây bởi vì cả ahi không phải là những kẻ vong ân bội nghĩa. Một người đến tìm hương thừa của người bạn gái, một người đến tìm bóng dáng chàng anh hùng trẻ tuổi đã in sâu trong con tim từ thưở nhỏ.

Vũ tam nương vừa nói đến đấy thì bỗng trên mái nhà có tiếng gọi:

- Nhu nhi! Văn nhi! Chúng bây hãy ra đây!

Tiếng kêu rõ ràng và kề cận đột nhiên phát xuất. Thật quái lạ, trên mái ngói không một tiếng động, dẫu một tiếng động nhỏ.

Vợ chồng Lục Lập Đỉnh kinh hãi đoán biết đó là tiếng gọi của Vũ Tam Thông. Ngay như Trình Anh và Lục Vô Song cũng nhận ra đó là tiếng nói của ông lão hôm nọ chúng đã gặp trên bờ hồ.

Trong khoảng khắc, Vũ Tam Thông nhảy xuống đất, đưa hai tay choàng lấy hai dứa con, mỗi đứa một bên như trước kia đã ôm TA và Lục Vô Song, rồi phóng mình lên mái nhà biến mất dạng.

Vũ ôm hai đứa con chạy một mạch đến khu rừng rậm thì dừng lại, thả Tu Văn lại đấy, chỉ ôm một mình Đôn Nhu chạy riết.

Vũ Tu Văn hoảng sợ hét lên:

-Cha ơi! Cha!

Nhưng tuyệt nhiên không thấy bóng dáng của cha nó đâu cả mà chỉ nghe tiếng vọng từ xa dội lại:

- Con hãy chờ đấy, cha sẽ trở về ngay.

Vũ Tu Văn vốn biết tính cha nó, lúc điên lúc dại, tuy phải chờ nơi rừng sâu nó cũng không lấy thế làm ngạc nhiên.

Trời mỗi lúc một khuya và bốn bề vắng ngắt. Thỉnh thoảng vài cơn gió lạnh lùng thổi đến lắc lư mấy cành dương như những cánhh tay dài thườn thượt của loài ma quái.

Cảnh tình của đứa trẻ quả là đáng ngại. Nhưng Vũ Tu Văn vốn tin vào lời dặn của cha nên hắn ngồi thừ dưới một gốc cây dương chờ đợi.

Mà đợi mãi vẫn không thấy cha hắn trở lại, hắn ngồi buồn vẩn vơ nghĩ đến câu chuyện mẹ hắn vừa kể lúc nãy và tự hỏi:

- Vì sao trong đời lại có những thiếu phụ si tình đến độc ác thế?

Nó nghi ngờ chẳng biết mẹ nó có đủ tài để đương đầu với con quái tặc ấy chăng.

Còn cha nó, trong cơn điên dại bỏ nó giữa rừng hoang chắc gì đã nhớ lời mà trở lại đem nó ra.

Nó đứng dậy nghĩ thầm:

- Thôi, mình hãy trở về tìm mẹ.

Nó dấn bước vào rừng dương lần mò tìm đường thoát nạn. Nhưng Giang nam là đất của rạch hồ, đường sá vô cùng bí hiểm, khách lạc loài dễ đâu tìm được lối đi. Huống hồ Vũ Tu Văn mới là đứa trẻ thơ bị bỏ rơi trong đêm tối thì hy vọng chỉ là chuyện mong manh.

Càng đi, Vũ Tu Văn càng tiến sâu vào hoang tịch. Nó cố gắng trèo lên một ngọn đồi cao nhưng nó chỉ thấy chung quanh bao la một màn đêm dày đặc.

Nó hét lên:

- Cha ơi! Mẹ ơi!

Rồi nó lắng tai nghe chính tiếng nó vọng lại từ bên kia đen tối:

- Cha ơi! Mẹ ơi!

Lặng đi một lúc nó lại nghe tiếng mèo rừng nghêo ngao từ xa thẳm. Tiếng nghêu ngao buồn bã và rùnng rợn làm sao !

Tu-Văn đã được nghe người ta kể về giống mèo rừng ở vùng nầy. Giống mèo rất lớn con, và rất thích cặp mắt người. Mỗi lần gặp người, dã thú nhất định không để nạn nhân chết trước khi hắn móc mắt ăn. Hắn cào cấu, xâu xé da thịt nạn nhân đau đớn phải khóc ra nước mắt. Lúc đó cuộc tiệc của nó mới bắt đầu. Nó nhảy nhót biểu lộ tất cả mọi hoan lạc rồi lè lưỡi liếm liếm những giọt nước mắt của nạn nhân chảy quanh mi. Cho đến lúc nạn nhân không còn nước mắt, nó mới móc mắt ra ăn.

Tu-Văn nghĩ đến câu chuyện ấy bằng trí óc tưởng tượng ngây ngô. Thốt nhiên nó thút thít khóc, và đôi dòng nước mắt chảy ròng ròng trên đôi má.

Càng khóc, nó càng sợ sệt thêm! Và nó trông thấy xa xa hai điểm sáng lập loè trong đêm tối. Hai điểm sáng tiến lần đến, càng gần trông càng giống hai ánh đèn trong.

Rồi, một mùi hôi tanh nồng nặc phảng phất. Cuối cùng nó nghe có tiếng hồng hộc, hai điểm sáng chạy về phía nó như bay.

Thì ra, đó là một con hổ lớn đang phóng mình đến khi thấy mồi.

Tu-Văn hoảng hốt, nhưng vẫn lanh trí. Hắn leo lên một gốc cây cổ thụ tìm một chảng ba chắc chắn ngồi chễm chệ để xem con hổ làm gì.

Hổ đến nơi, không thấy bóng dáng miếng mồi, tức giận nhảy lồng lộn tìm kiếm, và banh xé một bụi rậm gần đấy.

Nhưng chỉ một chốc, hổ bắt được mùi, tiến sát đến gần cây nhìn lên.

Khi trông thấy thằng bé, mãnh hổ gầm một tiếng nhảy phốc lên như một mũi tên. Nhưng cũng may sức mạnh của hổ không làm sao nhảy phốc đến chỗ Tu-Văn ngồi được.

Tu-Văn thấy thế mỉm cười, nghĩ đến lời mẹ hắn thường nói:

- Hễ vào rừng gặp hổ, phương thế an toàn là leo lên cây ẩn núp.

Hắn an lòng ngồi nhìn con hổ bất lực trước miếng mồi ngon. Thỉnh thoảng hắn lại thòng chân xuống đất để trêu ghẹo con hổ.

Cái trò chơi ấy khá giải trí, khiến cho Tu-Văn quên mất cả tình cảnh của hắn đang lạc loài giữa rừng đêm.

Nhưng đùa mãi cũng chán, nó mở dây thắt lưng cột người vào cành cây rồi đánh một giấc ngon lành. Trong lúc đó con hổ mệt nhoài, thở khì khì ngồi im dưới gốc cây nhìn lên.

Sáng hôm sau, khi mặt trời vừa lố dạng, Tu-Văn bừng tỉnh mở mắt nhìn xuống vẫn còn thâys con hổ đang ở trong thế đợi chờ.

Nó nhìn kỹ, nhận thấy giữa hai con mắt mãnh hổ có chữ "vương". Nó thất kinh, biết mình gặp phải con ác thú nguy hiểm nhất trong vùng.

Qua một đêm mệt mỏi, lại bị đói lòng, mãnh hổ quyết chẳng để cho con mồi trốn thoát. Hắn gầm lên một tiếng, thu thập tất cả sức lực vào mình, nhảy phóc lên.

Nhưng sức hổ có hạn, không thể nào phi thân đến chảng ba, chỗ Tu-Văn ngồi được.

Dẫu biết thế, nhưng mãnh hổ vẫn cứ nhảy chồm lên, hết lần này đến lần khác.

Cuối cùng, với thân hình nặng nề và mệt nhọc, mãnh hổ quỵ vào gốc cây, làm cho gốc cây lay mạnh, hắn vụt Tu-Văn xuống đất.

Tu-Văn hoảng vía, song vốn là con nhà võ, từ thuở lên ba cha mẹ đã luyện tập cho hắn ít nhiều, nên bất thần bị rớt xuống mà hắn vẫn như thường, hai chân chấm đất nhẹ nhàng như con chim đậu vào cành trâm.

Thừa dịp hổ bị lê mất trớn. Tu-Văn cắm đầu chạy. Con hổ sau khi gượng dậy được nổi giận gầm thét, và không bỏ thoát miếng mồi nên quất đuôi đuổi theo rất nhanh.

Tu-Văn cũng đã biến mất ít nhiều về thuật kinh công, song khốn nỗi tay chân ngắn và bé xíu không thể nào vận dụng lối hi hành thần tốc được. Hắn chạy được một quãng thì mãnh hổ đuổi theo kịp. Hắn kinh hãi, đổi hướng chạy rất ngặt, khiến cho con hổ phải nhiều lần vấp vào các gốc cây, mỏm đá đau đớn gầm thét vang rừng.

Đến một khúc quanh, bất thần Tu-Văn vấp vào một mỏm đá, té nằm sóng sượt.

Chợp được cơ hội, mãnh hổ nhảy bổ đến vồ mồi. Và lần này quyết không còn cách nào trật được.

Nhưng, Tu-Văn đang chờ đợi nanh vuốt hổ, thì ngay lúc đó, có hai vết đen từ trên trời hiện xuống. Con mãnh hổ đang lao mình đến thì bị vết đen đó sa xuống đớp lấy và lôi bổng lên trời.

Tu-Văn ngạc nhiên đến khiếp sợ. Hắn dụi mắt ngơ ngác đoán chừng như nó không tin tưởng ở đôi mắt nó nữa. Nhưng trước mặt nó rõ ràng hai vết đen kia còn hiện nơi không trung đang bay lờ lững.

Nó định thần nhìn kỹ, thì ra đó là một con chim ưng khổng lồ, mỏ quặp đang kẹp đầu con mãnh thú bay đi.

Nó khoái chí, vỗ tay cười, thì một vết đen khác, chẳng biết từ đâu đến, quắp mỏ kẹp lấy nó bay lên.

Thì ra, một con chim ưng khổng lồ thứ hai lại bắt nó bay theo con chim trước.

Bay được một lúc, chim ưng thứ nhất hé mỏ thả rơi mãnh hổ xuống một khu rừng. Mãnh hổ đánh ầm một tiếng, xương thịt tan tành.

Tu-Văn thấy thế thất kinh, sợ chim ưng kia thả nó xuống nữa ắt không toàn tánh mạng, nó đánh liều hai tay ôm chặt vào thân điểu.

Hai con thần điểu bay song song nhau lên vút tận mây xanh, Tu-Văn không biết chúng sẽ đưa nó về đâu và số mạng nó sẽ ra thế nào.

Cặp chim thần đang bay, bỗng nghe bên dưới có tiếng thanh la gõ lanh lảnh. Hai con chim như được hiệu lệnh ngoan ngoãn đậu xuống và thả Tu-Văn nhẹ nhàng giữa một đám thuý liễu xinh đẹp, dưới chân có hoa cỏ muôn ngàn hương sắc. Thật là một cảnh thần tiên đẹp như thế giới bồng lai mà mẹ nó thường kể.

Dưới một gốc thùy liễu, một đứa bé gái hiện ra, hướng về phía Tu-Văn bái chào, rồi tiến sát đến bên hai con thần điểu vỗ về khen:
- Thần Ưng! Khá lắm! Giỏi lắm!

Hai con thần điểu tỏ vẻ hoan hỉ, vỗ cánh quấn quít vào mình cô bé.

Tu-Văn nghĩ thầm:

- Hai con chim nầy chắc loại Thần Ưng!

Rồi mãi mê nhìn hai con chim quyến luyến bên cô bé. Tu-Văn quên hẳn việc đầu tiên là phải cảm tạ cô bé, hắn buột miệng hỏi một cách thân mật:

- Hai con chim này của cô nương nuôi?

Cô bé cau mày tỏ ý khinh thị:

- Ta chưa biết ngươi là ai? Ta không thèm nói chuyện với ngươi!

Dứt lời cô bé tu miệng hút một hơi ra tiếng. Hai con chim hiểu rõ ra lệnh, vội vã đập cánh bay bổng lên không tiến tới nơi con mãnh hổ bị rơi để hưởng một cuộc tiệc linh đình.

Tu-Văn nhìn đôi chim thán phục và nói:

- Đôi chim của cô nương quả thật tài tình. Tôi phải nói với phụ thân tôi bắt cho tôi một đôi mới được.

Cô gái cười, nói:

- Phụ thân của ngươi cũng bắt được chim ư?

Tu-Văn lấy làm khó chịu trước câu nói hàm ý mỉa mai, và cũng khinh khi ấy. Hắn trố mắt nhìn cô bé xem cô ta là người nào mà dám khinh thị hắn.

Nhưng đôi mắt của nó bỗng dịu lại. Vì cô bé kia tuy còn nhỏ, các đường nét chưa nẩy nở đến độ tuyệt mỹ, mà sắc đẹp đã hứa hẹn một tương lai huy hoàng. Tu-Văn tuy vào tuổi măng non mà cũng cảm thấy cái gì dìu dịu say say. Bao nhiêu ý tưởng bất bình đều tiêu tan hết.

Bỗng cô bé cất tiếng hỏi:

- Ngươi tên gì? Vì sao lại chơi một mình nơi hoang vắng? Không sợ cọp vồ mất mạng ư?

Tu-Văn đáp:

- Tôi đang đợi thân phụ tôi. Còn cô nương tên là gì?

Cô gái bỉm môi đáp:

- Ta đâu thèm làm quen với đứa bé con nơi thôn dã mà hỏi thăm tên họ.

Dứt lời, cô bé quay mình bỏ đi.

Tu-Văn đứng lặng nhìn một lúc rồi nói lớn:

- Này cô nương! Cô nương chớ hiểu lầm! Tôi đâu phải người thôn dã.

Vừa nói, Tu-Văn vừa chạy theo.

Cô bé nhỏ hơn Tu-Văn ba tuổi, người thấp, chân ngắn, ấy thế mà lại đi mau thoăn thoắt dị thường. Tu-Văn biết chắc cô biết thuật kinh công.

Đi một đoạn, cô bé dừng lại, ngoảnh đầu nhìn Tu-Văn lểnh mểnh bước theo, tỏ vẻ ngạc nhiên, nói:

- Ngươi cũng theo kịp ta ư? Thôi hãy cố lên!

Tu-Văn nói:

- Dĩ nhiên phải theo kịp.

Cô bé liền bước nhanh hơn nữa rồi tạt sang phía sau một cây cổ thụ nấp chờ tại đấy. Tu-Văn vẫn cố gắng tiến bước, chẳng ngờ khi đến gốc cây cổ thụ bị cô bé bất thần đá mạnh vào chân làm cho hắn té lộn nhào, mũi va vào viên đá máu chảy tung toé.

Cô bé thấy thế chẳng biết thương tích trầm trọng đến bậc nào nên tỏ ra bối rối.

Bỗng đằng sau có tiếng gọi:

- Phù nhi! Sao con lại bất nhã như vậy? Con thử xét lại hành động của con xem có đẹp chăng?

Cô bé không quay đầu lại, buộc miệng hỏi:

- Ai đó? Việc gì quan hệ đến ngươi? Chính nó muốn sinh sự nên nó phải ra thế. Ngươi đừng nói hồ đồ.

Tu-Văn lồm cồm ngồi dậy, lấy tay chùi máu ở mũi, nhưng chẳng thấy đau đớn gì cả.

Nó nhìn về phía xa, thấy một lão già hiền lành, tay cầm cây thiết trượng, vóc người gầy ốm song diện mạo rất oai phong.

Ông già cười lớn, hướng về cô bé, nói:

- Con bảo rằng ta không can dự và ăn nói hồ đồ ư? Trước đây còn có mặt cậu bé này làm chứng, con đừng chối cãi nhé?

Cô bé chạy đến ôm chầm lấy ông lão, và nói như hối hận:

- Thưa công công! Công công bỏ qua đừng về mách với phụ thân con nhé! Công công hãy giúp cậu ấy cầm máu đi.

Ông lão đến bên cạnh Tu-Văn, lấy tay vỗ mấy cái vào trán và điểm vào huyệt văn hương. Tức thì máu cầm chảy.

Muốn cho vết thương mau lành, ông lão còn tìm trên một huyệt đạo nữa nhưng lão kẹp Tu-Văn quá chặt, khiến Tu-Văn có cảm giác như ông lão muốn hại mình, hắn liền dùng thế "Triển cầm nã thủ" để tự vệ. Thế này trước đây mẹ Tu-Văn đã dạy.

Hắn đánh tống một cái làm cho ông lão lảo đảo. Tuy nhiên, chỉ nháy mắt, ông lão giữ hắn lại được và nói:

- Em đừng sợ! Ta không đánh em đâu. Em họ gì?

Tu-Văn đáp:

- Thưa tôi họ Vũ.

Ông lão trầm ngâm suy nghĩ, rồi hỏi:

- Có phải em nguyên là thuộc hạ của "Nhất Đăng Đại-sư chăng?

Tu-Văn mừng rỡ nói:

- Thế ra ông có quen biết với thân phụ tôi sao? Ông vừa gặp thân phụ tôi phải không? Tôi đang đi tìm thân phụ tôi, nếu ông thấy xin chỉ giùm. Ôi chao! Ông lại biết chúng tôi là hoàng gia ư?

Nguyên trước kia, Vũ-tam-Thông làm Tổng-quản Ngự-lâm quân cho Đoàn-trí-Hưng, đến lúc Đoàn-trí-Hưng xuất gia tu hành, lấy pháp danh là Nhất-Đăng thì cả gia đình họ Vũ đều theo đầu Nhất-Đăng. Vì thế, hai con của Vũ-tam-Thông lầm tưởng mình thuộc vào hoàng gia, và cứ mỗi lần có người nhắc đến giai đoạn ẩn náu ở Vân-Nam là hai đứa bé nhớ lại cái tư cách hoàng gia của dòng họ mình.

Ông lão gật đầu nói:

- Đúng rồi! Ta còn nhớ! Thế cha mẹ em hiện giờ ở đâu? Sao em lại đi lạc một mình?

Tu-Văn nghe nói biết ông lão không gặp cha mẹ mình, nên đâm ra hoảng hốt khóc sướt mướt:

Cô bé bụm miệng cười, trêu chọc:

- Xấu! Đã lớn đầu mà còn khóc.

Tu-Văn nói:

- Ai lại không khóc! Đúng lúc phải khóc thì nín sao được.

Rồi hắn kể lại các việc xảy ra từ lúc ở Lục gia trang đến lúc bị mãnh hổ đe doạ cho ông lão và cô bé nghe.

Ông lão hỏi:

- Con có biết địch thủ mà mẹ con đang chờ đợi là ai không?

Tu-Văn nói:

- Tôi nghe nói hình như người ấy là Xích-Luyện Tiên-Tử nào đó.

Ông lão nhíu mày, lẩm bẩm:

- Thôi, đích là Lý-mạc-Thu rồi! Nguy hại thật.

Qua một phút băn khoăn, ông ta quay lại nói với hai đứa bé:

- Các con hãy ở đây với nhau cho có bạn. Lão phải đi ngay bây giờ mới được.

Cô bé nũng nịu nói:

- Xin công công cho con cùng đi với.

Tu-Văn cũng nói theo:

- Con cũng xin đi nữa.

Lão già ra vẻ trịnh trọng đáp:

- Không được đâu! Lý-mạc-Thu là con ác tặc hầu như không còn chút nhân tâm. Lão không còn chắc gì đương đầu với hắn nổi. Nhưng nay giữa tình bằng hữu, lẽ đâu nghe bạn lâm nạn mà không đến giúp. Các con nên nghe lời lão ở lại đây cho an tâm.

Nói xong, lão vung cây thiết trượng một vòng rồi dùng thuật phi hành lao mình vun vút trong rừng xanh.

ấy giờ trời đã sáng rõ, nông phu đã tấp nập ra đồng, trai gái vừa cày bừa vừa ca hát rất vui vẻ.

Lão già vừa đi vừa hỏi thăm đường, chẳng mấy chốc đã đến lục gia trang.

Tuy cặp mắt của lão đã mờ đi theo tuổi tác, nhưng tại lão tinh anh vô cùng. Lão có thể nghe được tiếng động từ hàng dặm. Do đó vừa đến cổng Lục gia trang, lão nghe ngóng một lúc và biết ngay trong trang trại đang trại đang xảy ra cuộc đấu chiến vô cùng khốc liệt.

Đối với gia đình họ Lục cũng như gia đình họ Vũ, thật ra lão chưa có gia bảo đặc biệt nào. Tuy nhiên, gặp lúc hai gia đình này đang lâm nguy vì tay Lý Mạc Thu, một tay chọc trời khuấy nước, lão chẳng nỡ ngồi yên, muốn đem tài hèn sức yếu để phó trợ những kẻ thế cô.

Lão liền tung mình nhảy vào sân trang trại. Và lão nghe rõ tiếngg khí gíơi chạm nhau ran rản trên mái ngói.

Nhìn lên mái ngói, lão thấy bốn người chia làm hai phe, một bên ba, một bên một đang quần nhau tranh thắng bại. Nhưng xem chừng như phe ba người, mặc dù đông , lại bị tay kiếm đơn độc kia tấn công tới tấp.

Nguyên do là lúc Vũ Tam Thông bồng hai đứa bé phi thân mất dạng, vợ chồng Lục Lập Đỉnh kinh ngạc, chưa biết Vũ Tam Thông có dụng ý gì, thì trái lại, Vũ tam nương tỏ vẻ hoan hỉ cười sung sướng, nói:

- Chuyết phu lâu nay vốn điên điên, dại dại, thế mà lần này hành động rất chín chắn.

Lục đại nương hỏi:

- Như thế nghĩa là sao?

Vũ tam nương không giãi bãy chỉ trả lời:

- Xin phu nhân chờ rán một tí nữa sẽ rõ.

Lúc ấy trời đã khuya, Lục Vô Song ngồi dựa vào bắp đùi của phụ thân ngủ say, còn TA cũng đang mơ màng qua giấc ngủ. Lục đại nương thấy thế đưa tay ẵm hai đứa bé về phòng.

Vũ tam nương liền nói:

- Chúng ta chỉ chờ trong giây lát nữa thôi.

Quả nhiên trong khoảng khắc, trên mái nhà có tiếng động tiếp theo có tiếng nói rõ ràng là của Vũ Tam Thông. Con người này có những hành động kỳ quặc khiến cho vợ chồng Lục Lập Đỉnh không thể nào hiểu nổi.

Vũ Tam Thông gọi lớn:

- Hãy bồng chúng ném lên đây cho tô.

Vũ tam nương liền ôm Trình Anh và Lục Vô Song ném cho Vũ Tam Thông. Vũ Tam Thông đưa tay nhẹ nhàng ôm lấy và biến mình vào trong bóng tối.

Lục Lập Đỉnh ngơ ngác, chẳng biết họ hành động với mục đích gì liền hỏi:

- Các ngươi làm gì thế?

Dứt lời chàng rút kiếm nhảy lên mái nhà, nhưng lạ thay, chỉ trong nháy mắt đã không thấy tung tích của Vũ Tam Thông và hai đứa bé đâu cả.

Lục Lập Đỉnh toan phi thân đuổi theo thì Vũ tam nương cản lại nói:

- Lục chủ chở phí công vô ích, Vũ Tam Thông đưa hai đứa trẻ đi nơi khác với hảo ý .

Lục Lập Đỉnh nghe nói bớt nghi ngờ hỏi:

- Vũ Tam Thông dụng ý thế nào?

Vũ tam nương kề tai nói nhỏ:

- Chuyết phu muốn giúp Lục chủ đưa hai cháu đi đến nơi khác tránh bàn tay hiểm độc của ác tặc.

Như chợt hiểu ra, Lục Lập Đỉnh mỉm cười nói:

- Như vậy tốt lắm! Tốt lắm!

Tuy thế, nhưng trong lòng Lục Lập Đỉnh còn in sâu thfu hận về việc Vũ Tam Thông cướp tử thi của song thân nên chưa lấy gì làm tin.

Vũ Tam Thông nói:

- Từ thưở nay Chuyết phu tính không thích con trẻ. Ngay như Vũ Đôn Nhu và Vũ Tu Văn là hai đứa con ruột mà Chuyết phu cũnng thường tỏ ra ít quyến luyến. ấy thế mà nay mới gặp hai tiểu thư, Chuyết phu lại có cảm tình nồng hậu khác thường. Ôi! Đây cũng là việc mà Chuyết phu thay đổi trạng thái tâm hồn rất có ý nghĩa.

Nói đến đây, Vũ tam nương thở ra một hơi dài rồi nín lặng.

Qua một lúc, Vũ tam nương tỏ lời khuyên vợ chồng Lục Lập Đỉnh:

- Xin Lục chủ và phu nhân hãy tạm nghỉ ngơi một lúc. Tôi biết con quái tặc này có tánh tự phụ, ít khi đánh người trong đêm tối. Có lẽ nó chờ lúc thanh thiên bạch nhất mới động thủ.

Vợ chồng Lục Lập Đỉnh bây giờ không còn băn khoăn cho tánh mạng hai đứa bé thân yêu, tin tưởng rằng chúng đã được một nơi trú ẩn an toàn, nên tỏ ra gan dạ hơn trước và cương quyết xả thân đương đầu mọi hiềm khích, bất cứ do đâu gây nên. Cả hia kiếm không rời tay lăm le tiếng động là nhảy ra ứng chiến.

Ld và Lục đại nương kết hợp cùng nhau đã trên mười mấy năm trời, sống trong cảnh sống bình dị đã quen, chưa bao giờ nghĩ đến cảnh tang tóc, chia lìa. Bỗng nay gặp phải cảnh ngộ thù hằn, gia đình mang tai biến, con cháu phải thân ly, vợ chồng tánh mạng như sợi chỉ treo chuông, làm sao khỏi buồn tủi. Tuy nhiên đôi vợ chồng này vốn có dònng máu hào hiệp, quyết không vì thế mà bó tay làm tổn thương dòng giống.

Với tâm trạng ấy, đôi vợ chồng ngồi nhìn nhau thông cảm, không nói nên lời.

Ngoài xa, tiếng gà gáy văng vẳng vọng lại, Lục Lập Đỉnh nghĩ đến đàn gia súc của mình bị con ác tặc giết hại, trong nhà không có tiếng chó sủa, lòng bùi ngùi lẩm bẩm:

- Thật đúng là kẻ "khuyển bất lưu".

Trời hừng sáng ! Theo mọi bữa, vào giờ nay nơi Lục gia trang tưng bừng náo nhiệt, thế mà nay bốn bề lặng ngắt thê lương. Thật là một quang cảnh tràn đầy tử khí.

Bỗng nhiên "ầm" một tiếng! Một hòn đá rất lớn từ bên ngoài ném vào làm cho hai cánh cửa ngõ mở tung ra.

Mặc dù cánh cửa ngõ đêm vừa rồi bị kẻ lạ mặt dùng xích khoá chặt, tên nô bộc A Căn cẩn thận đóng then như thường lệ thế mà chỉ một tảng đá, cả xích sắt và then đều gãy rời ra hết.

A Căn nghe tiếng chạy đến thì thấy trước cổng đã hiện ra một đạo cô cực kỳ diễm lệ, mình khoác chiếc áo màu trắng tinh như tuyết.

Đạo cô vừa tiến vào chính là Xích luyện Tiên tử Lý Mạc Thu.

Tên A Căn trố mắt nhìn một lúc rồi cất tiếng hỏi:

- Ai đó? Muốn hỏi ai?

Bây giờ Lục Lập Đỉnh cũng vừa chạy đến, thấy đạo cô thất kinh gọi A Căn bảo:

- A Căn, hãy lui vào trong cho mau.

Nhưng đã trễ, Lý Mạc Thu nhanh tay đưa chiếc phất trần đánh nhẹ vào đầu A Căn một cái khiến tên nô bộc trung thành này nằm lăn ra chết tươi như đàn gia súc vừa rồi.

Lục Lập Đỉnh hầm hầm nét mặt múa kiếm lướt tới. Lý Mạc Thu vẫn điềm nhiên như không để ý. Nàng lấy phất trền gõ nhẹ vào đầu hai con tỳ nữ đang quýet sân, thấy nàng trố mắt nhìn.

Hai đứa tỳ nữ nằm lăn chết giãy.

Xong. Lý Mạc Thu mới quay lại hỏi Lục Lập Đỉnh:

- Còn hai đứa bé đâu ?

Lục Lập Đỉnh chưa kịp đáp thì đằng sau chàng Lục đại nương và Vũ tam nương đã kịp thời xông ra tiếp ứng.

Thấy vẻ mặt lạnh lùng, đanh ác của Lý Mạc Thu, mọi người căm tức thấu đến ruột gan.

Lý Mạc Thu nhìn Vũ tam nương cười mỉm:

- Có người ngoại cuộc muốn tham dự. ở đây không đủ chổ để nghênh chiến, vậy mời quý vị lên đây.

Dứt lời, Lý Mạc Thu tung chiếc phất trần nhảy gọn lên mái nhà.

Hai vợ chồng Lục Lập Đỉnh và Vũ tam nương không ngận ngại tung chân nhảy theo. Lý Mạc Thu ngạo nghễ không cần dùng đến cặp song kiếm, chỉ dùng chiếc phất trần chống đỡ với ba người mà sắc mặt luôn tươi cười hơn hở như đang dự một trò giải trí.

Ngược lại, ba đối thủ của nàng thay nhau tấn công tới tập, phí bao nhiêu sức lực mà vẫn không lay chuyển được mảy may sắc diện ngoạn lộng củ nàng.

Bỗng nhiên, Lý Mạc Thu quay ngược chiếc phất trần lại, cả ba đối thủ đều bị mất hung khí. Nàng cười khanh khách nhưng chưa vội hạ thủ. Nàng bắt đầu một trò chơi mới. Nàng cầm chiếc phất trần lăm le dí vào đầu từng địch thủ. Trong lúc đó, mỗi địch thủ phải mệt nhọc tránh né một cách hãi hùng.

Trò chơi mèo vờn chuột này tiếp diễn một hồi lâu khiến cả ba địch thủ đều mệt sức và buộc phải tự thú sự bất lực của mình bằng lời nguyền rủa.

- Tặc nữ, mày cứ giết ta đi còn đợi chừng nào nữa !

Nhưng, sự bỡn cợt của Lý Mạc Thu chưa thoả. Nàng vẫn với chiếc phất trần chơi cáu trò chơi ngạo nghễ đó.

Bỗng nhiên phía dưới có tiếng động khác thường. Lý Mạc Thu lắng tai nghe rồi bỏ ba người bại trận nhún mình nhảy xuống sân. Quả nhiên, nàng thấy một ông lão tay cầm thiết trượng xông đến.

Lý Mạc Thu mỉm một nụ cười kiêu hãnh rồi tung mình nhảy phóc về phía ông già.

Chân nàng chưa chấm đất nàng đã vung chiếc phất trần giáng cuống một đòn rất hiểm độc.

Với thế đánh này, Lý Mạc Thu thường dùnng trong lúc khẩn cấp mà ít kẻ tránh khỏi.

Lão giã tuy mắt loá nhưng nghe hơi gió biết ngay gặp phải địch thủ ác hiểm liền vung thiết trượng nặng ngàn cân về phía đối thủ.

Không thủ được bằng thế độc, Lý Mạc Thu biết mình gặp phải tay cự phách, liền xoay ngược chiếc phất trần hét lớn:

- Rơi ! Rơi!

Hai sức mạnh gặp nhau ! ông lão ra sức giữ cây thiết trượng không để văng khỏi tay mình, và cảm thấy không đủ sức giữ vững, bèn nhún người nhảy lên không mới tránh được ngón võ độc hiểm của Lý Mạc Thu.

Lão già lẩm bẩm:

- Con quái tặc này quả nhiên lợi hại! Tiếng đồn trong giới giang hồ quả thực chẳng sai.

Lý Mạc Thu lại tung chiếc phất trần lần nữa. Lần này nàng lại hét:

- Văng !Văng !

Nhưng, cây thiết trượng vẫn được ông lão bảo vệ chắc chắn không để rời khỏi tay.

Lý-mạc-Thu kinh ngạc, bụng bảo dạ:

- Ta đã từng dấn thân khắp giang hồ chưa thấy mấy người tránh được ngón đòn này! Chẳng biết lão là ai mà tài nghệ dường ấy.

Nàng co mình lại, nhảy lui mấy bước, trừng trừng nhìn kỹ vào mặt, thấy cặp mắt ông lão bị loà, nàng la lớn:

- A! có phải người là Kha-trấn-ác chăng?

Đúng vậy!. Ông lão nầy chính là Kha-trấn-ác, một trong bảy tay quái hiệp nơi đất Giang-nam.

Nguyên vì sau kỳ luận kiếm ở Hoa-sơn, đôi hiệp khách Quách-Tỉnh và Hoàng-Dung được kết làm vợ chồng. Thân phụ của Hoàng-Dung là Hoàng-dược-Sư cùng con rẽ tìm đến đảo, Đào-hoa để ẩn trú.

Nhưng chẳng bao lâu, Hoàng-dược-Sư lại bỏ đảo ra đi, để lại một bức thư căn dặn con rể chớ nên tìm kiếm vô ích.

Bởi vì, Hoàng-dược-Sư tuy tuổi già sức yếu vẫn chưa quên được tiếng gọi hải hồ.

Hoàng-Dung biết rõ tánh tình của cha, mặc dầu tha thiết nhớ nhung vẫn đành chịu biết sao hơn.

Cách mấy tháng. Hoàng-dược-Sư lại nhắn tin về một lần. Rồi từ đó về sau vẫn biệt vô âm tín, không rõ chết sống nơi nào.

Hoàng-Dung quá nhớ cha nên cùng Quách-Tỉnh dân bước khắp nơi để dò la tin tức. Nhưng qua mấy tháng trời vẫn biền biệt tăm hơi. Hai vợ chồng Hoàng-Dung lại phải trở về đảo Đào-hoả để kịp ngày khai huê nở nhuỵ.

Hoàng-Dung tuy là thân gái đào tơ, nhưng vốn dòng hiệp khách niên lấy làm khó chịu khi phải bó mình trong đảo để chờ ngày tháng sinh thai.

Hoàn cảnh ấy đã làm cho Hoàng-Dung bực dọc, trở nên cau có luôn luôn, kiếm chuyện gây gổ với Quách-Tỉnh, chồng nàng.

Quách-Tỉnh vốn tánh chất phác, thuần hậu, thấy thế thương tình, đem lòng nể nang, đón nhận những cái đay nghiến vô nghĩa của Hoàng-Dung.

Chẳng bao lâu Hoàng-Dung sanh đặng một gái, đặt tên là Quách-Phù.

Trong thời gian thai nghén, Hoàng-Dung hay phiền muộn, gắt gỏng. Tính tình đó không khỏi ảnh hưởng đến Quách-Phù. Do đó, chưa đầy một tuổi, Quách-Phù trở nên ngang ngạnh.

Quách-Tỉnh nhiều lúc thấy con như vậy đem lòng bực dọc, dạy, răn. Nhưng Hoàng-Dung lại bênh, khiến cho Quách-Phú càng lớn tuổi thì tánh ngang ngạnh cũng lớn theo, không thể sửa chữa được nữa.

Lúc Quách-Phú lên ba tuổi, được mẹ cô ta dạy về võ nghệ. Từ đó, trên đảo Đào-hoa, bất cứ một côn trùng, chim chóc, thú vật nào, hễ Quách-Phú trông thấy là đâm chém, giết hại, chặt đầu banh lông.

Thú vật trên đảo lần lần tìm nơi khác ẩn thân hết.

Quách-Tỉnh rất buồn phiền về tánh nết của con, nhưng lại nể vợ, không dám rầy la.

Bỗng một ngày kia có khách đến viếng thăm đảo. Khách đó là Kha-trấn-ác, sư phụ của Quách-Tỉnh.

Kha-trấn-ác những tưởng rằng sau bao năm giang hồ trôi nổi, có thể trở về một nơi tĩnh mịch vui thú điền viên. Nào ngờ, máu hào hiệp không cho phép ông ta như thế. Ông ta vẫn phải phiêu lưu đây đó.
Sau khi viếng thăm sáu người bạn xưa kia đã cùng lão nổi tiếng là thất-quái ở đất Giang-Nam, lão lại chạnh lòng nhớ đến người môn đệ là Quách-Tỉnh, lão liền lên đường tìm đến thăm.

Quách-Tỉnh và Hoàng-Dung gặp lại được sư phụ lấy làm mừng rỡ, lưu lại ở đảo, và khẩn khoản yêu cầu lão từ bỏ chương trình phiêu lưu để thầy trò an sống.

Kha-trấn-ác nhận lời. Thế là hàng ngày lão cùng Quách-Phù dạo chơi phong cảnh. Chẳng bao lâu, đôi bạn một già một trẻ trở nên thắm thiết, luôn luôn quấn quít nhau. Kha-trấn-ác lấy cô bé Quách-Phù làm nguồn tiêu khiển, Quách-Phù lấy Kha-trấn-ác làm kẻ nuông chiều, để nũng nịu và đòi hỏi những thoả mãn của trẻ con.

Ngày kia, Hoàng-Dung lại nhớ cha, bên cùng Quách-Tỉnh rời đảo đi tìm. Lúc ra đi, đôi vợ chồng ký thác Quách-Phù cho sự phụ.

Quách-Phù tuổi chưa bao nhiêu, tánh tình vốn ngang ngạnh, trên chẳng sợ trời, dưới chẳng sợ đất, chỉ chờ lúc vắng mặt mẹ cha là lập tức nằng nặc đòi Kha-trấn-ác dắt nó đi tìm ông ngoại là Hoàng-dược-Sư.

Nhiều lúc Kha-trấn-ác, nói với Quách-Phù:

- Con còn bé, không nên đi xa! Huống hồ đi tìm ông ngoại là việc khó khăn con không làm nổi.

Tuy nhiên, cô bé vẫn không từ bỏ ý định kỳ quặc đó.

Một hôm, Quách-Phù phóng mình lội xuống nước, bơi ra xa rồi gọi Kha-trấn-ác nói:

- Được rồi! Nếu công công không dắt cháu đi tìm ông ngoại thì cháu đi một mình. Cháu bơi ra giữa biển đây nầy!

Kha-trấn-ác xem thấy hoảng hốt. Ông lão không biết lội, lại thấy gió to sóng cả sợ con bé chết chìm, nói vội:

- Hãy lội vào đây! Đảo nầy cách đất liền có hơn ngàn dặm làm thế nào lội cho được.

Con bé thấy Kha-trấn-ác sợ hãi càng làm già:

- Chẳng thà chết chìm, còn hơn suốt đời bị giam hãm trên hải đảo nầy.

Dứt lời, hắn lại hụp mặt xuống nước hai tay chới với.

Lão già chẳng biết làm sao hơn, đành chịu thua la lớn:

- Thôi cháu hãy lôi vào bờ đi rồi chúng ta cùng bàn chuyện vượt hải đảo.

Quách-Phù vẫn một mực khư khư nói:

- Không, không! Ông bằng lòng hứa dẫn cháu đi tìm ông ngoại thì cháu mới chịu vào.

Kha-trấn-ác nói:

- Được, được! Ông bằng lòng dẫn cháu đi.

Quách-Phù nói:

- Quân tử nhất ngôn! Ông phải giữ lời đấy nhé.

Kha-trấn-ác không do dự, nói:

- Khoái mã nhất tiên.

Đó là câu thề độc mà các giới giang hồ quen dùng trên đất Giang-nam này. Lời nói ấy xem như danh dự của những ai có máu hào hiệp.

Quách-Phù cười khoái trá lội lên bờ, trong lúc đó Kha-trấn-ác ra dáng lo lắng và suy nghĩ đủ điều.

Chẳng bao lâu, cả hai sửa soạn hành trang đem theo một đôi chim ưng, dùng thuyền tiến về phía Tây.

Và ngay ngày hôm đó, hai người đến phủ Hồ-Châu, xin vào tá túc tại nhà một nông phu.

Trong lúc Kha-trấn-ác còn mệt mỏi vì cuộc hành trình nên ngủ say chưa dậy thì Quách-Phù đã ra ngoài ngao du, dẫn theo đôi chim ưng lểnh mểnh giữa làn sương xám.

Chợt thấy Vũ-tu-Văn lâm nạn, Quách-Phù liền ra tay xua đôi chim ưng cứu Tu-Văn khỏi nanh vút mãnh hổ như đã thuật ở đoạn trên.

Đây, chúng ta trở lại cuộc so tài hào hứng giữa Lý-mạc-Thu và Kha-trấn-ác.

Đôi bên say sưa giao chiến. Mặc dù Kha-trấn-ác vận dụng hết các môn bí quyết mà cũng không làm sao thắng nổi Lý-mạc-Thu.

Biết vậy, Kha-trấn-ác lui dần về phía ngoài cổng che kín mặt sau để thủ thế.

Lý-mạc-Thu vừa tấn công vừa suy nghĩ:

- Lão già nầy quả là một tay lợi hại trong thất kiệt Giang Nam. Mắt lão mù loà mà vẫn có thể cầm cự với ta trên mười hiệp. Như vậy danh bất hư truyền.

Bỗng Lý-mạc-thu nghe đàng sau có tiếng động.

Hai vợ chồng Lục-lập-Đỉnh và Vũ-tam-nương vừa chạy đến tiếp tay với Kha-trấn-ác.

Lý-mạc-Thu tự nghĩ:

- Trường hợp nầy ta có nên ra tay hạ sát Kha công chăng?

ý nghĩ của Lý-mạc-Thu không phải quá tự phụ.

Thực vậy, tài nghệ của Kha-trấn-ác tuy quán thông trong giới giang hồ, xứng đáng là một trong thất quái Giang-nam. Tuy nhiên so với tài nghệ nàng thì chưa thấm vào đâu. Nàng muốn đánh hạ Kha-trấn-ác lúc nào cũng được. Có điều nàng phân vân là nàng biết Kha-trấn-ác, sư phụ của đôi vợ chồng Quách-Tỉnh. Giết Kha-trấn-ác tức là gây vào đôi vợ chồng nầy một mối thù, mà tài nghệ của vợ chồng họ Quách, Lý mạc Thu không thể khinh thị.

Sở dĩ thế mà Lý-mạc-Thu vừa đánh vừa đắn đo suy nghĩ.

Nhưng rồi cuối cùng nàng cũng phải quyết định, nhất là khi cả ba đối thủ bại trận lại xông vào trợ lực với Kha công.

Lý-mạc-Thu quyết định tha chết cho Kha-trấn-ác để tránh hậu hoạ.

Nàng đảo lộn chiếc phất trần, đánh vào bụng Kha-trấn-ác, nhẹ nhàng như phất một cành hoa. Kha-trấn-ác không ngờ cái phất nhẹ nhàng như thế mà lại có sức mạnh vạn năng. Chiếc thiết trượng của lão vừa đưa ra đỡ liền bị rơi xuống đất. Lão nhanh chân lùi bước để tránh ngọn độc thủ của đối phương sắp tiếp diễn.

Nhưng Lý-mạc-Thu không tiến về phía Kha-trấn-ác mà lại đảo ngược chiếc phất trần tập kích Vũ-tam-nương.

Bị đánh bất ngờ, Vũ-tam-nương hét lên một tiếng kinh hoàng. Nàng liều mình xông tới một mặt tránh ngọn phất trần, một mặt tung kiếm chém ngang hông Lý-mạc-Thu.

Lý-mạc-Thu không đỡ, nép mình tránh lẹ làng và uyển chuyển như một cành sen uốn cong trước gió.

Chờ đến khi gió đã thoảng qua, cành hoa ấy trở mình dậy quất chiếc phất trần trở ngược lại Lục-đại-nương.

Tội nghiệp cho Lục-đại-nương với miếng võ ấy, nàng không tài nào đỡ nổi, bị chiếc phất trần đập trúng ngã chúi xuống đất.

Thấy vợ mình bị hại. Lục-lập-Đỉnh nổi giận, chẳng còn e dè trước tài nghệ quái ác của đối thủ nữa, chàng xông vào dùng dao chém túi bụi, và trổ hết những đường bí quyết trước ngọn dao thần tốc.

Lý-mạc-Thu mỉm cười, tiến sát vào người Lục-lập-Đỉnh, khiến cho những đường dao bí quyết của Lục-lập-Đỉnh trở nên vô dụng. Chàng tức mình hét lên một tiếng, buông dao, hai tay ôm Lý-mạc-Thu vào lòng.

Thế là tình cờ, tấm thân kiều diễm kia lại nằm gọn vào hai cánh tay của Lục-lập-Đỉnh, chàng trai trẻ đẹp ấy.

Chẳng biết trong tình thế nguy ngập Lục-lập-Đỉnh có cảm giác gì khi ôm được mỹ nhân kế sát vào ngực. Riêng Lý-mạc-Thu, từ ngày bị tình phụ, bao nhiêu nữ tính của nàng đã bị tiêu tan đi mất, nàng chỉ là một thiếu phụ trong bẽ bàng.

Tuy nhiên, khi nhìn tận mắt Lục-lập-Đỉnh, Lý-mạc-Thu lại có cảm giác như nhìn lại khuôn mặt của người yêu mười năm về trước. Cũng cái khuôn mặt vuông vuông ấy, cũng với vừng trán cao rộng ấy, cũng với đôi mắt thông minh và tình tự ấy. Chừng ấy hình ảnh lẽ ra làm tiêu tan mối căm hờn ghen tức trong lòng cô gái bị phụ tình.

Nhưng không, nếu Lục-lập-Đỉnh nhận xét kỹ càng hẳn thấy sắc mặt của Lý-mạc-Thu thay đổi qua nhiều sắc thái kỳ dị. Nàng siết chặt đôi hàm răng, dồn tất cả mọi căm hờn, độc ác vào đôi mắt nhìn Lục-lập-Đỉnh, hét:

- Đồ bạc tình! Đồ bội nghĩa!

Rồi nàng vung chiếc phất trần đánh vào Lục-lập-Đỉnh không hề có chút thương tâm.

Tội nghiệp cho Lục-lập-Đỉnh vô oán, vô thù mà phải chịu gánh trả một đòn căm hờn về tình duyên từ kiếp trước.

Vợ chồng họ Lục, chỉ phút chốc đã bị Lý-mạc-Thu đánh ngã Kha-trấn-ác và Vũ-tam-nương mặc dù còn sung sức cũng không thể giải cứu kịp những ngón đòn trong loáng mắt ấy.

Lý-mạc-Thu lại ngạo nghễ hỏi:

- Còn hai đứa bé nữa đâu?

Hỏi đến hai đứa bé, Lý-mạc-Thu muốn nói đến Trình Anh và Lục-vô-Song.

Rồi không đợi cho Vũ-tam-nương kịp mở miệng, nàng phóng mình lục soát khắp mọi nơi trong trang trại.

Nhưng không tìm đâu ra tung tích hai đứa bé, Lý-mạc-Thu phóng hoả đốt hết trang viên, lửa khói bốc cháy um tùm.

Đoạn, nàng quay ra nói với Vũ-tam-nương và Kha-trấn-ác:

- Ta vốn cùng Nhất-Đăng Đại-sư và Đào-hoa đảo không thù oán gì. Vậy xin từ biệt các ngươi.

Dứt lời, nàng toan phi thân. Nhưng Vũ-tam-nương và Kha-trấn-ác là hai kẻ nghĩa hiệp, đã từng tung hoành khắp giang hồ không thể mặc nhiên đứng nhìn cử chỉ hiên ngang của Lý-mạc-Thu, liền cùng nhau kẻ thiết trượng, người kiếm đòn Lý-mạc-Thu lại đánh.

Lý-mạc-Thu buộc lòng phải đưa phất trần ra đỡ, và đánh lại.

Một cái vút nhanh, đã làm cho thanh kiếm của Vũ-tam-nương rơi xuống đất gãy làm đôi.
')
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (4, N'Những Vị Anh Hùng Trên Đảo Đào Hoa', N'Vũ-tam-nương bị rơi kiếm vội cúi sát xuống đất để tránh. Mảnh kiếm gãy bắn tung rớt lên mái tóc của nàng làm cho nàng hốt hoảng hét lên. Kha-trấn-ác nghe tiếng biết việc chẳng lành liền vung thiết trượng chống đỡ. Chuôi gươm gãy của Vũ tam nương ngay lúc ấy văng về phía Kha-trấn-ác kịp lúc lão đưa thiết trượng ra, hai vũ khí chạm nhau nẩy lửa xẹt ra một vệt sáng loè.

Lý-mạc-Thu lại suy nghĩ:

- Nếu ta mặc nhiên tha chết cho Kha công mà không cho biết ý định của ta e lão hiểu lầm tài nghệ của ta chăng. Chi bằng ta cho lão một phen khiếp vía là hơn.

Nghĩ thế, nàng tung chiếc phất trần quanh mặt Kha-trấn-ác và trở lại trò chơi mèo giỡn chuột lúc ban nãy. Thỉnh thoảng nàng dùng phất trần phẩy nhẹ trúng thiết trượng buộc Kha-trấn-ác phải huy động cả sức lực để giữ cho thiết trượng khỏi rơi.

Cứ mỗi lần phất trần chạm vào thiết trượng là mỗi lần toàn thân Kha-trấn-ác phải dụng vận hết toàn lực. Nhưng ác thay, hết đòn nầy đến đòn khác, khiến cho ông lão qua một lúc không còn hơi sức nào để chống đỡ nữa. Còn Lý-mạc-Thu như đùa giỡn vẻ mặt tươi như đoá hoa trong nắng sớm.

Cuối cùng, Kha-trấn-ác không còn đủ sức để cống hiến cho cái trò chơi quái quắc của Lý-mạc-Thu, lão buông thiết trượng đứng ưỡn ngực, hét lớn:

- ác tặc! Đây nầy! Mi hạ sát ta đi! Đồ khốn kiếp.

Lý-mạc-Thu cười lớn, đưa chiếc phất trần giả vờ đâm vào cái bụng nhăn nheo của lão. Chiếc phất trần còn cách bụng lão độ vài phân nàng dừng tay lại, rồi vừa cười vừa nói:

- Ta đâu muốn hại tánh mạng lão. Ta đã nói lão là người ngoại cuộc, ta không có thù oán kia mà!

Nàng vừa dứt lời, bỗng đằng sau có tiếng động. Nàng quay lại thì thấy Vũ tam nương mặt hầm hầm xông vào cứu mạng Kha-trấn-ác.

Nhanh như chớp Lý-mạc-Thu nhảy phóc người lên không trung rồi thuận tay đánh vào gò má của Vũ-tam-nương.

Ngón chưởng này nàng thường tung ra trong cơn giận! Nó đột ngột và nặng nề quá sức làm cho Vũ-tam-nương mất thăng bằng ngã lăn xuống đất.

Đánh xong đòn Xích luyện thần chưởng. Lý-mạc-Thu hét lên:

- Tặc nữ! Ta đã bảo ngươi không phải là kẻ liên can, ta đã tha chết sao còn liều lĩnh.

Dứt lời, nàng phi thân biến mất.

Bị trúng phải thần chưởng. Vũ tam nương nằm bất tỉnh. Còn Kha-trấn-ác lúc đó vẫn còn có cảm giác như có phiến đá ngàn cân đè nặng trên bụng. Lão thở khò khè toàn thân mệt mỏi.

Qua một lúc, Vũ tam nương lần lần hồi tỉnh, nghe tiếng răn rắt bên tay, mở mắt nhìn thấy ngọn lửa tàn phá gia trang đã lần hồi cháy về phía mình. Nàng thất kinh gượng dậy đỡ Kha-trấn-ác tránh ra xa để khỏi nguy hiểm.

Bấy giờ lão già cơn mệt cũng vừa lắng dịu, nghĩ đến vợ chồng Lục-lập-Đỉnh liền cùng với Vũ tam nương đến nơi. Nhìn hai cái xác nằm sóng sượt, Vũ tam nương cũng như Kha-trấn-ác không khỏi bùi ngùi thương xót.

Vợ chồng Lục-lập-Đỉnh chưa chết. Họ vẫn còn trong thoi thóp nhưng không thể nào sống được lâu.

Kha-trấn-ác và Vũ tam nương đều ở trong tình trạng khó xử.

"Để họ lại ư?"

Đã là hiệp sĩ ai lại có thể nhẫn tâm trước những sinh mệnh đang hấp hối!

Nhưng mang họ theo thì sau một cơn kiệt lực, cả hai đều chưa đủ sức cứu lấy mình còn mong gì cứu lấy người khác.

Trong lúc lương tâm hai người đang giày vò phân vân trước sinh mạng vợ chồng Lục-lập-Đỉnh thì đằng xa có tiếng gọi:

- Nương tử! Nương tử có hề gì không?

Đúng là tiếng kêu của Vũ-tam-Thông. Vũ tam nương mừng rỡ vô cùng. Càng mừng hơn nữa khi nàng nghĩ rằng chắc Vũ tam Thông không còn điên khùng như trước nữa nên mơí biết mà đến trong lúc nguy nan.

Vũ-tam-Thông áo quần tả tơi, hướng về phía lửa cháy, miệng la:

- Nương tử ơi! Nương tử có hề gì không?

Vũ-tam-nương cảm động, chạy ra ôm choàng lấy chồng, kéo về phía vợ chồng họ Lục đang nằm thoi thóp.

Vũ-tam-Thông không nói rằng gì cả, với tay kẹp mỗi người vào nách rồi cắm đầu chạy.

Kha-trấn-ác tuy chưa được giới thiệu cùng đôi vợ chồng họ Vũ, song nhận biết họ là kẻ hào hiệp nên lặng lẽ phi thân theo sau.

Chẳng mấy chốc, Vũ-tam-Thông đã dẫn mọi người lâm nạn ấy đến một sơn động.

Thật ra, phủ Hồ-Châu vốn ít núi non, toàn là đồng bằng phì nhiêu, nên nơi nào có ngọn đồi cao, có một số hang hố thì ở đấy dân cư gọi là sơn động.

Vừa bước vào sơn động, Vũ-tam-nương đã thấy ngay Vũ-đôn-Nhu, Vũ-tu-Văn, Trình-Anh, Lục-vô-Song đều có mặt nơi đó. Chúng đều được bình an vô sự và đang chơi đùa với nhau. Ngoài ra còn một đứa bé gái ra vẻ con nhà trâm anh quyền thế, trạc tuổi Trình-Anh và Lục-vô-Song sắc diện hiện ngang. Trông cái nhìn của đứa bé gái ấy, người ta cảm thấy có một sự cách biệt về tính tình, khó hoà mình với các em bé kia được. Em bé đó chính là Quách-Phù, ái nữ của Quách-Tỉnh và Hoàng-Dung.

Quách-Phù thấy Kha-trấn-ác bước vào, liền nói:

- Công công ơi! Chẳng biết vì sao đôi chim ưng bay mất tích.

Cháu gọi thế nào nó cũng không về.

Trình-Anh và Lục-vô-Song ôm chầm lấy thi xác của của vợ chồng Lục-lập-Đỉnh vừa khóc vừa than.

Bỗng Kha-trấn-ác buột miệng hét:

- Không xong rồi! Chúng ta đã vô tình chỉ đường cho con quỉ cái đó đến tìm mồi.

Vũ-tam-nương nghe nói thất sắc nhưng chưa hiểu ra sao.

Kha-trấn-ác giải thích:

- Con ác tặc đó đã thanh toán Lục gia trung chỉ còn hai đứa bé nầy nữa. Nhưng nó chưa biết hai đứa bé nơi nào thì...

Vũ-tam-nương chợt hiểu ra nói tiếp:

- à! Đúng rồi! Quái thật! hắn dụng ý tha mạng chúng ta để lò la tông tích hai đứa bé.

Vũ-tam-Thông hầm hầm nét mặt, la lớn:

- A! Con ác tặc nầy xem ra lợi hại quá! Ta phải cùng nó một còn một mất mới được.

Dứt lời, lão nhảy phóc ra cửa đứng án ngự như giữ thế và chờ đợi.

Lục-lập-Đỉnh tuy xương đầu đã bị nát vụn nhưng trong lòng còn ấp ủ đôi việc chưa được nói ra, nên dãy dụa kéo dài thì giờ lâm chung qua một lúc, chàng dốc hết tàn lực, mở to đôi mắt quay về phía Trình-Anh trối:

- Châu Anh! cháu hãy đỡ cậu dậy! Nơi bụng cậu có một vuông lụa bạch, cháu... hãy lấy ra...

Tiếng nói mệt nhọc nhỏ dần. Trình-Anh cúi sát dần xuống để nghe cho rõ nhưng chỉ còn nghe được mấy tiếng thì thào.

Trình-Anh vâng lời vén bụng Lục-lập-Đỉnh lên rút ra vuông lụa bạch, trên vuông lụa có thêu đoá hoa hồng.

Đoá hoa hồng nầy thật là kỳ dị. Nhìn qua thì cực kỳ diễm lệ, nhưng nhìn kỹ thì cực kỳ hiểm hóc. Ai nhìn lâu cũng phải rỡn óc.

Lục-lập-Đỉnh nghĩ một lúc rồi cố nói tiếp:

- Cháu Trình-Anh! Cháu hãy buộc vuông lụa nầy vào cổ, và không được giây phút nào cởi bỏ ra! Cháu nghe rõ chưa?

Trình-Anh tuy nhận ra được câu nói nhưng không hiểu ý nghĩa ra làm sao liền cúi xuống gần, nhưng Lục-lập-Đỉnh chỉ còn mở to đôi mắt có ý dặn dò, không nói nữa.

Là lời di chúc, Trình-Anh không muốn để phiền lòng người chết, vội gật đầu.

Giữa lúc đó, Lục-đại-nương đang mê man bất tỉnh, thoạt nghe lời trối của chồng, nàng bừng tỉnh lại, và nói:

- Vì sao chẳng truyền lại cho Vô-Song lại truyền cho Trình-Anh?

Lục-lập-Đỉnh cố nói lời sau cùng:

- Không! Ta không thể phụ lời ký thác của cha mẹ Trình-Anh.

Lục-đại-nương nói tiếp:

- Ông thật lòng dạ sắt đá! Con đẻ không thương lại thương cháu.

Dứt lời, đôi mắt Lục-đại-nương trắng chợt theo khuôn mặt.

Lục-vô-Song nãy giờ khóc than không để ý những lời đối đáp của cha mẹ nó.

Lục-lập-Đỉnh như chưa hết nỗi nuối tiếc, ngẩng đầu nhìn vợ nói:

- Nếu phu nhân thương con thì hãy để cho nó cùng theo chúng ta về suối vàng là hơn.

Nguyên cái vuông lụa có thêu đoá hoa hồng là vật kỷ niệm đầu tiên của Lý-mạc-Thu thân tặng cho Lục-triển-Nguyên để thắt chặt mối thâm tình. Khi lâm chung, Lục-triển-Nguyên đoán biết hai mối tình ngang trái của mình và vợ sẽ đưa đến hai mối thù oan nghiệt, không thể không đi họa đến con cháu về sau.

Do đó, lúc lâm chung Lục-triển-Nguyên trao vuông lụa cho Lục-lập-Đỉnh và dặn: "Mối thù của Vũ-tam-Thông nếu hắn tìm đến thì con liệu tránh được thì tránh bằng không thì đương đầu đấu chiến. Với Vũ-tam-Thông bắn không đến nỗi làm cho con thiệt mạng. Còn đối với Lý-mạc-Thu, một tay võ nghệ cao cường lại có lòng hiểm độc, nếu hắn tìm đến thì cách đối phó duy nhất để bảo tồn sinh mệnh là tròng vuông lụa này vào cổ hắn. Hắn sẽ nhớ lại mối tình đầu mà không đủ can đảm để tàn nhẫn nữa.

Tuy nhiên, Lục-lập-Đỉnh vốn con người tự phụ, cho đến phút lâm chung, cũng không sử dụng vuông lụa theo lời trăng trối của người cha, dù là để cứu mạng.

Trình-Anh là cháu ruột của Lục-lập-Đỉnh. Cha mẹ Trình-Anh, từ lúc nhỏ đã ký thác con cho Lục-lập-Đỉnh nuôi dạy. Thường ngày Lục-lập-Đỉnh cũng tỏ ra nghiêm khắc với Trình-Anh, nhưng đến lúc lâm chung Lục-đại-nương không ngờ chồng mình có thâm tình với cháu như thế.

Riêng Trình-Anh, cô ta hiểu nỗi bất bình chính đáng của Lục-đại-nương nên cầm vuông lụa đưa cho Lục-vô-Song và nói:

- Em hãy giữ lấy của này cho vui lòng mợ.

Lục-lập-Đỉnh nghe lời nói ấy mở vội đôi mắt, với vẻ nghiêm nghị, nói:

- Vô-Song! Con không được giữ vuông lụa nầy.

Vũ-tam-nương thấy việc éo le gay cấn, đề nghị:

- Chúng ta hãy xé vuông lụa làm đôi, cấp cho mỗi đứa một nửa. Như thế mới ổn thoả. Xin gia chủ vui lòng theo giải pháp đó.

Lục-lập-Đỉnh muốn trả lời song không còn đủ sức nữa. Tiếng nói ngập ngừng rồi nghẹn trong cổ họng. Cuối cùng Lục-lập-Đỉnh gật đầu.

Vũ-tam-nương liền lấy vuông lụa xé toạc ra làm hai mảnh đưa cho hai em bé mỗi em một nửa.

Bấy giờ Vũ-tam-Thông đang án ngự ngoài cửa động, nghe tiếng khóc chợt quay vào thấy trên hai gò má vợ một bên có một vết trắng như bạc, một bên có một vết đen như lọ, chẳng biết duyên cớ vì đâu, ngạc nhiên hỏi:

- Vì sao lại thế nầy?

Vũ-tam-nương nghe hỏi nhớ lại độc chưởng của Xích-Luyện Tiên tử, bèn lấy tay xoa lên hai gò má thì bấy giờ hai gò má đã tê cóng.

Nàng hốt hoảng, than:

- Chết rồi! Thiếp đã bị nhiễm độc của Xích-Luyện thần chưởng:

Bỗng ngoài cửa động có tiếng cười sằng sặc, hỏi vọng vào:

Có hai đứa bé trong đó chăng? Bất luận sống hay chết hãy mau đem ra giao lại cho ta.

Tiếng cười và tiếng nói trong như chuông ngân.

Vũ-tam-Thông xoay người trở lại.

Quả nhiên, Lý-mạc-Thu đứng đấy tự bao giờ với dáng điệu vô cùng ngạo nghễ.

Vũ-tam-Thông nhìn Lý-mạc-Thu ngạc nhiên: Bốn mươi năm trời, từ khi gặp nhau lần chót, người thiếu phụ này cũng vẫn giữ nguyên nhan sắc, cũng vẫn yêu kiều diễm lệ như xưa. Vũ-tam-Thông có cảm giác như con đạo cô này thách đố cả thời gian để mãi mãi tồn tại gieo hoạ vào bao nhiêu thế hệ về sau.

Nhìn thấy Lý-mạc-Thu cầm chiếc phất trần phe phẩy nơi tay Vũ-tam-Thông hiểu rõ mối nguy cơ đang chờ đợi mọi người, nhưng trong tay lão không có vũ khí.

Bởi vì, vào động tức là thả cho con ác tặc theo vào, còn chống cự biết dùng vật gì ngăn cản.

Chỉ loáng mắt, Vũ-tam-Thông nhanh trí nhảy đến một cây cổ thụ cạnh cửa động, ôm chầm gốc cây hô lớn:

- Lên.

Gốc cổ thụ bật lên tận gốc rễ cành lá rườm rà. Vũ-tam-Thông cầm múa tròn, tiến sát vào người Lý-mạc-Thu mục đích vây Lý-mạc-Thu vào giữa tàng cây rườm rà để mọi người có đủ thì giờ trốn thoát.

Lý-mạc-Thu hiểu ý, lùi mấy bước, vừa cười vừa nói:

- Vũ công còn mạnh đấy chứ!

Vũ-tam-Thông dừng tay, trả lời:

- Đã bốn mươi năm trời chẳng gặp nhau, nay tôi trông Lý cô nương vẫn còn đẹp lắm.

"Lý cô nương" là một lối gọi mà cách bốn mươi năm về trước không một chàng trai hảo hớn nào không tìm dịp để được gọi nàng như thế. Nhưng từ khi mối hận tình đã khiến Lý-mạc-Thu trở thành một đạo cô độc ác thì lối gọi Lý cô nương cũng cùng với thời gian bị chôn lấp. Vả lại, ngày nay cũng chẳng còn gì dám gọi Lý mạc Thu với tiếng gọi êm đềm như thế.

Mặc dù Lý mạc Thu con tim đã bị giá lạnh, giá lạnh đến chua chát, bẽ bàng trong dĩ vãng, nhưng không thể không chạnh lòng khi nghe có người còn nhắc đến tên Lý cô nương.

Thật vậy! Đã biết bao nhiêu chàng trai phong lưu đua tài tranh nhau gọi "Lý cô nương".

"Lý cô nương", "Lý cô nương" một âm thanh dung hoà trong cuộc sống đào hoa, hay tiếng kêu hối hận của một kẻ vong tình đang bị lương tâm cắn xé?

Nhưng nhắc đến ba tiếng "Lý cô nương" Lý mạc Thu lại cảm thấy sống dậy trong lòng mình ba tiếng "Hà nguyên Quân" ba tiếng tình địch trong đời nàng.

Cảm giác như thế, sắc mặt Lý mạc Thu bỗng cay cú chẳng khác gì đoá hoa hồng trên khuôn lụa bạch.

Vũ tam Thông cùng với Lý mạc Thu đều là những kẻ không may trên tình trường thì tâm tánh có khó gì mà không thông cảm.

Cũng như cách đây mười năm sau khi thất tình, một ngày nọ Vũ tam Thông gặp một đoàn phiên xa gồm có mười người của Hà thị phiêu cục. Chẳng may cho đoàn người này trong hắn chữ Hà thị phiêu cục sơn trắng phiên xa, chữ Hà to lớn đập mạnh vào trí óc của Vũ tam Thông khiến cho chàng trai thất tình ấy nhớ lại tên người yêu rồi nổi cơn điên giết cả mười tên lão phiêu. Tội nghiệp cho những tên này, đến lúc bị tàn sát cũng chẳng biết nguyên do.

Ngay nay Vũ tam Thông hẳn rõ tâm trạng Lý mạc Thu hơn ai hết. Thấy sắc mặt nàng thay đổi, Vũ tam Thông hồi hộp cho sinh mạng của Trình Anh và Lục vô Song.

Lý mạc Thu nghiêm sắc mặt, nói:

- Chính ta đã in chín bàn tay máu vào Lục gia trang. Ta chưa hạ thủ được chín mạng lẽ nào ta chịu dừng tay. Vậy Vũ tam ca hãy vui lòng nhường bước.

Vũ Tam Thông nói:

- Hai vợ chồng Lục công đã chết; vợ chồng Lục lập Đỉnh đã thọ độc vì tay người. Nay chỉ còn một đứa bé nhỏ, ngươi nỡ nào nhẫn tâm như vậy.

Lý mạc Thu điểm nụ cười trên khuôn mặt lạnh lùng, nói:

- Vũ tam ca! Hãy nói là còn hai đứa bé thì đúng hơn. Nhưng thôi! Hãy nhường lối cho ta đi.

Vũ tam Thông xoay ngang cây cổ thụ rào kín lối vào động và dằng từng tiếng:

- Này Lý cô nương! Thế thì Lý cô nương quả là trắc dạ lang tâm. Hà nguyên Quân...

Nghe nói đến "Hà nguyên Quân" Lý mạc Thu biến sắc lần nữa, hét:

- Ta phải nói để ngươi rõ. Trước mặt Xích Luyện tổ sư ta đã có lời thề. Nếu trước mặt ta, kẻ nào nói đến tên "Hà nguyên Quân" thì kẻ đó phải chết, hoặc ta phải chết. Nay Vũ tam ca tự nhiên bắt ta phải trọng lời thề, vậy ngươi đừng oán ta nhé.

Dứt lời, nàng tung chiếc phất trần đánh vào đầu Vũ tam Thông.

Chiếc phất trần đánh xuống mau như chớp nhoáng. Nhưng Lý-mạc-Thu đã quên rằng con người điên dại đầu óc bồm xồm kia là cao đệ của Nhất-Đẳng Đại-sư, và Lý-mạc-Thu còn quên một điều nữa là Vũ-tam-Thông ngày nay đâu phải Vũ-tam-Thông bị rơi vũ khí trước ngực của Lục-triển-Nguyên bốn mươi năm về trước. Vận dụng tất cả mọi kinh nghiệm của bốn mươi năm lăn lóc trên vũ trường, Vũ-tam-Thông dùng hai bàn tay làm bung cây cổ thụ như một chiếc dây cung để đỡ ngón đòn độc hiểm của Xích-Luyện Tiên-tử.

Lý-mạc-Thu thấy khí thế của Vũ-tam-Thông quả nhiên lợi hại, nàng liền nép mình theo hướng gió, bay xa khỏi tầm cổ thụ và quan sát từng khe hở của Vũ-tam-Thông để tấn công cho có hiệu quả hơn.

Lý-mạc-Thu đảo qua đảo lại liền hồi, khiến cho Vũ-tam-Thông không kịp day trở tàng cây cổ thụ nặng nề ấy.

Nhân lúc đối phương lúng túng, Lý-mạc-Thu nhảy vụt xuống đưa chân đạp vào gốc cây cổ thụ.

Con người Lý-mạc-Thu mong manh, thơ nhi liễu yếu nhu đào, ấy thế mà sức đạp của nàng lại nặng nề có đến ngàn cân, khiến cho gốc cây phải lún xuống đất.

Thế là hai đối thủ dằng co nhau một cây cổ thụ. Một bên đè gốc, một bên đè ngọn.

Nhưng Lý-mạc-Thu ghì được ưu thế, lại có vũ khí trong tay, còn Vũ-tam-Thông đã không có vũ khí, hai tay lại bận giữ ngọn cây.

Lý-mạc-Thu cười khúc khích như để hoan thưởng cái lợi thế của mình. Trong lúc đó, Vũ-tam-Thông bắt đầu nao núng, mối lo ngại bắt đầu vẩn vơ trong trí óc.

Thật ra, Vũ-tam-Thông không hề lo ngại cho mình, bởi vì từ khi biết tia tình địch lẫn người yêu đã hoá ra người thiên cổ, ông ta không còn tha thiết đến cuộc sống như đã thiết tha trong bốn mươi năm qua rèn luyện võ nghệ để rửa hận thù. Nay trước nguy cơ hăm doạ sanh mạng của con cháu người yêu và của vợ con mình khiến Vũ-tam-Thông vụt ra ý nghĩ cần phải sống để bảo vệ kẻ thân yêu. Bấy giờ Vũ-tam-Thông lo mối nguy hại chung hơn là lo cho bản thân.

Trong lúc ông ta đang lo suy nghĩ thì Lý-mạc-Thu vẫn cười ngạo nghễ trong đắc thế. Nàng đạp chìm gốc cây cổ thụ xuống đất rồi bước lần về phía Vũ-tam-Thông tay lăm lăm chiếc phất trần như chực kết thúc sinh mạng đối thủ.

Vũ-tam-Thông nhìn con ác tặc lẩn lẩn tiến đến đang chờ đợi một định mệnh khắt khe cho cả một đoàn người vô tội.

Trong lúc nguy cấp, bỗng từ đàng sau Lý-mạc-Thu từ trên trời, lao xuống hai vệt đen, tiếp theo những tiếng kêu lạ lùng quái dị.

Vũ-tam-Thông ngạc nhiên thấy đó là hai con chim ưng khổng lồi sà xuống bấu vào Lý-mạc-Thu chúng dùng mỏ và móng nhưng bấu xé liên hồi, thay phiên nhau tấn công tới tấp.

Lạ lùng hơn nữa trong động có tiếng the thé của cô bé Quách Phù đang điều khiển cặp chim:

- Thần ưng! Thần ưng! Hãy mổ xé xác con quái tặc ấy.

Đôi chim ưng vô cùng khôn lanh, lúc bay về phía tả, lúc sà xuống phía hữu, đến như Lý-mạc-Thu lanh lẹ dường ấy mà cũng phải lúng túng trong lúc tránh né.

Tuy nhiên, qua một lúc, Lý-mạc-Thu lấy ngay được bình tĩnh. Vì qua vài đợt tấn công nàng đã xác định được giá trị của đôi chim. Nàng tin rằng pháp thuật của nàng có thừa để đối phó.

Tuy nhiên, đánh hạ đôi chim là việc nàng còn phải suy tính. Bởi vì nàng thừa hiểu chỉ có đảo Đào-hoa mới có đôi chim ấy. Vậy đương đầu với đôi chim ưng tức là chuốc lấy hậu quả oan thù với họ Quách, điều mà Lý-mạc-Thu không bao giờ nghĩ đến.

Trong lúc nàng còn lưỡng lự chưa quyết thì đôi chim vẫn hăng say trong lợi thế, cứ áp đảo luôn hồi.

Bỗng con chim mái bất đồ trúng phải chiếc phất trần của Lý-mạc-Thu sa xuống đất kêu một tiếng thất thanh.

Quách-Phù thấy thần ưng bị hạ, từ trong động hô to:

- Thần ưng! Thần ưng! không có gì phải sợ, hãy cắn chết con nữ tặc ấy cho ta.

Lý-mạc-Thu liếc mắt nhìn vào động thấy người ra hiệu lệnh cho đôi chim là một cô gái nhỏ, sắc mặt lạ lùng. Nàng nhíu mày lẩm bẩm:

- Thôi, đúng rồi! Con bé này phảng phất giống nhan sắc của Quách phu nhân. Đích thị nó là đứa con gái của đôi hiệp sĩ ở đảo Đào-hoa.

Nghĩ như thế, Lý-mạc-Thu càng phân vân, chỉ đánh cầm chừng.

Vũ-tam-Thông thấy có đôi thần ưng trợ lực, thay đổi chiến thuật. Ông ta nhặt một tảng đá lớn ở góc động ném vào chậu cây cổ thụ, rồi đỡ nhẹ cây cổ thụ lên kê vào hòn đá. Đoạn ông ta bất thần dồn hết sức lực đè ngọn cây xuống khiến cho gốc cây bật lên và tung Lý-mạc-Thu bay vút lên trời.

Đôi chim ưng tưởng Lý-mạc-Thu phi thân trốn thoát liền vỗ cánh đuổi theo.

Trong lúc Lý-mạc-Thu lơ lửng giữa không trung không có điểm tựa để sử dụng mảnh lực chiếc phất trần thì bị đôi chim vây hãm rất ngặt. Nàng túng thế liền tung bửu bối từ trong tay áo nàng bay ra ba chiếc kim châm hổ phách. Hai chiếc nhắm hướng hai con chim ưng và một chiếc nhắm bụng Vũ-tam-Thông phóng tới.

Ba chiếc kim bắn rất chính xác. Đôi chim bị thương quằn quại bay vút tận mây xanh. Còn Vũ-tam-Thông chợt thấy một tia sáng xẹt tới ông ta vội nhảy tránh sang một bên. Nhưng đã trễ, chiếc kim son trúng vào bàn toạ bên trái khiến cho toàn thân lão run lẩy bẩy ngã xỉu xuống đất dãy đành đạch.

Chỉ chốc lát, Vũ-tam-Thông bất tỉnh.

Quách Phù thấy thế sốt ruột từ trong động cất tiếng lanh lảnh gọi đôi chim ưng:

- Thần ưng hãy trở lại mau! Thần ưng hãy trở lại mau!

Nhưng vô hiệu! Đôi chim ưng bay vút một mạch.

Bấy giờ, Lý-mạc-Thu là đà người xuống vừa cười vừa hỏi:

Này em bé! Có phải em thuộc dòng họ Quách chăng?

Quách-Phù thấy Lý-mạc-Thu tỏ vẻ hiền lành khả ái, bao nhiêu ác cảm trong người bỗng chốc tiêu tan, nó vội hỏi:

- Thưa cô nương! Em đúng là họ Quách. Còn cô nương là ai?

Lý-mạc-Thu không đáp, chỉ cười rồi nói:

- Em hãy đến đây! Ta dắt em đi chơi! Vui lắm.

Dứt lời, Lý-mạc-Thu lẹ làng bước đến cầm tay Quách-Phù dắt đi.

Kha-trấn-ác từ trong động vác thiết trượng chạy vội ra, chận Quách-Phù lại, và nói:

- Phù nhi! con hãy theo ta trở về.

Lý-mạc-Thu nhín Kha-trấn-ác cười lớn, nói:

- Công công sợ ta ăn thịt con bé nầy sao?

Vừa nói nàng vừa kéo Quách-Phù theo mình.

Quách-Phù ngoảnh lại nói với Kha-trấn-ác:

- Công công để cho cháu đi chơi với cô nương một chốc cháu trở về ngay.

Kha-trấn-ác không biết làm sao đành đứng nhìn con đạo cô quyến rũ Quách-Phù.

Bỗng nhiên đôi chim ưng bay trở về kêu lên những tiếng áo não.

Quách-Phù quay đầu nhìn lại. Kha-trấn-ác hy vọng những tiếng kêu của đôi chim ưng sẽ làm cho Quách-Phù đổi ý.

Nhưng không, Quách-Phù liền ra hiệu:

- Thần-Ưng! Hãy đến đây cùng ta! Hãy theo ta!

Đôi Thần-Ưng ngoan ngoãn bay theo. Nhưng lạ thay, giữa đôi chim ưng có một con chim nhỏ màu hồng nằm ngay đỉnh đầu Lý-mạc-Thu đâm bổ xuống.

Hoảng hốt, Lý-mạc-Thu đưa phất trần ra đỡ. Con chim nhỏ khôn ngoan và lanh lẹ vô cùng. Như một con thoi, nó tránh né chiếc phất trần của Lý-mạc-Thu rất ngoạn mục.

Lý-mạc-Thu phải một phen kinh hãi. Tuy nhiên, nàng vẫn giữ được bình tĩnh khen:

- ái chà! Con chim nhỏ này hay lắm.

Bỗng phía sau có tiếng động khác thường. Một cậu bé độ 14, 15 tuổi, mình mặc thanh y, vừa vỗ tay vừa ca hát điệu hành quân lời lẽ rất vô nghĩa. Một đoàn rắn độ ngàn con, một màu thanh trúc sắp thành hàng ngũ chỉnh tề, ngoan ngoãn vâng theo lời ca tiến đến trước mặt Lý-mạc-Thu như một dòng nước cuộn.

Đến đây thằng bé ngồi dưới một gốc cây, nhìn con chim màu hồng đang hăng say tấn công Lý-mạc-Thu. Còn Lý-mạc-Thu vừa đương đầu với con chim, vừa tính toán cách nào để sẽ phải đối phó với đoàn rắn.

Bỗng như nàng sực nhớ điều gì, liếc nhìn thằng bé lẩm bẩm:

- Thằng bé này diện mạo khôi ngô, mày ngài mắt lớn, môi đỏ, trân tròn, phải chăng nó là đệ tử của Âu-dương-Phong ở đất Tây-Vục hiệu là Tây-Độc.

Thật vậy, trong giới hảo hớn không ai là không biết! Âu dương Phong, một hiệp sĩ Giang Nam nổi tiếng một thời, nay về già ẩn trú tại Tây-Vục, lấy thuật nuôi rắn bày thế trận để tiêu khiển.

Lý-mạc-Thu kiểm điểm những biến cố trong ngày, cho rằng những việc xảy đến không phải do sự tình cờ. Nhất-Đảng Đại-sư, Đào-hoa-đảo, Bạch-đa-sơn nhất định không phải vô tình mà phái người đến gặp ta một lúc.

Nghĩ thế, Lý-mạc-Thu chưa vội kết thúc cuộc đấu chiến với con chim nhỏ màu hồng đó. Nàng kéo dài cuộc chống đỡ để có đủ thì giờ quan sát địch thủ.

- Nầy em bé! Có phải em ở Bạch-đà-sơn chăng?

Đứa bé thấy Lý-mạc-Thu tỏ cử chỉ dịu dàng liền đứng dậy đáp:

Thưa, em họ Dương. Nhưng tại làm sao cô nương bảo em ở Bạch-dầu-sơn?

Thừa cơ hội Lý-mạc-Thu đang nói chuyện, con chim nhỏ đâm bổ vào đầu Lý-mạc-Thu một đòn rất lợi hại. Nhưng cũng nhanh như chớp, Lý-mạc-Thu đưa bàn tay trái lên chụp gọn con chim nhỏ vào lòng bàn tay.

Thằng bé sợ Lý-mạc-Thu bóp chết con chim la lớn:

- Cô nương đừng vội giết chết con chim hồng

Lý-mạc-Thu cười:

- A ra con chim nầy của em. Vậy ta trả cho em đây

Nàng trao con chim hồng cho thằng bé.

Bàn tay xinh xắn của Lý-mạc-Thu vừa mở, con chim hồng ngỡ rằng nó đã được tự do, vội cất cánh bay bổng lên không trung.

Nhưng Lý-mạc-Thu tập trung nhân lực vào đôi mắt hướng về con chim hồng, và xoè bàn tay ra, vận động mấy ngón tay, tức thì con chim hồng nhỏ kia cảm thấy như có một sức mạnh đè nặng trên mình nó. Nó không thể tự do hành động theo ý muốn mà phải lệ thuộc theo sự điều khiển của Lý-mạc-Thu từ dưới đất.

Đó là phép chưởng lực mà chỉ kẻ nào có võ thuật tuyệt luận mới có thể vận dụng nổi. Chính vì cái tuyệt luận đó đã làm vang danh Xích-luyện thần chưởng trong khắp vũ lâm bão hoa.

Bấy giờ Vũ tam nương ở trong động nhìn ra lo ngại vì thấy chồng nàng nằm sóng sượt dưới đất.

Nàng nóng ruột muốn xông ra cứu trợ, nhưng đoàn rắn của thằng bé đã tràn đến nơi, con nào cũng ngẩng cổ như muốn chực cắn người. Nàng gọi lớn:

Vũ quân! Vũ quân! Có bề chi chăng?

Vũ tam Thông nghe tiếng vợ kêu muốn gượng dậy nhưng không thể nào dậy nổi. Quách-Phù không ngớt miệng kêu cặp chim ưng, nhưng chúng đã bay mất dạng tự lúc nào.

Lý-mạc-Thu nghĩ thầm:

- Thế này thì quả nhiên vợ chồng Quách-Tỉnh và Âu dương Phong đã có mặt đâu đây. Nhưng dẫu sao nhất định họ cũng không thể làm gì ta được.

Lý-mạc-Thu tin tưởng ở mãnh lực tuyệt đối của Xích luyện thần chưởng, nên nàng ngạo nghễ quay gót bước vào cửa động.

Thằng bé thấy thế gọi lại, bảo:

- Hãy đứng yên! Nếu cô nương tiến bước đàn rắn độc sẽ cắn ngay.

Lý-mạc-Thu thâu hồi con chim hồng vào tay trái, dùng tay mặt khoát mấy cái vào không trung tức thì đàn rắn tán loạn bỏ hàng ngũ bò lảng ra tứ phía.

Lý-mạc-Thu tiến vào động Vũ tam nương liền xách kiếm ra cản lại. Lý-mạc-Thu dùng phất trần quất mạnh vào thanh kiếm, lưỡi kiếm văng về phía Vũ-tam-Thông chém sâu vào trán.

Lý-mạc-Thu dõng dạc bước vào động và thả con chim hồng ra. Lần nầy nàng để cho nó được tự do, không dùng chưởng lực điều khiển nữa, vì nàng mắc bận tìm Trình-Anh và Lục-vô-Song.

Khi đã thấy mặt hai đứa bé này, Lý-mạc-Thu xốc tới, hai tay cặp nách mỗi đứa bé mỗi bên rồi uốn mình phi thân ra ngoài. Trình-Anh và Lục-vô-Song dãy dụa thế nào cũng không nổi.

Bấy giờ thằng bé trông thấy vội nhảy theo ôm chầm lấy thân hình Lý-mạc-Thu kéo lại.

Hai tay Lý-mạc-Thu bận kẹp hai đứa bé không còn cách nào đối phó với thằng bé nên để mặc cho nó ôm sát vào thân.

Ngày nay, Lý-mạc-Thu không còn ở tuổi hoa niên, mặc dù nhan sắc bên ngoài vẫn chưa kém sút tí nào, Lúc nàng còn là một thiếu nữ, cái thời nàng dan díu với Lục-triểu-Nguyên, tuy trong tình nồng thấm đượm, nàng vốn con nhà khuê các trâm anh lại thêm thừa hưởng gia phong hiệp sĩ, do đó giữa đôi trai gái chưa bao giờ xảy ra chuyện ong bướm mây mưa. Những lúc lửa tình bừng dậy, đôi bạn trẻ đều nhớ lời giáo huấn của gia phong nên vẫn kiên nhẫn chờ ngày xe tơ kết tóc.

Nhưng rồi mối hận tình đột xuất, Lý-mạc-Thu những tưởng bao nhiêu mỹ tính của mình đã bị tan theo mối tình hận ngàn đời. Mãi suốt bốn mươi năm phiêu lưu trên bước giang hồ, ngày đêm nàng chỉ để tâm hờn oán, không bao giờ con tim bị lay động.

Nàng có ngờ đâu, con tim cứng cỏi vì uất hận kia cũng có lúc nổi dậy trong khoảnh khắc vì cảm xúc nhất thời.

Thật vậy, sự cọ xát với thằng bé chưa đến tuổi dậy thì, mà cả thân mình nàng cảm thấy mềm nhũn. Thằng bé chỉ níu kéo, cốt để cứu thoát hai đứa bé, nó ngờ đâu sự đụng chạm ấy làm cho Lý-mạc-Thu ngây ngất, toàn thân như bị một sức mạnh vô hình làm tan biến.
Trước đây cũng đã có lần nhiều tay hiệp lữ giang hồ không cầm lòng được trước sắc đạp kiều diễm của Xích-Luyện Tiên-tử nên cũng có nhiều kẻ buông lời lả lơi trêu ghẹo, tỏ ý khêu gợi nhưng những lần ấy Lý-mạc-Thu không hề mảy may đồng tình mà trái lại nàng đã đem con tim sắt đá nhử mấy gã si tình kia vào con đường chết. Họ đều chết nhục nhã như mấy tên bảo tiêu.

Tuy nhiên, dẫu con tim Lý-mạc-Thu có thay đổi cũng chỉ phút chốc. Qua một phút yếu mềm vì cảm giác, nàng tự chủ được ngay lòng tự ái của một Xích-Luyện Tiên-tử lại nổi dậy xua đuổi cả lầm lỗi của xác thịt, Lý-mạc-Thu trở nên giận dữ thả Trình-Anh và Lục-vô-Song xuống để đối phó với thằng bé lạ lùng kia. Nàng định ôm thằng bé quật vào tảng đá cho nát thây, nhưng bỗng nghe tiếng kêu của nó:

- Cô nương! Xin cô nương nhẹ tay.

Tiếng nói của nó hình như có một cái gì nhẹ nhàng quyến rũ khiến Lý-mạc-Thu không đủ can đảm hành động theo ý định.

Giữa lúc Lý-mạc-Thu đang bị dằng co hai mặt tâm thần, một đằng là thù hận, một đằng là thiện cảm của ân tình thì bỗng đâu con chim hồng lợi dụng cơ hội ấy, nhanh như chớp, bay sà xuống mổ vào con mắt của Lý-mạc-Thu.

Than ôi! Thế là nhan sắc kiều diễm của Lý-mạc-Thu đã bắt đầu huỷ hoại! Chỉ vì một phút yếu mềm của tâm tình mà người mỹ nữ nổi tiếng ở đất Giang-nam đã trở thành một mắt.

Một dòng máu đỏ loét từ từ chảy xuống trên gò má nõn nà của Lý-mạc-Thu. Nàng đưa tay chùi vết máu với lòng căm hờn sâu thẳm. Nét mặt nàng trở nên đanh ác phi thường. Tất cả đối thủ trước mắt, từ Vũ-tam-nương trong động, Vũ-tam-Thông dưới đất, cho đến ba đứa bé thảy đều chờ đợi một cơn bão táp kinh khủng của Lý-mạc-Thu.

Trước tiên, Lý-mạc-Thu quắc nhìn con chim hồng đang bay lượn trên không. Nàng tập trung chưởng lục ngửa bàn tay dùng các ngón tay điều khiển. Con chim hồng đang tung tăng bỗng rơi xuống nằm gọn trong bàn tay Lý-mạc-Thu.

Rồi năm ngón tay nàng bóp lại, thân hình của chim hồng nát bấy như tương, xương thịt lông lá trộn lẫn.

Nàng chưa hả giận thì bỗng đâu cặp chim ưng lại cùng nhau bay đến, nhắm thẳng vào đầu Lý-mạc-Thu đâm bổ vào.

Bấy giờ, Lý-mạc-Thu đã trở nên nhanh nhẹn như trước, tránh né mấy lần rồi tung tay áo phóng vào hai con Thần ưng hai chiếc kim ngân châm. Nhưng lạ thay, kim vừa phóng ra thì bỗng có một vật cứng ném từ đâu không rõ đánh loạt hai mũi kim rơi xuống đất.

Lý-mạc-Thu ngạc nhiên nghĩ thầm:

"Quái lạ! Người ném dị vật vào kim châm tất có một sức mạnh phi thường và một tài năng tuyệt thế mới có thể hạ nổi bửu bối lợi hại nầy."

Đây là lần đầu tiên mà bí quyết gia truyền của môn phái Xích-luyện bị chạm phải một đối thủ cừ khôi.

Lý-mạc-Thu quyết định nên tạm rút lui khỏi vòng chiến, và trước khi rút lui ít ra nàng cũng phải thanh toán hai đứa bé Trình-Anh và Lục-vô-Song để kết thúc chương trình rửa hận đối với gia đình họ Lục.

Nàng nhảy chồm tới, nắm vào lưng Trình-Anh. Nhưng khi bàn tay nàng sắp bóp cổ con bé thì nàng chợt thấy vuông lụa có thêu hoa hồng, mảnh lụa chính tay nàng đã tặng cho Lục-triển Nguyên để kỷ niệm mối tình đầu.

Một lần nữa, con tim của Lý-mạc-Thu trở nên mềm yếu. Bao nhiêu tình cảm của thời hoa niên nổi dậy làm cho tâm hồn nàng ngây ngất, tay nàng không thể hạ thủ nổi Trình-Anh.

Nàng suy nghĩ:

Thì ra Lục-triển-Nguyên không bao giờ quên ta!

Không kết liễu được sinh mệnh Trình-Anh. Lý-mạc-Thu quay sang Lục-vô-Song và cũng nắm cổ Lục-vô-Song toan bóp chết. Nhưng nàng cũng lại chợt thấy vuông lụa có thêu hoa hồng đeo ở cổ con bé. Nàng dừng tay thốt lên một tiếng lạ lùng!

- ủa! Ta chỉ tặng Lục-triển-Nguyên có một vuông lụa, cớ sao nay lại có đến hai. Như vậy một thật một giả chăng?

Nghĩ thế, Lý-mạc-Thu còn trù trừ chưa quyết. Nàng buông tay xô Lục-vô-Song ngã về một bên.

Bỗng nghe sau lưng nàng có hơi gió động, nàng đoán biết có chuyện chẳng lành, vội quay chiếc phất trần ra đón đỡ.

Quả nhiên, có một viên đá từ đâu ném đến, chạm phải cây phất trần rơi xuống.

Lý-mạc-Thu cảm thấy nguy cơ dồn dập, nếu còn ở lại tất khó nổi thoát thân với người ném đá bí mật nầy. Nàng kẹp Lục-vô-Song vào nách, phi thân biến mất về phía chân trời.

Trình-Anh thấy Lục-vô-Song bị bắt đem đi, liền cắm cổ chạy theo và la lớn:

- Biểu muội! Biểu muội ôi!

Nhưng Trình-Anh làm sao theo kịp con ác tặc đã đụng lối kinh công thần tốc?

Mặc dầu thế, Trình-Anh vốn có tánh kiên nghị, không bao giờ chịu bỏ dở một ý định nên vẫn tiếp tục đuổi theo. Cô bé vừa kêu, vừa chạy mãi.

Cho đến mấy dặm đường, Trình-Anh gặp một con suối chảy ngang không thể nào qua được mới dừng chân lại, lòng ray rứt đau đớn vô cùng.

Nhưng chỉ chốc lát Trình-Anh lại thấy bóng dáng của đạo cô hiệp đến.

Thì ra đó là Lý-mạc-Thu, nhưng bên nách không còn thấy Lục-vô-Song đâu nữa.

Trình-Anh thấy Lý-mạc-Thu trở lại, khiếp sợ, nhưng tình thương em làm cô ta liều lĩnh, gào thét:

- Đạo cô! Hãy trả Lục-tiểu-muội cho tôi! Đạo cô giấu Lục tiểu muội nơi đâu?

Lý-mạc-Thu nhìn thẳng vào mặt Trình-Anh thấy phảng phất hình ảnh của tình địch mình thuở trước, bao nhiêu hờn oán dồn lên tận nét mặt, nàng hầm hầm rút phất trần tung mạnh vào Trình-Anh. Nhưng lạ thay, chiếc phất trần của nàng bị tung ngược trở lại như vướng phải một cản trở bất ngờ.

Và, đạo cô cảm thấy cả thân mình cũng bị tung lên cao đến mấy trượng rồi rơi xuống.

Biết gặp phải địch thủ nguy hiểm. Lý-mạc-Thu múa tít chiếc phất trần quanh người để đề phòng sự công kích bất thình lình.

Bỗng Lý-mạc-Thu thấy bên cạnh Trình-Anh xuất hiện một quái nhân, mặc chiếc thanh bào, sắc diện lạ lùng không giống người chết mà cũng không giống người sống. Lý-mạc-Thu đoán biết tài nghệ của người nầy tất phải cao hơn mình. Nhưng tại sao trong giới võ lâm một tài nghệ như thế mà nàng chưa bao giờ nghe ai nói đến.

Nàng vừa định lên tiếng hỏi, thì quái nhân đã nói với Trình-Anh:

- Cháu ơi! con nữ tặc đó là loài hung ác. Cháu để ta trừ nó đi nhé!

Trình-Anh cản lại, nói:

- Không, không! Cháu sợ lắm! Cháu sợ lắm!

Quái nhân nói:

- Cháu đừng sợ! cháu chỉ cần ừ một tiếng là ta ra tay ngay. Hay là ta để cho cháu đánh nó cũng được.

Trình-Anh một mực sợ sệt, nói:

- Không không! Cháu không dám.

Vị quái nhân rút trong túi áo một hòn sạn nhỏ ném nhẹ vào phía Lý-mạc-Thu. Hòn sạn trúng đâu không rõ nhưng Lý-mạc-Thu dừng ngay chiếc phất trần không múa máy được nữa. Nàng đứng trân trân như một pho tượng.

Quái nhân dắt tay Trình-Anh từ từ tiến sát, khoá tay Lý-mạc-Thu lại, và lấy tay Trình-Anh đánh mạnh vào đầu vào lưng của con nữ tặc.

Ban đầu Trình-Anh còn rụt rè, e sợ, nhưng thấy đánh mãi mà Lý-mạc-Thu vẫn không hành động gì được nên cô ta mới an lòng. Trình-Anh nghĩ đến những hình ảnh của những người thân yêu ở Lục gia trang đã chết vì tay con nữ tặc nên không còn cầm được lòng căm tức. Cô ta thoi mạnh vào đầu Lý-mạc-Thu mấy cái cho hả dạ.

Lý-mạc-Thu vẫn cầm chiếc phất trần trong tay mà đứng yên để mặc cho Trình-Anh đánh.

Nỗi nhục nhã tràn trề. Qua một lúc, Lý-mạc-Thu hét lên một tiếng, tung bửu bối ném về phía quái nhân. Mười chiếc kim châm bất thần phóng ra một lượt, nhưng đều bị quái nhân tung sạn ném rơi xuống đất. Duy chỉ còn hai chiếc kim châm đâm trúng vào bụng Trình-Anh.

Thì ra đó là độc kế của Lý-mạc-Thu. Tám chiếc kim nàng phóng về quái nhân chỉ cốt "dương đông kích tây" giữ tay quái nhân để cho hai chiếc kim độc kia kết liễu sinh mệnh của Trình-Anh.

Thi hành xong độc thủ, Lý-mạc-Thu phi thân biến mất, lòng vẫn thắc mắc không rõ quái nhân đó là ai mà dám trêu Xích-luyện Tiên tử nhục nhã đến thế.

Quái nhân áo xanh thấy Trình-Anh biến sắc, biết cô ta trúng phải kim độc liền cấp tốc kẹp Trình-Anh vào nách rồi phi thân biến về hướng Tây.
')
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (5, N'Đứa Bé Lạc Loài', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (6, N'Mỗi Thâm Thù Trong Cổ Miếu', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (7, N'Bốn Trẻ Đồng Môn', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (8, N'Chung Nam Sơn , Toàn Chân Phái', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (9, N'Quách Tĩnh Với Trận Bắc Đẩu Thiên Cang', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (10, N'Chung Nam Sơn Khói Lửa', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (11, N'Đôi Tình Nhân Của Chung Nam Sơn', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (12, N'Người Đàn Bà Trong Cổ Mộ Đài', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (13, N'Mộ Đài Hoạt Tử Nhân', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (14, N'Năm Cỗ Quan Tài', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (15, N'Thiên La Địa Võng : Thế Nhập Môn', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (16, N'Ngọc Nữ Tâm Kinh', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (17, N'Khi Đoạn Long Thạch Đã Rơi', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (18, N' Bí Mật Của Thạch Thất', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (19, N'Trùng Dương Di Thiên : Cửu Âm Chân Kinh', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (20, N'Một Sự Hiểu Lầm Ngàn Trùng Cách Biệt', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (21, N'Cưỡi Trâu Tiếp Viện', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (22, N'Cô Gàn Gặp Tay Thằng Ngốc', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (23, N'Thoát Nạn Ăn Mày Gặp Lại Lý Mạc Thu', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (24, N'Cải Trang Đạo Sĩ Gạt Lý Mạc Thu', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (25, N'Dương Quá Làm Hoa Bang Thất Cái', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (26, N'Mối Thù Oan Gia Giữa Hai Họ', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (27, N'Cảm Nghĩa Kết Thâm Tình', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (28, N'Nữ Lang Áo Đỏ Với Cặp Thần Điêu', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (29, N'Cuộc Ác Chiến Cuối Cùng', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (30, N'Dự Anh Hùng Yến', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (31, N'Đại Hội Cái Bang', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (32, N'Đôi Lứa Gặp Nhau Trong Bẽ Bàng', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (33, N'Bọn Mông Cổ Xuất Hiện Phá Anh Hùng Yến', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (34, N'Giữa Thao Trường Tiểu Long Nữ Gặp Dương Quá', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (35, N'Dương Quá Trổ Tài', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (36, N'Quyết Chiến Thây Trò Kim Luân Pháp Vương', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (37, N'Đại Chiến Kim Luân Pháp Vương', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (38, N'Trên Đường Về Gặp Lại Kim Luân Pháp Vương', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (39, N' Bày Thạch Trận Vây Khốn Kim Luân', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (40, N'Nữ Lang Thanh Y Cứu Dương Quá', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (41, N'Lại Gặp Nhau', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (42, N'Cô Ngốc Say Giữa Người Hay Trên Đảo Đào Hoa', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (43, N'Nạng Sắt Mà Trừ Được Thần Chưởng - Dương Quá Lại Tặng Áo Cho Kẻ Thù', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (44, N'Thủy Tiên U Cốc', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (45, N'Thiếu Nữ Áo Xanh', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (46, N'Kinh Thiên Động Địa', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (47, N'Động Phòng Hoa Chúc', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (48, N'Phong Ba Chưa Ráo Nợ Hồng', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (49, N'Anh Hùng Và Giai Nhân', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (50, N'Cứu Nhau Rời Đầm Cá Sấu', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (51, N'Thoát Hầm Cá Sấu Lục Ngạc Gặp Thân Mẫu', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (52, N'Câu Truyện Rùng Rợn Của 20 Năm Cũ', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (53, N'Quyết Lấy Đầu Quách Tỉnh', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (54, N'Đơn Đao Thoát Khỏi Hang Hùm', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (55, N'Vì Nứớc Quên Tình Nhà', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (56, N'Chiếm Đoạt Hài Nhi', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (57, N'Vào Hang Núi Dùng Quỷ Kế Gạt Kim Luân', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (58, N'Thanh Tử Vi Bảo Kiếm', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (59, N'Huynh Đệ Tương Tàn', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (60, N' Quách Phù Hài Tội Dương Qua', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (61, N' Biết Được Thủ Phạm Trộm Hoa Trên Núi Chung Nam', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (62, N'Châu Bá Thông Xuất Hiện', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (63, N'Nhện Độc Và Nọc Ong Trắng', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (64, N'Theo Dõi Mà Như Không Hành Động', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (65, N'Những Nét Suy Sụp Của Toàn Chân Giáo', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (66, N'Độc Thân Làm Náo Cả Trùng Dương Cung', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (67, N'Kiếm Ma Độc Cô', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (68, N'Ma Kiếm Trong Vách Núi', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (69, N'Tái Ngộ Trong Kỳ Lạ', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (70, N'Còn Một Tay Trái Đại Chiến Quần Hùng', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (71, N'Thừa Kế Huyết Bảo Kiếm', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (72, N'Lễ Thành Thân Ly Kỳ', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (73, N'Tình Chàng Nghĩa Hiệp Thành Duyên', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (74, N'Tình Duyên Mới Của Tuổi Trẻ', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (75, N'Năm Cỗ Quan Tài', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (76, N'Năm Chiếc Quan Tài Đá Trong Cổ Mộ Đài', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (77, N'Trong Túp Nhà Hoang Duơng Qua Gặp Lại Vị Hòa Thượng', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (78, N'Rừng Hoang Tuyết Lạnh, Ngạo Chiến Xảy Ra', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (79, N'Quần Thoa Họp Mặt Thư Hùng', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (80, N'Liều Thân Khử Độc', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (81, N'Từ Ân Hòa Thượng', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (82, N'Thuốc Giả, Thuốc Chân', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (83, N'Bảy Nàng Cướp Thuốc', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (84, N'Mười Sáu Năm Sau', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (85, N'Đầu Bến Phong Lăng', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (86, N'Thần Điêu Đại Hiệp', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (87, N' Vạn Thú Sơn Trang', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (88, N'Chấn Đảo Quân Thù', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (89, N'Trên Bờ Đầm Hắc Long', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (90, N'Phản Lão Hoàn Đồng', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (91, N'Ân Ân Oán Oán', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (92, N'Trong Thành Tương Dương', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (93, N'Anh Hùng Đại Yến', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (94, N'Đại Hội Cái Bang', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (95, N'Quần Hào Hiến Thọ', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (96, N'Ba Món Lễ Vật', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (97, N'Ân Oán Ba Đời', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (98, N'Quái Khách Què Chân', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (99, N'Trong Vạn Hoa Cốc', NULL)
GO
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (100, N'Các Tay Cao Thủ Hợp Như Mây', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (101, N'Binh Lửa Dậy Tương Dương', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (102, N'Cách Biệt Trùng Phùng', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (103, N'Nhị Thập Bát Tú Trận', NULL)
INSERT [dbo].[than_dieu_dai_hiep] ([id], [ten_chuong], [noi_dung]) VALUES (104, N'Tiếng Nói Sau Cùng', NULL)
SET IDENTITY_INSERT [dbo].[than_dieu_dai_hiep] OFF
USE [master]
GO
ALTER DATABASE [kim_dung] SET  READ_WRITE 
GO
