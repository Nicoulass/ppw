param (
    [string]$Message = "Update materi notebook"
)

Write-Host "=========================================" -ForegroundColor Cyan
Write-Host "    Memulai Proses Deploy Otomatis       " -ForegroundColor Cyan
Write-Host "=========================================" -ForegroundColor Cyan
Write-Host ""

# 1. Tambahkan semua perubahan
Write-Host "1. Menambahkan file yang berubah ke Git..." -ForegroundColor Yellow
git add .
Write-Host ""

# 2. Buat commit
Write-Host "2. Menyimpan perubahan (Commit) dengan pesan: '$Message'..." -ForegroundColor Yellow
git commit -m $Message
Write-Host ""

# 3. Push ke GitHub
Write-Host "3. Mengirim (Push) ke GitHub..." -ForegroundColor Yellow
git push origin main
Write-Host ""

Write-Host "=========================================" -ForegroundColor Green
Write-Host "✅ SELESAI! Perubahan berhasil dikirim." -ForegroundColor Green
Write-Host "GitHub Actions akan segera men-deploy website-nya ke GitHub Pages." -ForegroundColor Green
Write-Host "Tunggu 1-2 menit untuk melihat hasil perubahannya." -ForegroundColor Green
Write-Host "=========================================" -ForegroundColor Green
