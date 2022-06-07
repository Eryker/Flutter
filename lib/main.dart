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


class HomePage extends StatelessWidget {
 @override 
 Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.blue,
     extendBodyBehindAppBar: true,
     appBar: MyAppBar()
     //  body: const Text('Hello World')
   );
 }
}



class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get PreferredSize => new Size.fromHeight(60);
  @override 
  Widget build(BuildContext context){
    return AppBar(
       elevation: 0,
       leading: IconButton(icon: Icon(Icons.menu, color: Colors.white,), onPressed: null,),
       actions: [IconButton(icon: Icon(Icons.more_vert, color: Colors.white,), onPressed: null,), ],
     );
    
  }
}