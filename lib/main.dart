import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'NewsPage.dart';
import 'MyPage.dart';
import 'NewsTab.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyAppPage(),
    );
  }
}


class MyAppPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }

}

class MyAppState extends State<MyAppPage>{

    int _tabIndex = 0;
    var tabImages;
    var appBarTitles = ['新闻','发现','我的'];
    var _bodys;

    @override
    void initState() {
    super.initState();
    initData();
  }

  void initData(){
      tabImages = [
          [
              getTabImage('images/tab_icon_news.png'),
              getTabImage('images/tab_icon_news_active.png'),
          ],
          [
              getTabImage('images/tab_icon_discover.png'),
              getTabImage('images/tab_icon_discover_active.png'),
          ],
          [
              getTabImage('images/tab_icon_my.png'),
              getTabImage('images/tab_icon_my_active.png'),
          ]
      ];
      _bodys = [
          MainTabs(),
          Mypage(),
          Mypage(),
      ];
  }

    Image getTabImage(path){
        return new Image.asset(path, width: 20.0,height: 20.0);
    }

    Image getTabIcon(int curIndex){
        if(curIndex == _tabIndex){
            return tabImages[curIndex][1];
        }else{
            return tabImages[curIndex][0];
        }
    }

    Text getTabTitle(int curIndex){
        if(curIndex == _tabIndex){
            return  Text(
                appBarTitles[curIndex],
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.green
                ),
            );
        }else{
            return  Text(
                appBarTitles[curIndex],
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.black54
                ),
            );

        }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _bodys[_tabIndex],
        bottomNavigationBar:  BottomNavigationBar(
            items: <BottomNavigationBarItem>[
                new BottomNavigationBarItem(icon: getTabIcon(0),title: getTabTitle(0)),
                new BottomNavigationBarItem(icon: getTabIcon(1),title: getTabTitle(1)),
                new BottomNavigationBarItem(icon: getTabIcon(2),title: getTabTitle(2)),
            ],
            type:BottomNavigationBarType.fixed,
            currentIndex:_tabIndex,
            onTap:(index){
                setState(() {
                    _tabIndex = index;
                });
            }
        ),
    );
  }

}

