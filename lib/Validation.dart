import 'package:flutter/material.dart';
import 'package:new_application_challenge/Form.dart';

class MyValidationWidget extends StatelessWidget {
  const MyValidationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(onPressed: (){
          Navigator.pop(context,MaterialPageRoute(builder: (context)=>MyForm()));
        }, child: Icon(Icons.arrow_back,fill: 1.0,)),
      ),
      body: Center(
        child: Text("Form is valid"),
      ),
    );
  }
}