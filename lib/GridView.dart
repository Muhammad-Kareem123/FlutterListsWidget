import 'package:flutter/material.dart';
import 'package:new_application_challenge/CustomWidget.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView.builder"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
      
        child: GridView.builder(
          itemCount: 6,
          
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 3,
            childAspectRatio: 1.2,
          
          ),
          itemBuilder: (BuildContext context, int index) {
            return MyCustomWidget(index: index);
          },
        ),
      ),
    );
  }
}
