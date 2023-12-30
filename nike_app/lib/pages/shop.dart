// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nike_app/pages/shoppagebody.dart';

class Shoppage extends StatefulWidget {
  const Shoppage({super.key});

  @override
  State<Shoppage> createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
            padding: EdgeInsets.only(top: 10, left: 5),
            child: Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.menu_rounded),
                color: Colors.black,
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            )),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(children: [
          DrawerHeader(
              child: Image.asset(
            'images/nike_logo_without_bakground.png',
            color: Colors.grey[100],
            width: 150,
          )),
          Divider(color: Colors.grey[900]),
          Padding(
              padding:
                  EdgeInsets.only(top: 25, left: 40, right: 25, bottom: 25),
              child: ListTile(
                  leading: Icon(Icons.home_filled, color: Colors.white),
                  title: Text("Home",
                      style: TextStyle(color: Colors.white, fontSize: 20)))),
          Padding(
              padding: EdgeInsets.only(left: 40, right: 25, bottom: 25),
              child: ListTile(
                  leading: Icon(Icons.info_outline, color: Colors.white),
                  title: Text("About",
                      style: TextStyle(color: Colors.white, fontSize: 20)))),
          Padding(
              padding: EdgeInsets.only(left: 40, right: 25, bottom: 25),
              child: ListTile(
                  leading: Icon(Icons.logout, color: Colors.white),
                  title: Text("Logout",
                      style: TextStyle(color: Colors.white, fontSize: 20)))),
        ]),
      ),
      body: Center(
        child: ShopBody(),
      ),
    );
  }
}
