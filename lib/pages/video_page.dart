import 'package:facebook_lite_ui/models/videomodel.dart';
import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  VideoPage({Key? key}) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Videos',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                child: Tooltip(
                  message: 'Play Video Automatically',
                  child: Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          print(isSwitched);
                        });
                      }),
                ),
              ),
            ],
          ),
        ),
        Divider(thickness: 1, color: Colors.black26),
        Expanded(
          child: ListView.builder(
            itemCount: videoData.length,
            itemBuilder: (context, i) => Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      iconSize: 50,
                      onPressed: videoData[i].avatarOnPressed,
                      icon: CircleAvatar(
                        radius: 80.0,
                        backgroundImage: AssetImage(videoData[i].avatarImage),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                videoData[i].name,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextButton(
                                onPressed: () => {},
                                child: Text(
                                  'Follow',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Wrap(
                            spacing: 10.0,
                            children: [
                              Text(
                                videoData[i].time,
                                style: TextStyle(fontSize: 18.0),
                              ),
                              Icon(Icons.public),
                            ],
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      iconSize: 30,
                      onPressed: videoData[i].moreOnPressed,
                      icon: Icon(Icons.more_horiz_outlined),
                    ),
                  ],
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //              videoPostLink,
                      //  videoPostLink= YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=BBAyRBTfsOU"),
                      //print(videoId);

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          videoData[i].videoPostTitle,
                          style: TextStyle(fontSize: 18.0, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.thumb_up_alt_outlined),
                          onPressed: videoData[i].likeOnPressed,
                        ),
                        Text('12', style: TextStyle(fontSize: 18.0)),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.message_outlined),
                          onPressed: videoData[i].commentOnPressed,
                        ),
                        Text('10', style: TextStyle(fontSize: 18.0)),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.share_outlined),
                          onPressed: videoData[i].shareOnPressed,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
