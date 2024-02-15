# Bien dich chuong trinh C
- Mo CMD hoac terminal tai duong dan chua file C.
- Thuc thi dong lenh: gcc file.c: tao mot file thuc thi voi ten ngau nhien. De tao ten file thi dung lenh: gcc -0 newfile file.c
- Chay file thuc thi C
- Kiem tra gia tri tra ve cuoi cung cua chuong trinh: echo $?
  
# Cac pha trong qua trinh bien dich
- Thuc thi cau lenh sau se nhan duoc tat ca cac file trung gian:  $gcc -Wall -save-temps filename.c –o filename 
  
## Pre-processing
- Day la giai doan dau tien ma ma nguon duoc chuyen qua. Giai doan nay gom
* Loai bo comment
* Mo rong macro
* Mo rong file include
* Bien dich co dieu kien
- Dau ra xu ly duoc luu tru trong filename.i
  
## Compiling
- Buoc tiep theo la bien dich filename.i va tao ra mot file dau ra duoc bien dich trung gian filename.s. Tep nay gom cac chi thi assembly
  
## Assembling
- Trong giai doan nay, filename.s duoc lay lam dau vao va duoc bien dich ma chuyen thanh filename.o. Tep nay chua cac chi thi ma may. O giai doan nay, chi cac ma hien co moi duoc chuyen sang ma may va cac lenh goi ham nhu printf() khong duoc xu ly
  
## Linking
- Day la giai doan cuoi cung trong do tat ca lien ket cac loi goi ham voi dinh nghia cua chung duoc thuc hien. Trinh lien ket biet tat ca cac ham nay duoc trien khai o dau. Trinh lien ket cung thuc hien mot so cong viec bo sung, no them mot so ma bo sung vao chuong trinh khi chuong trinh bat dau va ket thuc