
import 'package:flutter_app/NewsPage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class MainTabs extends StatefulWidget{
    @override
    State<StatefulWidget> createState() {
        return MainTabState();
    }
}

double w(double wd)=>ScreenUtil.getInstance().setWidth(wd);
double h(double hi)=>ScreenUtil.getInstance().setHeight(hi);
double s(double fs)=>ScreenUtil.getInstance().setSp(fs);

class MainTabState extends State<MainTabs> with AutomaticKeepAliveClientMixin{

    final List<Tab>  tabs = List<Tab>();
    final List<NewsPage> tabviews = List<NewsPage>();

    @override
    bool get wantKeepAlive => true;

    @override
    void initState(){
        super.initState();
        getTabViews();
        getTabs();
    }

    @override
    Widget build(BuildContext context) {
        ScreenUtil.instance = ScreenUtil(width: 1080, height: 1920)
            ..init(context);
        return new DefaultTabController(length: 5,
            child: Scaffold(
                appBar: AppBar(
                    title: TabBar(
                        tabs: tabs,
                        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: Colors.red,
                        unselectedLabelColor: Colors.grey,
                        unselectedLabelStyle: TextStyle(
                            fontSize: s(44)
                        ),
                        labelStyle: TextStyle(
                            fontSize: s(44),
                        ),
                        indicatorWeight: 3.0,
                        indicatorColor: Colors.green,
                    ),
                    backgroundColor: Colors.white
                ),
                body: new TabBarView(
                    children: tabviews
                )
            ));
    }


    List<Widget> getTabs(){

        tabs.add(Tab(text: "推荐"));
        tabs.add(Tab(text: "本地"));
        tabs.add(Tab(text: "全球"));
        tabs.add(Tab(text: "生活"));
        tabs.add(Tab(text: "打折"));
        return tabs;
    }

    List<NewsPage> getTabViews(){
        tabviews.add(NewsPage());
        tabviews.add(NewsPage());
        tabviews.add(NewsPage());
        tabviews.add(NewsPage());
        tabviews.add(NewsPage());
        return tabviews;
    }

}
