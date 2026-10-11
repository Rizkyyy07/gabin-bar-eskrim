# Gabin Bar Eskrim

Sistem pemesanan dan manajemen penjualan dengan database SQLite lokal. Tidak terhubung ke layanan hosting mana pun.

## Menjalankan lokal

Prasyarat: Node.js **22.5+**.

```bash
cd gabin-bar
npm start
```

Buka `http://localhost:3000`. Database dibuat otomatis pada `data/gabin-bar.db` dan berisi produk contoh.

## Siap deploy mandiri

1. Unggah seluruh folder proyek (termasuk `server.js`, `index.html`, dan `package.json`) ke server Node.js Anda.
2. Pastikan Node.js 22.5+ tersedia.
3. Jalankan `npm start`, atau gunakan process manager seperti PM2: `pm2 start server.js --name gabin-bar`.
4. Arahkan reverse proxy/domain ke port `3000` (atau set environment `PORT`).
5. Pastikan folder `data/` dapat ditulis oleh proses Node dan **ikut dibackup**; di situlah data operasional tersimpan.

> Untuk server production dengan banyak pengguna/traffic, pindahkan database ke PostgreSQL atau MySQL sebelum digunakan luas. SQLite ini sesuai untuk penggunaan usaha kecil pada satu instance server.
