import 'package:flutter/material.dart';

// function to trigger the app build
void main() {
  runApp(const TabBarDemo());
}

// class to build the app
class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key}) : super(key: key);

// build the app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(

          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.music_note)),
                Tab(icon: Icon(Icons.music_video)),
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(icon: Icon(Icons.grade)),
                Tab(icon: Icon(Icons.email)),
              ],
            ), // TabBar
            title: const Text('Geeks'),
            backgroundColor: Colors.green,
          ), // AppBar
          body: const TabBarView(
            children: [
              Icon(Icons.music_note),
              Icon(Icons.music_video),
              Icon(Icons.camera_alt),
              Icon(Icons.grade),
              Icon(Icons.email),
            ],
          ), // TabBarView
        ), // Scaffold
      ), // DefaultTabController
    ); // MaterialApp
  }
}
