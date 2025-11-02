# Git 倉庫重置步驟

由於 PowerShell 編碼問題，請手動執行以下步驟來重置並重新上傳倉庫：

## 步驟

1. **打開命令提示字元（CMD）**（不是 PowerShell）

2. **切換到專案目錄**：
   ```
   cd /d "C:\Users\user\Desktop\小熊哥捲土重來 - 部署到github"
   ```

3. **刪除現有的 .git 目錄**（如果存在）：
   ```
   if exist .git rmdir /s /q .git
   ```

4. **重新初始化 Git**：
   ```
   git init
   ```

5. **設置遠端倉庫**：
   ```
   git remote add origin https://github.com/wall4oppy/bear-bakery-game.git
   ```
   如果遠端已存在，使用：
   ```
   git remote set-url origin https://github.com/wall4oppy/bear-bakery-game.git
   ```

6. **添加專案文件**：
   ```
   git add .
   ```

7. **提交更改**：
   ```
   git commit -m "清理重新上傳: 只保留專案文件"
   ```

8. **強制推送到遠端**（這會覆蓋遠端的所有內容）：
   ```
   git push -f origin master
   ```

## 注意事項

- `.gitignore` 已經更新，會自動排除桌面文件、AppData、.vscode 擴展等
- 強制推送會刪除遠端倉庫的所有歷史記錄
- 確保 `.gitignore` 文件正確配置，避免再次誤提交桌面文件

