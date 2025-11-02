@echo off
echo 正在整理小熊哥麵包坊文件結構...

:: 創建目錄結構
if not exist "assets" mkdir assets
if not exist "assets\images" mkdir assets\images
if not exist "assets\fonts" mkdir assets\fonts
if not exist "assets\videos" mkdir assets\videos
if not exist "css" mkdir css
if not exist "js" mkdir js
if not exist "docs" mkdir docs

:: 移動CSS文件
move "style.css" "css\"
move "login.css" "css\"

:: 移動JS文件
move "login.js" "js\"
move "game.js" "js\"

:: 移動字體文件
move "Zpix.ttf" "assets\fonts\"

:: 移動圖片文件
move "登入背景.png" "assets\images\"
move "中間框1.png" "assets\images\"
move "會動的熊精靈.gif" "assets\images\"
move "麵包幣.png" "assets\images\"
move "麵包幣計數器.png" "assets\images\"
move "聲望計數器.png" "assets\images\"
move "顧客滿意度計數器.png" "assets\images\"
move "3個計數器.png" "assets\images\"
move "木板.png" "assets\images\"
move "螢幕擷取畫面 2025-09-27 163931.png" "assets\images\"

:: 移動影片文件
move "動動熊精靈.mp4" "assets\videos\"

:: 移動文檔文件
move "影片設置說明.md" "docs\"

echo 文件結構整理完成！
echo.
echo 新的文件結構：
echo ├── index.html (載入頁面)
echo ├── login.html (登入頁面)
echo ├── game.html (遊戲頁面)
echo ├── css/
echo │   ├── style.css
echo │   └── login.css
echo ├── js/
echo │   ├── login.js
echo │   └── game.js
echo ├── assets/
echo │   ├── fonts/
echo │   │   └── Zpix.ttf
echo │   ├── images/
echo │   │   ├── 登入背景.png
echo │   │   ├── 中間框1.png
echo │   │   ├── 會動的熊精靈.gif
echo │   │   └── (其他圖片文件)
echo │   └── videos/
echo │       └── 動動熊精靈.mp4
echo └── docs/
echo     └── 影片設置說明.md
echo.
echo 請注意：移動文件後需要更新HTML文件中的路徑引用！
pause
