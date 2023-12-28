import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  const BubbleStories({super.key});

  @override
  Widget build(BuildContext context) {
    List names = ['Names'];
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey[300])),
            SizedBox(height: 5),
            Text(names[0])
          ],
        ));
  }
}

//Search grids

class Grids extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.deepPurple[50],
                      borderRadius: BorderRadius.circular(10.0))));
        });
  }
}

//Homepage Posts

class Posts extends StatelessWidget {
  final List people_names = [
    'user_1',
    'Elon Musk',
    'Zukku facebook wala',
    'modi ji',
    'Binod'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      AppBar(
        title: Row(
          children: [
            Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.deepPurple[50], shape: BoxShape.circle)),
            Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text('Zukerberg',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w500))),
          ],
        ),
        actions: [
          Padding(padding: EdgeInsets.only(right: 10), child: Icon(Icons.menu))
        ],
      ),
      Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.deepPurple[50],
              borderRadius: BorderRadius.circular(10.0))),
      AppBar(
          title: Row(
            children: [
              Icon(Icons.favorite_border_sharp),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
              ),
              Icon(Icons.add_comment_outlined),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
              ),
              Icon(Icons.share)
            ],
          ),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.bookmark_border_outlined))
          ]),
      Padding(
          padding: EdgeInsets.only(left: 10),
          child: Row(children: [
            Text("Liked by ",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
            Text("ALINAWAZ HUSAIN",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
            Text(' and ',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
            Text("69 others.",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500))
          ])),
      Row(children: [
        Padding(padding: EdgeInsets.only(left: 10), child: Text('4 hours ago'))
      ])
    ]);
  }
}

//Grids for Posts

class PostGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.deepPurple[50],
                      borderRadius: BorderRadius.circular(10.0))));
        });
  }
}

//account Grids

class AccGrid_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(10.0))));
        });
  }
}

class AccGrid_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(10.0))));
        });
  }
}

class AccGrid__3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(10.0))));
        });
  }
}

//Reels Grid

class ReelsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          width: MediaQuery.of(context).size.width,
          height: (MediaQuery.of(context).size.height - 150),
          child: Padding(
              padding: EdgeInsets.only(top: 600),
              child: BottomNavigationBar(
                  backgroundColor: Colors.deepPurple[50],
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.favorite), label: "Like"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.comment), label: "Comment"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.share), label: "Share")
                  ])),
          decoration: BoxDecoration(
              color: Colors.deepPurple[50],
              borderRadius: BorderRadius.circular(10.0))),
      SizedBox(height: 10)
    ]);
  }
}
