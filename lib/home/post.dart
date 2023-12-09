import 'package:facebook_lite_ui/models/postmodel.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          children: [
            for (var i = 0; i < postData.length; i++) ...[
              Row(
                children: [
                  IconButton(
                      iconSize: 50,
                      onPressed: postData[i].avatarOnPressed,
                      icon: CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage(postData[i].avatarImage),
                      )),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          postData[i].name,
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Wrap(
                          spacing: 10.0,
                          children: [
                            Text(
                              postData[i].time,
                              style: TextStyle(fontSize: 18.0),
                            ),
                            Icon(Icons.public)
                          ],
                        )
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () => {},
                      icon: Icon(Icons.more_horiz_outlined))
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      postData[i].postTitle,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    Image(image: AssetImage(postData[i].postImage))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: postData[i].likeOnPressed,
                        icon: Icon(Icons.thumb_up_alt_outlined),
                      ),
                      Text(
                        '12',
                        style: TextStyle(fontSize: 18.0),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: postData[i].commentOnPressed,
                        icon: Icon(Icons.message_outlined),
                      ),
                      Text(
                        '10',
                        style: const TextStyle(fontSize: 18.0),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: postData[i].moreOnPreesed,
                        icon: Icon(Icons.share_outlined),
                      ),
                    ],
                  )
                ],
              )
            ]
          ],
        ),
      ),
    );
  }
}
