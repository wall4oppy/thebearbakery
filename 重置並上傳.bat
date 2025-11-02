@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo 當前目錄: %CD%
if not exist "index.html" (
    echo 錯誤: 找不到 index.html，請確保在專案目錄中執行
    pause
    exit /b 1
)
echo 找到專案目錄，開始清理...
if exist ".git" (
    echo 刪除現有的 .git 目錄...
    rmdir /s /q ".git"
    echo 已刪除
)
echo 初始化 Git...
git init
echo Git 已初始化
echo 設置遠端倉庫...
git remote add origin https://github.com/wall4oppy/bear-bakery-game.git 2>nul
git remote set-url origin https://github.com/wall4oppy/bear-bakery-game.git
echo 遠端已設置
echo 添加專案文件...
git add .
echo 已添加文件
echo 提交更改...
git commit -m "清理重新上傳: 只保留專案文件"
echo 已提交
echo 強制推送到遠端（將覆蓋遠端所有內容）...
git push -f origin master
echo.
echo 完成！
pause

