import 'package:facebook_lite_ui/home/menubar.dart';
import 'package:facebook_lite_ui/home/post.dart';
import 'package:facebook_lite_ui/home/storybar.dart';
import 'package:facebook_lite_ui/postbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8.0),
      child: ListView(
        children: [
          Postbar(),
          Divider(
            thickness: 1,
            color: Colors.black12,
          ),
          Menubar(),
          Divider(
            thickness: 10,
            color: const Color.fromARGB(31, 86, 82, 82),
          ),
          Storybar(),
          Divider(
            thickness: 1,
            color: const Color.fromARGB(31, 86, 82, 82),
          ),
          Post()
        ],
      ),
    );
  }
}
