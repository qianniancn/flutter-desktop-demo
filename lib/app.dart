import 'package:demo_win/pages/welcome/welcome.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Desktop Demo",
      home: Home(),
      theme: ThemeData(
        // 全局
        fontFamily: "NotoSansSC",
          backgroundColor: Colors.blue, primaryColor: Colors.pinkAccent),
    );
  }
}

// 750rpx
class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double srcwidth = MediaQuery.of(context).size.width;
    double srcHeight = MediaQuery.of(context).size.height;
    print("当前宽度：$srcwidth,高度：$srcHeight");
    return Scaffold(
      
      // 进入欢迎页
      body: WelcomePage(),
    );
  }
}
