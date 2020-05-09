import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show debugDefaultTargetPlatformOverride;
import 'app.dart';

// 文件结构

// assets/images 图片资源
// assets/font 字体资源

// lib/pages/ 页面
// lib/pages/welcome 欢迎页面
// lib/common/plugins 插件
// lib/common/conf 配置

// loading.dart 加载
void main(){
  // 选择平台
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(MyApp());
}