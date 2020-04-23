import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show debugDefaultTargetPlatformOverride;
import 'app.dart';

// 文件结构

// assets/images 资源目录
// lib/pages/ 页面
// lib/plugins 插件
// lib/conf 配置
// lib/model
// lib/services
// style
// utils
// loading.dart 加载
void main(){
  debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
  runApp(MyApp());
}