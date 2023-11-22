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
          title: const Text(
            'DodoMap',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Proxima Nova',
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: () {},
            ),
          ],
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
                        'Lorem Ipsum',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text('Dolor sit amet',
                          style: TextStyle(color: Colors.white)),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        'https://th.bing.com/th/id/OIP.Ih3ezvnzUBhGtn5x5CUcpAHaE6?rs=1&pid=ImgDetMain',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(Icons.favorite_border),
                          onPressed: () {},
                          color: Colors.white,
                        ),
                        IconButton(
                          icon: const Icon(Icons.comment),
                          onPressed: () {},
                          color: Colors.white,
                        ),
                        IconButton(
                          icon: const Icon(Icons.share),
                          onPressed: () {},
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        'Liked by Lorem, Ipsum, and 500 others',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        'Lorem Ipsum Dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        style: TextStyle(
                          color: Colors.white,
                        ),
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
