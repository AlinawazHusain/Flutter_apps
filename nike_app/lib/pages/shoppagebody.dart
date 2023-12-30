// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nike_app/pages/shoesource.dart';
// import 'package:nike_app/pages/shoesource.dart';

class ShopBody extends StatefulWidget {
  const ShopBody({super.key});

  @override
  State<ShopBody> createState() => _ShopBodyState();
}

class _ShopBodyState extends State<ShopBody> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Search'), Icon(Icons.search)],
          )),
      Padding(
          padding: EdgeInsets.only(left: 12, right: 12),
          child: Text(
            "Stride with confidence, strut with pride. Discover the world in Nike shoes.",
            textAlign: TextAlign.center,
          )),
      Padding(
          padding: EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Hot Picks 🔥',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              TextButton(
                  onPressed: () {},
                  child: Text('see all',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold)))
            ],
          )),
      Expanded(
          child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ShoeTile(idx: index);
              })),
      SizedBox(height: 10),
      Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey[100],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 80.0),
              child: GestureDetector(
                  onTap: () {
                    print('tapped');
                  },
                  child: Icon(Icons.shopping_bag)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: GestureDetector(
                  onTap: () {
                    print('tapped');
                  },
                  child: Icon(Icons.shopping_cart)),
            )
          ],
        ),
      ),
    ]);
  }
}
