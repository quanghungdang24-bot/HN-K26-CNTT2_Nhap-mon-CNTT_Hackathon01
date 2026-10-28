# Script: auto_report.sh
# Tac gia: Đặng Quang Hưng
# Ngay tao: 28/10/2026

echo " Đang loc log..."

echo "===BAO CAO LOI===" >> ./logs/auto_report.txt
cat ./logs/repair.log | grep "ERROR" >> ./logs/auto_report.txt

echo "Hoan thanh!"