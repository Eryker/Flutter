import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player',
      home: HomePage(),
    );
  }
}

// Contenu de la Page Principale
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [HeaderSection(), PlaylistSection()],
        ),
      ),
      bottomNavigationBar: BottomSection(),
    );
  }
}

class BottomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.pause),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pause),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pause),
          label: '',
        )
      ],
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white.withOpacity(0),
      elevation: 0,
      leading: const IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.white,
          size: 25,
        ),
        onPressed: null,
      ),
      actions: const [
        IconButton(
          icon: Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 25,
          ),
          onPressed: null,
        ),
      ],
    );
  }
}

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: const BoxDecoration(
          color: Colors.red,
          image: DecorationImage(
            image: AssetImage('images/dark.jpeg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
          )),
      child: Stack(
        children: [
          Positioned(
            left: 20,
            bottom: 30,
            child: Text(
              'Vader ',
              style: GoogleFonts.pollerOne(
                  color: Colors.redAccent,
                  fontSize: 43,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Positioned(
              right: 0,
              bottom: 20,
              child: MaterialButton(
                onPressed: () {},
                color: Colors.red,
                shape: const CircleBorder(),
                child: const Padding(
                  padding: EdgeInsets.all(17),
                  child: Icon(
                    Icons.dry_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class PlaylistSection extends StatelessWidget {
  final List playList = [
    {
      'title': 'Skywalker',
      'duration': '3.15',
      'played': false,
    },
    {
      'title': 'Jedi Wars',
      'duration': '4.27',
      'played': false,
    },
    {
      'title': '66',
      'duration': '2.33',
      'played': true,
    },
    {
      'title': 'Death Star',
      'duration': '3.32',
      'played': false,
    },
    {
      'title': 'Redemption',
      'duration': '7.12',
      'played': false,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 40, 20, 20),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Sith',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Text(
                'Show All',
                style: TextStyle(fontSize: 13, color: Colors.redAccent),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          children: playList.map((song) {
            return Container(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    song['title'],
                    style: TextStyle(
                        color: song['played'] ? Colors.red : Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Row(
                    children: [
                      Text(song['duration'],
                          style: TextStyle(
                              color: song['played'] ? Colors.red : Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                      Icon(
                        Icons.more_vert,
                        color: song['played'] ? Colors.red : Colors.grey,
                      )
                    ],
                  )
                ],
              ),
            );
          }).toList(),
        )
      ]),
    );
  }
}
