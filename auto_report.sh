#!/bin/bash
# Script: auto_report.sh
# Tac gia: Mai Quốc Đạt
# Ngay tao: 23/10/2026

echo "Dang loc log..."
echo "=== BAO CAO LOI ===" > logs/auto_report.txt
cat logs/shop.log | grep "ERROR" >> logs/auto_report.txt
echo "Hoan thanh!"
