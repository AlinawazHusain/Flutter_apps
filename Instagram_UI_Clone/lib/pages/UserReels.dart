// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_app/pages/utils.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.grey[100],
            title: Row(children: [
              Text('Reels'),
              Icon(Icons.keyboard_arrow_down_outlined),
            ]),
            actions: [
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Icon(Icons.camera_alt_outlined))
            ]),
        body: Expanded(
            child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return ReelsGrid();
                })));
  }
}
