import 'package:facebook_lite_ui/home/Mydrawer.dart';
import 'package:facebook_lite_ui/pages/friend_page.dart';
import 'package:facebook_lite_ui/pages/home_page.dart';
import 'package:facebook_lite_ui/pages/marketpage.dart';
import 'package:facebook_lite_ui/pages/message_page.dart';
import 'package:facebook_lite_ui/pages/notifications_page.dart';
import 'package:facebook_lite_ui/pages/video_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:badges/badges.dart' as badges;

class MainTab extends StatefulWidget {
  const MainTab({super.key});

  @override
  State<MainTab> createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final List<Tab> topTab = <Tab>[
    Tab(icon: Icon(Icons.home_outlined)),
    Tab(icon: Icon(Icons.people_outlined)),
    Tab(icon: Icon(Icons.message_outlined)),
    Tab(
        icon: badges.Badge(
            position: badges.BadgePosition.topEnd(top: -20, end: -5),
            badgeContent: Text(
              "3",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            child: Icon(Icons.notifications_outlined))),
    Tab(icon: Icon(Icons.video_library_outlined)),
    Tab(icon: Icon(Icons.shopping_bag_outlined))
  ];
  @override
  void initState() {
    _tabController =
        TabController(length: topTab.length, initialIndex: 0, vsync: this)
          ..addListener(() {
            setState(() {});
          });
    super.initState();
  }

  Future<bool> _onWillPop() async {
    print("on will pop");
    if (_tabController?.index == 0) {
      await SystemNavigator.pop();
    }
    Future.delayed(Duration(milliseconds: 200), () {
      print('Set Index');
      _tabController?.index = 0;
    });
    print("Return");
    return _tabController?.index == 0;
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text(
            'facebook',
            style: TextStyle(fontSize: 34, color: Colors.blue[700]),
          ),
          actions: [
            Container(
              child: IconButton(
                icon: Icon(
                  Icons.search,
                ),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  print('Search was Clicked');
                },
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey[300]),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: IconButton(
                icon: Icon(
                  Icons.menu,
                ),
                onPressed: () {
                  _scaffoldKey.currentState!.openEndDrawer();
                },
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey[300]),
            ),
          ],
          bottom: TabBar(
              controller: _tabController,
              indicatorColor: Colors.black,
              tabs: topTab),
        ),
        endDrawer: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          child: MyDrawer(),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            HomePage(),
            FriendsPage(),
            MessagePage(),
            NotificationPage(),
            VideoPage(),
            MarketPage()
          ],
        ),
      ),
    );
  }
}
