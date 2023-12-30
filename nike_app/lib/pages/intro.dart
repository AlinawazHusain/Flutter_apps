// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nike_app/pages/shop.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Image.asset(
                            'images/nike_logo_without_bakground.png',
                            width: MediaQuery.of(context).size.width)),
                    Text('NIKE', style: TextStyle(fontSize: 20)),
                    const SizedBox(height: 24),
                    Text('JUST DO IT',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600)),
                    const SizedBox(height: 30),
                    Text(
                      'Brand new sneakers and custom kicks made with premium qulaity',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Shoppage())),
                        child: Container(
                          padding: EdgeInsets.all(25),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text('Shop Now',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold))),
                        )),
                  ],
                ))));
  }
}
