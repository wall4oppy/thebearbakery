@echo off
echo 正在移動文件到新的目錄結構...

:: 移動字體文件
copy "Zpix.ttf" "assets\fonts\Zpix.ttf" >nul 2>&1

:: 移動圖片文件
copy "登入背景.png" "assets\images\登入背景.png" >nul 2>&1
copy "中間框1.png" "assets\images\中間框1.png" >nul 2>&1
copy "會動的熊精靈.gif" "assets\images\會動的熊精靈.gif" >nul 2>&1
copy "麵包幣.png" "assets\images\麵包幣.png" >nul 2>&1
copy "麵包幣計數器.png" "assets\images\麵包幣計數器.png" >nul 2>&1
copy "聲望計數器.png" "assets\images\聲望計數器.png" >nul 2>&1
copy "顧客滿意度計數器.png" "assets\images\顧客滿意度計數器.png" >nul 2>&1
copy "3個計數器.png" "assets\images\3個計數器.png" >nul 2>&1
copy "木板.png" "assets\images\木板.png" >nul 2>&1
copy "螢幕擷取畫面 2025-09-27 163931.png" "assets\images\螢幕擷取畫面 2025-09-27 163931.png" >nul 2>&1

:: 移動影片文件
copy "動動熊精靈.mp4" "assets\videos\動動熊精靈.mp4" >nul 2>&1

:: 移動文檔文件
copy "影片設置說明.md" "docs\影片設置說明.md" >nul 2>&1

echo 文件移動完成！
echo 請檢查 assets 目錄是否包含所有資源文件。
pause
