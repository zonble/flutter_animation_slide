# 在 Flutter 中製作動畫

這是一個用 Flutter 製作的投影片專案，深入介紹在 Flutter 框架中實作各種動畫效果的技巧與概念。

## 🌐 線上展示

網頁版投影片：https://zonble.github.io/flutter_animation_slide/

**注意**：有一些動畫效果無法在網頁版完整呈現，建議 clone 專案後在本地執行以獲得最佳體驗。

## 📋 專案簡介

本專案是一個互動式投影片應用程式，涵蓋了 Flutter 動畫開發的各種主題，包括：

### 🎯 涵蓋的動畫類型

- **基礎動畫概念**：Animation Controller、Tween、Curve
- **隱式動畫**：AnimatedContainer、AnimatedOpacity 等
- **顯式動畫**：AnimationController 的進階應用
- **動畫 Widget**：AnimatedWidget 的自定義實作
- **過渡動畫**：PageRouteBuilder、Hero 動畫
- **第三方動畫庫**：
  - 🎬 Lottie 動畫
  - 📹 SVGA 動畫  
  - 🎮 Rive 互動動畫
  - 🖼️ WebP 動畫圖片
  - 📱 GIF 動畫

### ✨ 主要特色

- 📖 完整的動畫學習教材
- 🔧 實際可執行的程式碼範例
- 📱 響應式設計，適配不同螢幕尺寸
- 🎛️ 互動式投影片導覽
- 💻 支援 Web、iOS、Android 等多平台

## 🚀 快速開始

### 環境需求

- Flutter SDK 3.16.0 或更高版本
- Dart SDK 3.2.0 或更高版本

### 安裝步驟

1. **Clone 專案**
   ```bash
   git clone https://github.com/zonble/flutter_animation_slide.git
   cd flutter_animation_slide
   ```

2. **安裝依賴套件**
   ```bash
   flutter pub get
   ```

3. **執行應用程式**
   ```bash
   # 在模擬器或實體裝置上執行
   flutter run
   
   # 或在網頁瀏覽器中執行
   flutter run -d chrome
   ```

## 📦 主要依賴套件

- `lottie: ^3.1.3` - Lottie 動畫支援
- `svgaplayer_flutter: ^2.3.0` - SVGA 動畫播放器
- `rive: ^0.13.17` - Rive 互動動畫
- `url_launcher: ^6.3.1` - URL 啟動功能
- `dart_code_viewer: ^1.5.1` - 程式碼展示

## 🏗️ 專案結構

```
lib/
├── main.dart              # 主程式入口
├── page.dart              # 頁面基礎組件
├── styles.dart            # 樣式定義
└── pages/                 # 投影片頁面
    ├── cover.dart         # 封面頁
    ├── about.dart         # 關於頁面
    ├── concept.dart       # 動畫概念
    ├── animation_*.dart   # 各種動畫範例
    ├── lottie.dart        # Lottie 動畫範例
    ├── rive.dart          # Rive 動畫範例
    ├── hero.dart          # Hero 動畫範例
    └── ...                # 其他投影片頁面
```

## 🎮 使用方式

- **下一頁**：點擊畫面或使用右方向鍵
- **上一頁**：使用左方向鍵或點擊左箭頭按鈕
- **頁面導覽**：使用畫面下方的導覽按鈕

## 👤 作者資訊

**Weizhong Yang (zonble)**
- 📧 Email: zonble@gmail.com
- 🌐 Website: https://zonble.net
- 💻 GitHub: https://github.com/zonble

## 📄 授權條款

本專案採用開源授權，詳情請參閱 LICENSE 檔案。

## 🤝 貢獻

歡迎提交 Issue 和 Pull Request 來改善這個專案！

---

💡 **提示**：建議在實體裝置或桌面平台上執行以獲得最佳的動畫效果體驗。
