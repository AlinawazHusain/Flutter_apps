// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_app/pages/utils.dart';

class SearchPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.grey[100],
            title: Row(
              children: [
                Container(
                    child: Icon(Icons.search),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[300],
                    )),
                Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Search ",
                      style: TextStyle(fontSize: 20.0),
                    ))
              ],
            )),
        body: Grids());
  }
}
