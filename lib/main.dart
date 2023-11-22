import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        body: ListView.builder(
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
    );
  }
}
