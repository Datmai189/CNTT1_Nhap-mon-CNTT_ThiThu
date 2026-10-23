# BÀI LÀM – THI THỬ HACKATHON 01

- **Mã đề:** Thi thử
- **Họ tên:** Mai Quốc Đạt
- **Lớp:** CNTT1
- **Link repository:** https://github.com/Datmai189/CNTT1_Nhap-mon-CNTT_ThiThu
- **Hệ điều hành (Windows/macOS):** macOS

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
pwd
ls -a
mv nhap_hang.txt docs/
mv logo_van_phong_pham.png media/
cp media/logo_van_phong_pham.png backup/
rm temp_131.tmp
cd logs
ls -a
cd ..
ls -aR
```

### Kết quả liệt kê toàn bộ dự án

```text
.
..
.DS_Store
.env
README.md
auto_report.sh
backup
bai_lam.md
data
docs
logs
media

./backup:
.
..
logo_van_phong_pham.png

./data:
.
..
don_ban_thang_10.xlsx

./docs:
.
..
nhap_hang.txt

./logs:
.
..
auto_report.txt
daily_report.txt
shop.log
tong_hop.txt

./media:
.
..
logo_van_phong_pham.png
```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
cat logs/shop.log | grep "ERROR" > logs/daily_report.txt
cat logs/daily_report.txt
```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2025-10-28 08:24:28 [ERROR] Thanh toan bi tu choi
2025-10-28 08:30:28 [ERROR] Thanh toan bi tu choi
```

## 4.4. Thao tác với tài liệu Markdown (README.md)

README.md được chấm trực tiếp tại thư mục gốc. Các mục đã hoàn thành:

- [x] Heading 1: tên dự án
- [x] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [x] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [x] Code block chứa lệnh Terminal liệt kê nội dung dự án
- [x] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [x] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report.sh

### Lệnh chạy

```shell
bash auto_report.sh
cat logs/auto_report.txt
```

### Nội dung file logs/auto_report.txt

```text
=== BAO CAO LOI ===
2025-10-28 08:24:28 [ERROR] Thanh toan bi tu choi
2025-10-28 08:30:28 [ERROR] Thanh toan bi tu choi
2025-10-28 08:33:28 [ERROR] Ket noi kho du lieu that bai
2025-10-28 08:39:28 [ERROR] Ket noi kho du lieu that bai
2025-10-28 08:42:28 [ERROR] Ket noi kho du lieu that bai
2025-10-28 09:12:28 [ERROR] Thanh toan bi tu choi
```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
cat logs/shop.log | grep "ERROR" | wc -l
```

### Kết quả đếm

```text
6
```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
echo "=== TONG HOP LOG ===" > logs/tong_hop.txt
cat logs/shop.log | grep "WARNING" >> logs/tong_hop.txt
cat logs/shop.log | grep "ERROR" | wc -l >> logs/tong_hop.txt
cat logs/tong_hop.txt
```

### Nội dung file logs/tong_hop.txt

```text
=== TONG HOP LOG ===
2025-10-28 08:51:28 [WARNING] Thoi gian tai trang cham
2025-10-28 08:54:28 [WARNING] Anh san pham dung luong lon
2025-10-28 08:57:28 [WARNING] Thoi gian tai trang cham
       6
```

## 4.8. Excel

Phần Excel được lưu trực tiếp trong `data/don_ban_thang_10.xlsx`.
