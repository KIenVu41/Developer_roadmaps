

/**
*   C là ngôn ngữ lập trình hướng thủ tục tạo bởi Dennis Ritchie năm 1972 ở phòng thí nghiệm AT&T.
Nó được thiết kế như một ngôn ngữ lập trình hệ thống để viết HĐH UNIX
- Ưu điểm chính của C:
+ Truy cập bộ nhớ cấp thấp
+ Tốc độ nhanh
+ Cú pháp rõ ràng
-> Những ưu điểm này khiến C phù hợp cho lập trình hệ thống như một HĐH hay môi trường biên dịch
*/

#include <stdio.h>       // Header
int main()               // Main
{                        //
  printf("Hello World"); // Statement   // Body
  return 0;              // Return      //
} //
  /**
   *  Cấu trúc của chương trình C:
   * 1. Header File
   * - Thành phần đầu tiên và quan trọng nhất là đưa các tệp tiêu đề vào chương trình C. Tệp tiêu đề là một tệp có phần mở rộng
   * .h chứa các khai báo hàm C và định nghĩa macro được chia sẻ giữa một số tệp nguồn. Tất cả các dòng bắt đầu bằng # đều được xử lý bởi bộ tiền xử lý, đây là một
   * chương trình được trình biên dịch gọi ra.
   * 2. Hàm main
   * - Phần tiếp theo của chương trình C là khai báo hàm main(). Đây là điểm vào của chương trình C và việc thực thi thường bắt đầu bằng dòng đầu tiên của hàm main().
   * Dấu ngoặc () biểu thị rằng hàm main không nhận bất kỳ tham số nào. Int được viết trước main để cho biết kiểu trả về của main().
   * Giá trị được trả về bởi main cho biết trạng thái kết thúc chương trình.
   * 3. Thân hàm main
   * - Phần thân của một hàm trong chương trình C đề cập đến các câu lệnh là một phần của hàm đó. Một cặp dấu ngoặc nhọn xác định phần thân của hàm. Tất cả các hàm phải bắt đầu và kết thúc
   * bằng dấu ngoặc nhọn
   * 4. Câu lệnh
   * - Các câu lệnh là các hướng dẫn được đưa ra cho trình biên dịch. Trong C, một câu lệnh luôn kết thúc bằng dấu (;).
   * 5. Lệnh return
   * - Phần cuối cùng của hàm C là câu lệnh return. Câu lệnh return đề cập đến các giá trị trả về từ một hàm. Câu lệnh return và giá trị trả về phụ thuộc và kiểu trả về
   * của hàm. Giá trị trả về có thể được HĐH sử dụng để biết trạng thái kết thúc của chương trình. Giá trị 0 thường có nghĩa là kết thúc thành công.
   */