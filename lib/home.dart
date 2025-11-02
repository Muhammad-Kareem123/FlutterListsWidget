import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(173, 52, 173, 56),
        title: Text("ListViews",style: TextStyle(color: Colors.white),),
      ),
      body: ListView(
        children: [
          ListTile(title: Text("Bike"),),
          ListTile(title: Text("boat"),)
          ,
          ListTile(title: Text("Bus"),),
          ListTile(title: Text("car"),),
          ListTile(title: Text("railway"),),
          ListTile(title: Text("run"),)
        ],
      ),
    );
  }
}