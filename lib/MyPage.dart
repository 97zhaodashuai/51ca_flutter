
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class Mypage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MypageState();
  }
}

double w(double wd)=>ScreenUtil.getInstance().setWidth(wd);
double h(double hi)=>ScreenUtil.getInstance().setHeight(hi);
double s(double fs)=>ScreenUtil.getInstance().setSp(fs);

class MypageState extends State<Mypage>{
  @override
  Widget build(BuildContext context) {
        ScreenUtil.instance = ScreenUtil(width: 1080,height: 1920)..init(context);
        return Scaffold(

            body: SafeArea(
                child: Column(
                    children: <Widget>[
                        getHeader(),
                        getItem("团购订单", 'images/img_heart.png'),
                        Divider(height: h(3),color: Colors.black12,),
                        getItem("我的团购券", "images/img_github.png"),
                        Divider(height: h(3),color: Colors.black12,),
                        getItem("团购抵用券", "images/img_book.png"),
                    ],
                ),
            )
        );
  }


  Container getHeader(){
      return Container(
          width: double.infinity,
          height: h(600),
          color: Colors.green,
          child: Column(

              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                  ClipOval(
                      child: Image(
                          image: AssetImage('images/img_user_head.png'),
                          width: w(220),
                          height: h(220)
                      ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: h(30),bottom: h(50)),
                      child: Text('去登录',
                          style: TextStyle(
                              fontSize: ScreenUtil.getInstance().setSp(50),
                              color:Colors.white,
                          ),
                      )
                  ),
              ],
          ),
      );
  }


  Container getItem(tips, img){
      return Container(
          color: Colors.white,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(w(60)),
                      child: Image(
                          image: AssetImage(img),
                          width: w(60),
                          height: h(60),
                      ),
                  ),
                  Expanded(
                      child: Text(
                          tips,
                          style: TextStyle(
                              fontSize: s(40),
                              color:Colors.black54
                          ),
                      )
                  ),
                  IconButton(
                      icon: Image(
                          image: AssetImage("images/img_right.png"),
                          width: w(55),
                          height: h(55),
                      ),
                  )
              ],
          )
      );
  }


}
