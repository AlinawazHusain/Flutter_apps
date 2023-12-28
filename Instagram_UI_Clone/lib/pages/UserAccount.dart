// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_app/pages/utils.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 70,
              backgroundColor: Colors.grey[100],
              title: Row(
                children: [
                  Text("alinawaz.husain"),
                  Icon(Icons.keyboard_arrow_down_rounded),
                  Padding(
                    padding: EdgeInsets.only(left: 110.0),
                    child: Icon(Icons.add_box_outlined),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Icon(Icons.menu),
                  )
                ],
              ),
            ),
            body: Column(
              children: [
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 10.0, top: 20),
                        child: Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                              color: Colors.grey[400], shape: BoxShape.circle),
                        )),
                    Row(children: [
                      Padding(
                          padding: EdgeInsets.only(left: 50, top: 30),
                          child: Row(children: [
                            Column(children: [
                              Row(children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 0),
                                    child: Column(children: [
                                      Text("12",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700)),
                                      SizedBox(height: 5.0),
                                      Text('Posts')
                                    ])),
                                Padding(
                                    padding: EdgeInsets.only(left: 25),
                                    child: Column(children: [
                                      Text("55",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700)),
                                      SizedBox(height: 5.0),
                                      Text('Followers')
                                    ])),
                                Padding(
                                    padding: EdgeInsets.only(left: 25),
                                    child: Column(children: [
                                      Text('90',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700)),
                                      SizedBox(height: 5.0),
                                      Text('Following')
                                    ]))
                              ]),
                            ])
                          ]))
                    ])
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 5.0),
                    child: Container(
                        // height: 10,
                        width: MediaQuery.of(context).size.width,
                        child: Text('ALINAWAZ HUSAIN NAQVI',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600)))),
                Row(children: [
                  Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Container(
                        width: 150,
                        height: 35,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Edit Profile',
                              style: TextStyle(color: Colors.black)),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey[300],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Container(
                        width: 150,
                        height: 35,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Share Profile',
                              style: TextStyle(color: Colors.black)),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey[300],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Container(
                          width: 45,
                          height: 35,
                          child: Icon(Icons.person_add),
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10.0))))
                ]),
                SizedBox(height: 10),
                TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.grid_on_rounded)),
                    Tab(icon: Icon(Icons.video_call_outlined)),
                    Tab(icon: Icon(Icons.person_pin_sharp))
                  ],
                ),
                Expanded(
                    child: TabBarView(
                  children: [AccGrid_1(), AccGrid_2(), AccGrid__3()],
                ))
              ],
            )));
  }
}
