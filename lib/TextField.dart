import 'package:flutter/material.dart';

class FieldWidget extends StatelessWidget {
   FieldWidget({super.key});
  final searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
          child: 
           TextField(
            controller: searchcontroller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              filled: true,
              fillColor: Colors.white,
              hint: Text("E,g Cars"),
              label: Text("Search"),
             prefixIcon: Icon(Icons.search)
            ),
          ),
          ),
          ElevatedButton(onPressed: (){
            print(searchcontroller.text);
            searchcontroller.clear();
          }, child: Text("data"))
        ],
      ),
    );
  }
}