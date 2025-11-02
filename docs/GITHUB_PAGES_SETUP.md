# 🚀 GitHub Pages 手動設定指南

## ⚠️ 重要提示

**第一次使用 GitHub Pages 需要手動啟用！** 這是 GitHub 的安全設定，無法通過 workflow 自動完成。

## 📋 啟用步驟

### 1. 進入倉庫設定頁面

1. 訪問您的 GitHub 倉庫：https://github.com/wall4oppy/thebearbakery
2. 點擊倉庫頂部菜單的 **「Settings」（設定）**

### 2. 找到 Pages 設定

在左側選單中找到並點擊 **「Pages」**

### 3. 設定部署來源

在 **「Source」（來源）** 區域：
- 選擇 **「GitHub Actions」** 作為部署方法
- 不要選擇「Deploy from a branch」，這會衝突

### 4. 儲存設定

點擊 **「Save」（儲存）** 按鈕

### 5. 重新運行動作

1. 返回倉庫的 **「Actions」** 頁面
2. 找到失敗的 workflow run
3. 點擊右上角的 **「Re-run jobs」（重新運行作業）** 按鈕
4. 選擇 **「Re-run failed jobs」（重新運行失敗的作業）**

### 6. 等待部署完成

部署通常需要 1-2 分鐘，成功後您會看到：
- ✅ 所有步驟都顯示綠色勾號
- ✅ 在最後一個步驟顯示網站 URL

## 🌐 訪問您的網站

部署成功後，您的網站將在以下網址可用：
- **https://wall4oppy.github.io/thebearbakery/**

或者根據您的倉庫設定：
- **https://wall4oppy.github.io/bear-bakery-game/**

## 🔄 自動部署設定

完成上述手動設定後，未來的推送將自動觸發部署：

1. 您推送代碼到 `main` 分支
2. GitHub Actions 自動運行 workflow
3. 網站自動更新（無需手動操作）

## ❓ 常見問題

### Q: 為什麼第一次需要手動啟用？
A: 這是 GitHub 的安全措施，防止未經授權的網站發布。

### Q: 部署後多久可以看到更新？
A: 通常 1-2 分鐘。您可以在 Actions 頁面查看部署進度。

### Q: 我可以使用自定義域名嗎？
A: 可以！在 Pages 設定頁面中，有一個「Custom domain」選項，您可以設定自己的域名。

### Q: 如果部署失敗怎麼辦？
A: 
1. 檢查 Actions 頁面的錯誤訊息
2. 確認檔案是否存在且路徑正確
3. 檢查 workflow 檔案是否有語法錯誤
4. 重新運行失敗的 workflow

## 📝 工作流程文件

我們的部署使用 GitHub Actions，配置檔位於：
- `.github/workflows/static.yml`

此 workflow 會在以下情況自動觸發：
- 推送到 `main` 分支
- 手動從 Actions 頁面觸發（workflow_dispatch）

## ✅ 驗證清單

完成設定後，請確認：

- [ ] 在 Settings → Pages 中選擇了 GitHub Actions
- [ ] 儲存了設定
- [ ] 重新運行了 workflow
- [ ] workflow 顯示成功 ✅
- [ ] 可以訪問網站 URL
- [ ] 網站內容正確顯示

## 🎉 完成！

設定完成後，您的網站應該可以正常訪問了。如果有任何問題，請查看 GitHub Actions 的錯誤訊息或聯繫支援。

