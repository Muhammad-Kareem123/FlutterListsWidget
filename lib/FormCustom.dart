 import 'package:flutter/material.dart';

class MyCustomTextFieldWidget extends StatelessWidget {
   MyCustomTextFieldWidget({super.key, required this.iconData, required this.Label, required this.controller,this.hint,required this.Validator, this.obsecure});
   final IconData iconData;
   final String Label;
   final String? Function(String?)Validator;
   final TextEditingController controller;
  final String? hint;
   final bool? obsecure;
   
  @override
  Widget build(BuildContext context) {
    return 
     Container(
      
      margin: EdgeInsets.all(15),
        child: TextFormField(
          validator: Validator,
          controller:controller ,
          
          decoration: InputDecoration(
           
            label: Text("$Label"),
            filled: true,
            fillColor: Colors.white,
            
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            
            ),
            hint: Text("$hint"),
            prefixIcon: Icon(iconData)
          
          ),
        ),
      
    );
  }
}