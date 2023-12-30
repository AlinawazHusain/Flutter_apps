// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:nike_app/models/shoes.dart';

class ShoeTile extends StatelessWidget {
  final int idx;
  const ShoeTile({super.key, required this.idx});
  // final int index;

  @override
  Widget build(BuildContext context) {
    final List Paths = [
      'images/shoe1.png',
      'images/shoe2.png',
      'images/shoe3.png',
    ];

    final List texts = [
      'Blue sneakers for 24/7 comfort',
      'Sports and Gym shoe for extra reps',
      'Funky sneakers to style differnt'
    ];

    final List names = ['Air Max', 'Air Sports', 'Funky jordan'];

    final List prices = ['\$' + '245', '\$' + '385', '\$' + '190'];

    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      width: MediaQuery.of(context).size.width - 50,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Image.asset(Paths[idx]),
                Text(texts[idx], textAlign: TextAlign.center),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          names[idx],
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text(prices[idx])
                      ]),
                  GestureDetector(
                      onTap: () {
                        print('Added');
                      },
                      child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15)),
                          child: Icon(Icons.add, color: Colors.white)))
                ]),
          ),
          SizedBox(height: 20)
        ],
      ),
    );
  }
}
