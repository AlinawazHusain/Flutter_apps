// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_app/pages/utils.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.grey[100],
            elevation: 0,
            title: Text("          Instagram ",
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    wordSpacing: 10.0,
                    fontWeight: FontWeight.bold)),
            leading: Icon(Icons.camera_alt_rounded),
            actions: [
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.mark_as_unread_sharp),
                onPressed: () {},
              )
            ]),
        body: Column(
          children: [
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BubbleStories(),
                    BubbleStories(),
                    BubbleStories(),
                    BubbleStories(),
                    BubbleStories(),
                    BubbleStories(),
                    BubbleStories(),
                  ],
                )),
            SizedBox(height: 5.0),
            Expanded(
                child: ListView.builder(
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      return Posts();
                    }))
          ],
        ));
  }
}
