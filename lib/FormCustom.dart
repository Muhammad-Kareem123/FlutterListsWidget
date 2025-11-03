import 'package:flutter/material.dart';

class MyCustomTextFieldWidget extends StatelessWidget {
  const MyCustomTextFieldWidget({super.key, required this.controller, this.label, this.hint, required this.iconData, required this.Validator});
   
   final TextEditingController controller;
   final String? label; 
   final String? hint;
   final IconData iconData;
   final String? Function(String?)Validator;
  @override
  Widget build(BuildContext context) {
    return
    Container(
      margin: EdgeInsets.all(50),
      child:TextFormField(
        controller: controller,
        validator: Validator,
          
        decoration: InputDecoration(
          label: Text("$label"),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),

          ),
          filled: true,
          fillColor: Colors.white30,
          hint: Text("$hint"),
         prefixIcon: Icon(iconData)
        ),
        
      ) ,
      
      );
      
  }
}