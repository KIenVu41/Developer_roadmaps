Mot token trong C co the duoc dinh nghia la phan tu rieng le nho nhat cua ngon ngu C co y nghia voi trinh bien dich. No la thanh phan co ban cua mot chuong trinh C

# Cac loai token
1. Keywords
2. Identifiers
3. Constants
4. String
5. Special Symbols
6. Operators
   
## Keywords
Cac tu khoa la nhung tu duoc xac dinh truoc hoac danh rieng cho ngon ngu lap trinh. Moi tu khoa co nghia la de thuc hien mot chuc nang cu the trong mot chuong trinh. Vi tu khoa la ten tham chieu cho trinh bien dich nen chung khong the duoc su dung lam ten bien vi lam nhu vay la dang gan mot y nghia moi cho tu khoa. Tuy nhien ta co the chi dinh tu thay the cho tu khoa truoc khi bien dich bang cach su dung cac chi thi tien xu ly C. Ngon ngu C ho tro 32 tu khoa
```
auto         double      int        struct
break        else        long       switch
case         enum        register   typedef
char         extern      return     union
const        float       short      unsigned
continue     for         signed     void
default      goto        sizeof     volatile
do           if          static     while
```

## Identifiers
Dinh danh duoc su dung lam thuat ngu chung de dat ten bien, ham va mang. Day la nhung ten do nguoi dung xac dinh bao gom mot chuoi cac chu cai va chu so dai tuy y voi mot chu cai hoac dau gach duoi (_) lam ky tu dau tien. Ten dinh danh phai khac nhau ve cach viet va chu hoa, chu thuong so voi bat ky tu khoa nao

### Quy tac dat ten
Can tuan theo mot so quy tac nhat dinh khi den ten nhu sau:
* Bat dau bang mot chu cai hoac dau gach duoi (_)
* Chi duoc bao gom chu cai, so, hoac dau gach duoi. Khong co ky tu dac biet
* Khong duoc dat ten theo tu khoa
* Khong chua khoang trang
* Dai toi da 31 ky tu

## Constants
Cac hang so de cap den bien co gia tri co dinh. Gia tri cua chung khong the sua doi mot khi chung duoc xac dinh.

Cac hang so co the thuoc bat ky kieu du lieu nao

Vi du:
```
const int c_var = 20;
const int* const ptr = &c_var;
```

## Strings
Chuoi la mot mang cac ky tu ket thuc bang ky tu null ('\0'). Ky tu null nay cho biet su ket thuc cua chuoi. Chuoi luon duoc dat trong dau ngoac kep. Trong do, mot ky tu duoc dat trong dau ngoac don

Vi du:
```
char string[20] = {‘g’, ’e’, ‘e’, ‘k’, ‘s’, ‘f’, ‘o’, ‘r’, ‘g’, ’e’, ‘e’, ‘k’, ‘s’, ‘\0’};
char string[20] = “geeksforgeeks”;
char string [] = “geeksforgeeks”;
```

## Special Symbols
Cac ky tu dac biet sau day duoc su dung trong C co y nghia dac biet va khong the su dung voi muc dich khac
* []: dau ngoac mo va dong su dung lam tham chieu phan tu mang. Chung chi ra cac chi so don va da chieu
* (): bieu thi cac lenh goi ham va tham so ham
* {}: danh dau su bat dau va ket thuc cua mot khoi ma chua lenh thuc thi
* ,: phan tach nhieu cau lenh giong nhu phan tach cac tham so trong lenh goi ham
* ::
* ;: ket thuc cau lenh
* *: tao bien con tro va toan tu nhan
* =: gan gia tri
* #: bo chi thi tien xu ly duoc la bo xu ly macro duoc trinh bien dich su dung tu dong de chuyen doi chuong trinh truoc khi bien dich thuc te
* .: truy cap phan tu cua struct hoac union
* ~: lam ham huy de giam phong dung luong khoi bo nho
