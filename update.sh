#!/bin/bash
echo "[*] Xoá file index cũ..."
rm -f Packages Packages.bz2

echo "[*] Đang quét thư mục debs..."
dpkg-scanpackages -m ./debs > Packages

echo "[*] Nén file index..."
bzip2 -c9 Packages > Packages.bz2

echo "[*] Xong! Giờ hãy push lên GitHub!"
