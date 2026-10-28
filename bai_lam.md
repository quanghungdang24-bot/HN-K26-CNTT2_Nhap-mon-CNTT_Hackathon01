# BÀI LÀM – HACKATHON 01

- **Mã đề:** 16
- **Họ tên:** Đặng Quang Hưng
- **Lớp:** CNTT_2
- **Link repository:** 
- **Hệ điều hành (Windows/macOS):** macOS 

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
pwd
ls -aR
mv quy_dinh_bao_hanh.txt docs
mv logo_sua_may_tinh.png media
rm temp_241.tmp
ls logs
ls -aR

```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
.		.DS_Store	backup		data		logs
..		.env		bai_lam.md	docs		media

./backup:
.	..

./data:
.			..			phieu_sua_thang_6.xlsx

./docs:
.			..			quy_dinh_bao_hanh.txt

./logs:
.		..		repair.log

./media:
.			..			logo_sua_may_tinh.png

```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
cat logs/repair.log | grep "ERROR" >> logs/daily_report.txt

```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2026-06-28 08:57:31 [ERROR] Thanh toan bi tu choi
2026-06-28 09:01:31 [ERROR] Thanh toan bi tu choi

```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [X] Heading 1: tên dự án
- [X] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [X] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [X] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [X] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [X] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
bash script/auto_report.sh
cat logs/auto_report.txt

```

### Kết quả hiển thị

```text
===BAO CAO LOI===
2026-06-28 08:57:31 [ERROR] Thanh toan bi tu choi
2026-06-28 09:01:31 [ERROR] Thanh toan bi tu choi
2026-06-28 09:05:31 [ERROR] Thanh toan bi tu choi
2026-06-28 09:17:31 [ERROR] Khong tim thay trang /tra-cuu (404)
2026-06-28 09:33:31 [ERROR] Khong tim thay trang /tra-cuu (404)
2026-06-28 09:37:31 [ERROR] Khong tim thay trang /tra-cuu (404)

```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
cat logs/repair.log | grep "ERROR" | wc -l >> logs/tong_hop.txt

```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
6

```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
echo "===TONG HOP LOG===" > logs/tong_hop.txt
cat logs/repair.log | grep "WARNING" >> logs/tong_hop.txt
cat logs/repair.log | grep "ERROR" | wc -l >> logs/tong_hop.txt

```

### Nội dung file logs/tong_hop.txt

```text
===TONG HOP LOG===
2026-06-28 08:33:31 [WARNING] Anh chup may dung luong lon
2026-06-28 08:37:31 [WARNING] Thoi gian phan hoi cham
2026-06-28 08:45:31 [WARNING] Linh kien RAM sap het
2026-06-28 09:09:31 [WARNING] Anh chup may dung luong lon
       6

```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/phieu_sua_thang_6.xlsx`, không cần ghi vào đây.
