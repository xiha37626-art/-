# 衣橱 Android App

这是当前“衣橱”手机 App 的 Capacitor Android 封装工程。

## 已保留功能
- 手机拍照/相册
- AI 精细抠图（浏览器端 IMG.LY background-removal）
- 衣物分类与搜索
- 穿着次数
- GPS 当前定位
- Open-Meteo 天气
- 未来约 12 小时逐小时温度曲线
- 湿度、体感、降雨概率、风速
- 根据天气从衣橱已有衣物中推荐穿搭

## 构建环境
需要 Node.js、Android Studio、Android SDK。Capacitor 官方 Android 环境要求 Android Studio + Android SDK。

## 安装依赖
```bash
npm install
npx cap add android
npx cap sync android
```

如果 android 目录已经存在：
```bash
npx cap sync android
```

打开 Android Studio：
```bash
npx cap open android
```

然后连接 Android 手机，点击 Run，即可安装调试版。

## 生成 APK
Android Studio：Build -> Generate App Bundles or APKs -> Generate APKs。

如果只需要本机测试，debug APK 即可。正式发布需要 release 签名密钥；不要把个人 keystore 提交到公开仓库。

## 权限
AndroidManifest.xml 中需要定位权限；相机/相册使用系统文件选择器与 WebView 能力。天气接口需要网络权限。

## 注意
IMG.LY 的模型资源第一次使用需要联网下载；Open-Meteo 天气也需要网络。正式产品建议将模型资源本地化或做可控 CDN，并为天气接口增加缓存与错误兜底。
