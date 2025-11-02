# 重置並重新上傳專案到 GitHub

$projPath = "C:\Users\user\Desktop\小熊哥捲土重來 - 部署到github"

# 進入專案目錄
Set-Location $projPath

Write-Host "當前目錄: $(Get-Location)"
Write-Host "index.html 存在: $(Test-Path 'index.html')"
Write-Host "game.html 存在: $(Test-Path 'game.html')"

# 刪除 .git 目錄
if (Test-Path ".git") {
    Remove-Item -Recurse -Force ".git"
    Write-Host "已刪除 .git 目錄"
}

# 重新初始化
Write-Host "重新初始化 Git..."
git init

# 配置用戶
git config user.email "wall4oppy@users.noreply.github.com"
git config user.name "wall4oppy"

# 添加遠端
Write-Host "添加遠端倉庫..."
git remote add origin https://github.com/wall4oppy/bear-bakery-game.git

# 添加所有文件
Write-Host "添加專案文件..."
git add .

# 提交
Write-Host "提交更改..."
git commit -m "清理重新上傳: 移除桌面文件，只保留專案文件"

# 強制推送
Write-Host "強制推送到遠端..."
git push -f origin master

Write-Host "完成！"

