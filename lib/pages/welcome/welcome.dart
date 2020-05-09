// 欢迎页
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  /// 页面标题
  Widget _buildPageHeadTitle() {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      child: Text(
        "欢迎使用",
        style: TextStyle(
          fontSize: 24,
          fontFamily: "NotoSansSC",
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  /// 页头详情，回程会是一趟孤独的旅途。
  Widget _buildPageHeadDetails() {
    return Container(
      width: 300.0,
      height: 70.0,
      margin: EdgeInsets.only(top: 20.0),
      //color: Colors.blue,
      child: Text(
        "在天上，水星有一座山以她的名字命名，这是全世界诗人的荣耀，在大地上，这个天才诗人度过了她风流倜傥又波澜起伏的一生。",
        style: TextStyle(
          fontSize: 15,
          fontFamily: "NotoSansSC",
          fontWeight: FontWeight.normal,
          // 行高
          height: 1.5,
        ),
      ),
    );
  }

  /// 特性说明
  Widget _buildFeatureItem({String imgName, String intro, double marginTop}) {
    return Container(
      width: 400,
      height: 100,
      margin: EdgeInsets.only(top: marginTop),
      //color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // 图片
          Container(
            width: 100.0,
            height: 80.0,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: AssetImage("assets/images/$imgName.png"))),
          ),

          //Spacer(),s
          SizedBox(width: 20.0),
          // 文字
          Container(
            width: 200.0,
            child: Text(
              intro,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 14.0,
                fontFamily: "NotoSansSC",
              ),
            ),
          )
        ],
      ),
    );
  }

  /// 开始按钮
  Widget _buildStartButton() {
    return Container(
      width: 300,
      height: 40,
      margin: EdgeInsets.only(bottom: 30.0),
      //color: Colors.blue,
      child: FlatButton(
        color: Colors.blueAccent,
        child: Text(
          "开始吧",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "NotoSansSC",
            fontSize: 14,
          ),
        ),
        // 圆角
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(6.0))),
        //RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        // 回调
        onPressed: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 主体背景颜
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            _buildPageHeadTitle(),
            _buildPageHeadDetails(),
            // 信息介绍
            _buildFeatureItem(
              imgName: "img_1",
              intro:
                  "I'll do the intros and outros and it's a, kind of a, magazine show.",
              marginTop: 20.0,
            ),
            _buildFeatureItem(
              imgName: "img_2",
              intro:
                  "Never having seen the intros in question, I can't really tell.",
              marginTop: 5.0,
            ),
            _buildFeatureItem(
              imgName: "img_3",
              intro:
                  "As the 20 intros are also in ascending beats-per-minute order, this should make things slightly easier.",
              marginTop: 5.0,
            ),
            // 按钮
            Spacer(),
            _buildStartButton(),
          ],
        ),
      ),
    );
  }
}
