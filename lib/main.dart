import 'dart:ffi';

import 'package:dodomap/widgets/add_button.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.black,
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          backgroundColor: Colors.black,
          icons: [
            Icons.home,
            Icons.search,
            Icons.favorite_border,
            Icons.person,
          ],
          activeIndex: 0,
          activeColor: Colors.white,
          inactiveColor: Colors.white38,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge,
          onTap: (index) => print("current index is now: $index"),
        ),
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'DodoMap',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Billabong',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                'images/chat.png',
                height: 25,
                width: 25,
              )
            ],
          ),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: AddButton(),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 20,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3.0),
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.red,
                                width: 2,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  'https://randomuser.me/api/portraits/men/$index.jpg',
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Colors.black,
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: ListTile(
                                  leading: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.red,
                                        width: 2,
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            'https://randomuser.me/api/portraits/men/69.jpg'),
                                      ),
                                    ),
                                  ),
                                  title: const Text(
                                    'traveler007',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: 'Proxima Nova',
                                    ),
                                  ),
                                  subtitle: const Text(
                                    'At Cayo Levantado',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Proxima Nova',
                                    ),
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://th.bing.com/th/id/OIP.Ih3ezvnzUBhGtn5x5CUcpAHaE6?rs=1&pid=ImgDetMain',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  width: 80,
                                  child: const Stack(
                                    children: <Widget>[
                                      Positioned(
                                        top: 8.0,
                                        child: CircleAvatar(
                                          radius: 15.0,
                                          backgroundImage: NetworkImage(
                                              'https://randomuser.me/api/portraits/women/68.jpg'),
                                        ),
                                      ),
                                      Positioned(
                                        top: 8.0,
                                        left: 20.0,
                                        child: CircleAvatar(
                                          radius: 15.0,
                                          backgroundImage: NetworkImage(
                                              'https://randomuser.me/api/portraits/women/69.jpg'),
                                        ),
                                      ),
                                      Positioned(
                                        top: 8.0,
                                        left: 40.0,
                                        child: CircleAvatar(
                                          radius: 15.0,
                                          backgroundImage: NetworkImage(
                                              'https://randomuser.me/api/portraits/men/70.jpg'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Text(
                                  'Liked by John, Jane, and 500 others',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: 'Proxima Nova',
                                  ),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'images/send.png',
                                      height: 25,
                                      width: 25,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      'images/bookmark.png',
                                      height: 25,
                                      width: 25,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
