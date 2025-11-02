@echo off
chcp 65001 >nul
cd /d "C:\Users\user\Desktop\小熊哥捲土重來 - 部署到github"
echo 當前目錄: %CD%
if not exist "index.html" (
    echo 錯誤: 找不到 index.html
    exit /b 1
)
echo 找到專案目錄，開始清理...
if exist ".git" (
    rmdir /s /q ".git"
    echo 已刪除 .git 目錄
)
git init
echo Git 已初始化
git remote add origin https://github.com/wall4oppy/bear-bakery-game.git 2>nul
git remote set-url origin https://github.com/wall4oppy/bear-bakery-game.git
echo 遠端已設置
git add .
echo 已添加文件
git commit -m "清理重新上傳: 只保留專案文件"
echo 已提交
git push -f origin master
echo 完成！

