// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_app/pages/utils.dart';

class AddPostPage extends StatelessWidget {
  const AddPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          title: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Icon(Icons.close_outlined),
                  Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Text('New Post',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600))),
                  Padding(
                      padding: EdgeInsets.only(left: 160),
                      child: Text("Next",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.lightBlue[700],
                              fontWeight: FontWeight.w600)))
                ],
              )),
        ),
        body: Column(
          children: [
            SizedBox(height: 5),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
                color: Colors.deepPurple[50]),
            AppBar(
                title: Row(
                  children: [
                    Text('Recents'),
                    Icon(Icons.keyboard_arrow_down_outlined),
                  ],
                ),
                actions: [
                  Container(
                      height: 30,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey[50],
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Icon(Icons.select_all_outlined),
                          Text('Select Multiple')
                        ],
                      )),
                  Padding(
                      padding: EdgeInsets.only(left: 20, right: 15),
                      child: Icon(Icons.camera_alt_outlined))
                ]),
            Expanded(
              child: PostGrid(),
            )
          ],
        ));
  }
}
