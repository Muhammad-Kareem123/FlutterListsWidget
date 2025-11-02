import 'package:flutter/material.dart';

class MyContactList extends StatelessWidget {
  const MyContactList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> Names = ["Aya Shawky","Ahmed Ali","Sara Mahmoud","Omar Hassan","Mona Adel","Hana Karim"];
    List<String>Phones = ["+2001001234567","+201112223334","+201223344556","+201334455667","+201445566778","+201556677889"];
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact List"),
        centerTitle: true,
      ),
      body: ListView.separated(
        
        itemBuilder: (context, index) {
        return ListTile(
           leading: CircleAvatar(child: Text("${Names[index][0]}"),),
           title: Text("${Names[index]}"),
           subtitle: Text("${Phones[index]}"),
           trailing: Icon(Icons.phone),
        );
      }, separatorBuilder: (context, index) {
           return Divider();
      }, itemCount: 6),
    );
  }
}