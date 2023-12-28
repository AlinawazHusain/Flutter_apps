// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_app/pages/UserAccount.dart';
import 'package:my_app/pages/UserAddPost.dart';
import 'package:my_app/pages/UserHome.dart';
import 'package:my_app/pages/UserReels.dart';
import 'package:my_app/pages/UserSearch.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainPage> {
  int selected_index = 0;
  void onSelect(int index) {
    setState(() {
      selected_index = index;
    });
  }

  final List<Widget> selected_child = [
    HomePage(),
    SearchPage(),
    AddPostPage(),
    ReelsPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selected_child[selected_index],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selected_index,
          onTap: onSelect,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_sharp), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.add_box), label: "Post"),
            BottomNavigationBarItem(
                icon: Icon(Icons.slow_motion_video_outlined), label: "Reels"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_pin), label: "Account"),
          ]),
    );
  }
}
