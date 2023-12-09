import 'package:facebook_lite_ui/models/friendmodel.dart';
import 'package:flutter/material.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({super.key});

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Friends',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  child: IconButton(
                    icon: Icon(
                      Icons.person,
                    ),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    color: Colors.green,
                    onPressed: () {
                      print('Person Clicked');
                    },
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[300]),
                ),
                Container(
                  child: IconButton(
                    icon: Icon(
                      Icons.people,
                    ),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    color: Colors.redAccent,
                    onPressed: () {
                      print('People Clicked');
                    },
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[300]),
                ),
              ],
            )
          ]),
        ),
        Divider(
          thickness: 1,
          color: Colors.black38,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: friendsData.length,
            itemBuilder: (context, i) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    backgroundImage: AssetImage(friendsData[i].avatar),
                  ),
                  title: Text(
                    friendsData[i].name,
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: Wrap(
                    spacing: 12,
                    children: [
                      TextButton(
                        onPressed: () => {print('Friend Add Request Sent')},
                        child: Text('Add Friend'),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.blue,
                            primary: Colors.white,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            textStyle: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                      TextButton(
                        onPressed: () => {print('Friend Removed')},
                        child: Text('Remove'),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.grey[400],
                            primary: Colors.black,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            textStyle: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  onTap: () {
                    print('Open Clicked User Profile');
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => UserProfile()));
                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
