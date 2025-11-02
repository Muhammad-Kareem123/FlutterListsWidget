import 'package:flutter/material.dart';

class MyListViewBuilder extends StatelessWidget {
  const MyListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    String username = "User";
    return Scaffold(
      appBar: AppBar(
        title: Text("Person Info") 
      ),
      body: ListView.separated(
        scrollDirection:Axis.vertical,
      
        itemCount: 10,
         itemBuilder: (BuildContext context, int index) { 
          String Username = "User ${index+1}";
          return ListTile(
            leading: Icon(Icons.person),
            title: Text("$Username"),
            subtitle: Text("$Username@gmail.com"),
          );
          }, separatorBuilder: (BuildContext context, int index) { 
            return Divider(height: 100,);
           } ,
        
      
      ),
    );
  }
}