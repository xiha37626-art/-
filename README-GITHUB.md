# 衣橱 Android — GitHub 一键编译版

这个工程用于通过 GitHub Actions 自动生成可安装的 Android APK。

## 手机操作步骤

1. 在 GitHub 新建仓库，例如 `yichu-android`。
2. 将本目录里的**所有文件和文件夹**上传到仓库根目录。
3. GitHub → Actions → `Build 衣橱 APK` → `Run workflow`。
4. 等待构建完成。
5. 打开这次运行记录，在页面底部 `Artifacts` 下载 `衣橱-Android-APK`。
6. 解压后得到 `app-debug.apk`，直接安装到 Android 手机。

## 自动包含的功能

- 衣服拍照/上传
- AI 精细背景移除
- 数字衣橱分类、搜索、筛选
- 当前定位
- 天气读取
- 温度/体感温度/湿度/降雨概率/风速
- 全天温度时间轴
- 根据天气与衣橱内容生成穿搭建议

## 注意

首次使用 AI 抠图需要下载模型资源；天气需要网络连接和定位权限。

这个工作流生成的是 debug APK，适合个人安装测试。以后如果要发布到应用商店，再增加正式签名配置。
