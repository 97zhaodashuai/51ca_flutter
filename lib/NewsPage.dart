
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NewsPageState();
  }
}

double w(double wd)=>ScreenUtil.getInstance().setWidth(wd);
double h(double hi)=>ScreenUtil.getInstance().setHeight(hi);
double s(double fs)=>ScreenUtil.getInstance().setSp(fs);

class NewsPageState extends State<NewsPage>{
  @override
  Widget build(BuildContext context) {
        ScreenUtil.instance = ScreenUtil(width: 1080,height: 1920)..init(context);
        return Scaffold(

            body: SafeArea(
                child:SingleChildScrollView(
                    child: Column(
                        children: <Widget>[
                            Container(
                                padding: EdgeInsets.only(left:w(30),top:h(20), right:w(10), bottom:h(20)),
                                child:Row(
                                    children: <Widget>[
                                        Expanded(
                                            child: getWeatherBar(),
                                        ),
                                        Expanded(
                                            child: getGasBar(),
                                        ),
                                        getHui()
                                    ],
                                ),
                            ),
                            getFoucs(),
                            newsType2(),
                            Divider(height: h(10),color: Colors.black26,),
                            newsType2(),
                            Divider(height: h(10),color: Colors.black26,),
                            newsType1(),
                            Divider(height: h(10),color: Colors.black26,),
                            newsType2(),
                            Divider(height: h(10),color: Colors.black26,),
                            newsType1(),
                            Divider(height: h(10),color: Colors.black26,),
                            newsType2(),
                            Divider(height: h(10),color: Colors.black26,),
                            newsType1(),
                            Divider(height: h(10),color: Colors.black26,),
                            newsType2(),
                            Divider(height: h(10),color: Colors.black26,),
                            newsType1(),
                            Divider(height: h(10),color: Colors.black26,),
                            newsType2(),
                            Divider(height: h(10),color: Colors.black26,),
                            newsType1(),
                            Divider(height: h(10),color: Colors.black26,),
                            newsType2(),
                            Divider(height: h(10),color: Colors.black26,),
                            newsType1(),
                            Divider(height: h(10),color: Colors.black26,),
                            newsType2(),
                            Divider(height: h(10),color: Colors.black26,),
                        ],
                    ),
                )
            )
        );
  }



  Container newsType2(){
      return Container(
          padding: EdgeInsets.all(w(20)),
          child: Row(

              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                    child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                            Text(
                                "杜鲁多连任两把火：尽快建成输油管道和减税",
                                style: TextStyle(
                                    fontSize: s(45),
                                    color: Colors.black87
                                )
                            ),

                            Padding(
                                padding: EdgeInsets.only(top: h(20))
                            ),
                            Text(
                                "实时",
                                style: TextStyle(
                                    fontSize: s(30),
                                    color: Colors.black54
                                )
                            ),
                        ],
                    ),
                ),
                Image(
                      image: AssetImage('images/n1.jpeg'),
                      height: h(210),
                      width: w(300),
                      fit: BoxFit.fill,
                  )
              ],
          ),
      );

  }


  Container newsType1(){
      return Container(
          padding: EdgeInsets.all(w(20)),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                  Text(
                      "加拿大西部在闹独立，“杜罗多应该多多伦多市长”",
                      style: TextStyle(
                          fontSize: s(45),
                          color: Colors.black87
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: h(25)),
                  ),
                  Row(
                      children: <Widget>[
                          Expanded(
                              child: Image(
                                  height: h(210),
                                  image: AssetImage('images/n2.jpg'),
                                  fit: BoxFit.fill,
                              ),
                          ),
                          Padding(padding: EdgeInsets.only(right: w(20))),
                          Expanded(
                              child: Image(
                                  height: h(210),
                                  image: AssetImage('images/n3.jpg'),
                                  fit: BoxFit.fill,
                              ),
                          ),
                          Padding(padding: EdgeInsets.only(right: w(20))),
                          Expanded(
                              child: Image(
                                  height: h(210),
                                  image: AssetImage('images/n4.png'),
                                  fit: BoxFit.fill,
                              ),
                          )
                      ],
                  ),


              ],
          ),

      );


  }




  Container getFoucs(){
      return Container(
          color: Color(0xaa000000),
          padding: EdgeInsets.only(top:h(100), bottom: h(60), left: w(30), right: w(30)),
          child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                  Text(
                      "今日要闻精要",
                      style: TextStyle(
                          fontSize: s(60),
                          color: Colors.white
                      ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top:h(5)),
                  ),
                  Text(
                      "2019年10月24日",
                      style: TextStyle(
                          fontSize: s(36),
                          color: Colors.white
                      ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: h(30)),
                  ),
                  Text(
                      "华人老夫被撞到急寻家人；独立房屋一死一伤；安生更多政府服务网上办理；今早两个车预热;华人老夫被撞到急寻家人；独立房屋一死一伤；安生更多政府服务网上办理；今早两个车预热",
                      style: TextStyle(
                          fontSize: s(30),
                          color: Colors.white,

                      ),
                      textAlign: TextAlign.center,
                  ),
              ],
          ),


      );
  }



  Column getHui(){
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
              Text(
                  "0.76美元/5.41人民币",
                  style: TextStyle(
                      fontSize: s(30),
                      color: Colors.black
                  ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: h(10)),
              ),
              Text('兑换1加元',
                  style: TextStyle(
                      fontSize: s(30),
                      color: Colors.grey
                  ),
              )

          ],
      );
  }



  Row getWeather(){
      return Row(
            children: <Widget>[
                Image(
                    image: AssetImage("images/snow.png"),
                    width: w(32),
                    height: h(32),
                ),
                Padding(
                    padding: EdgeInsets.only(left: w(10)),
                ),
                Text(
                    "多云 13℃",
                    style: TextStyle(
                        fontSize: s(30),
                        color: Colors.black
                    ),
                )
            ],
      );
  }

  Column getWeatherBar(){
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
              getWeather(),
              Padding(
                  padding: EdgeInsets.only(top: h(10)),
              ),
              Text(
                  "多伦多",
                  style: TextStyle(
                      fontSize: s(30),
                      color: Colors.grey
                  ),
              )
          ],
      );
  }


  Row getGas(){
      return Row(
          children: <Widget>[
              Image(
                  image: AssetImage("images/list_icon_gas.png"),
                  width: w(32),
                  height: h(32),
              ),
              Padding(
                  padding: EdgeInsets.only(left: w(10)),
              ),
              Text(
                  "149.5",
                  style: TextStyle(
                      fontSize: s(30),
                      color: Colors.black
                  ),
              )
          ],
      );
  }

  Column getGasBar(){

      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
              getGas(),
              Padding(
                  padding: EdgeInsets.only(top: h(10)),
              ),
              Text(
                  "卡夹里",
                  style: TextStyle(
                      fontSize: s(30),
                      color: Colors.grey
                  ),
              )
          ],
      );
  }




}
