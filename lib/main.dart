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
                    const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://randomuser.me/api/portraits/men/68.jpg'),
                      ),
                      title: Text(
                        'Traveler007',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Proxima Nova',
                        ),
                      ),
                      subtitle: Text(
                        'At Cayo Levantado',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Proxima Nova',
                        ),
                      ),
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
                          const Text(
                            'Liked by Lorem, Ipsum, and 500 others',
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
