import 'package:facebook_lite_ui/pages/friend_page.dart';
import 'package:facebook_lite_ui/pages/marketpage.dart';
import 'package:facebook_lite_ui/pages/message_page.dart';
import 'package:facebook_lite_ui/pages/profile_page.dart';
import 'package:facebook_lite_ui/pages/video_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 100,
          child: DrawerHeader(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => {Navigator.of(context).pop()},
                icon: Icon(Icons.arrow_back),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              Text(
                'Menu',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
              Container(
                child: IconButton(
                    icon: Icon(Icons.search_outlined),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      print('Search Clicked');
                    }),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey[300]),
              ),
            ],
          )),
        ),
        Expanded(
            child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage('images/user/sonam.jpg')),
              title: Text(
                'Sonam Sharma',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('View Your Profile'),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Material(
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 20.0),
                                child: ProfilePage(),
                              ),
                            )))
              },
            ),
            Divider(
              thickness: 1,
              color: Colors.black12,
            ),
            ListTile(
              leading: Icon(
                Icons.coronavirus_rounded,
                color: Colors.red,
              ),
              title: Text(
                'Covid-19 Information Center',
                style: TextStyle(fontSize: 14),
              ),
              onTap: () => {print('Covid Icon tapped')},
            ),
            ListTile(
              leading: Icon(
                Icons.message,
                color: Colors.green,
              ),
              title: Text(
                'Message',
                style: TextStyle(fontSize: 14),
              ),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Material(
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 20),
                                child: MessagePage(),
                              ),
                            )))
              },
            ),
            ListTile(
              leading: Icon(
                Icons.group,
                color: Colors.green,
              ),
              title: Text(
                'Groups',
                style: TextStyle(fontSize: 14),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_bag,
                color: Colors.green,
              ),
              title: Text(
                'Shopping Bag',
                style: TextStyle(fontSize: 14),
              ),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Material(
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 20.0),
                                child: MarketPage(),
                              ),
                            )))
              },
            ),
            ListTile(
              leading: Icon(
                Icons.people,
                color: Colors.green,
              ),
              title: Text(
                'People',
                style: TextStyle(fontSize: 14),
              ),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Material(
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 20.0),
                                child: FriendsPage(),
                              ),
                            )))
              },
            ),
            ListTile(
              leading: Icon(
                Icons.video_label,
                color: Colors.blue,
              ),
              title: Text(
                'Videos',
                style: TextStyle(fontSize: 14),
              ),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Material(
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 20.0),
                                child: VideoPage(),
                              ),
                            )))
              },
            ),
            ListTile(
              leading: Icon(
                Icons.pages,
                color: Colors.red,
              ),
              title: Text(
                'Pages',
                style: TextStyle(fontSize: 14),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey,
              ),
              title: Text(
                'Setting',
                style: TextStyle(fontSize: 14),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.privacy_tip,
                color: Colors.blueGrey,
              ),
              title: Text(
                'Privacy Tips',
                style: TextStyle(fontSize: 14),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.help,
                color: Colors.grey,
              ),
              title: Text(
                'Help Center',
                style: TextStyle(fontSize: 14),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.book,
                color: Colors.grey,
              ),
              title: Text(
                'About',
                style: TextStyle(fontSize: 14),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.red,
              ),
              title: Text(
                'Logout',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ))
      ],
    ));
  }
}
