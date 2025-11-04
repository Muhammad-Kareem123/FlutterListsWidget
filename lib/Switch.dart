import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({super.key});

  @override
  State<MySwitch> createState() => __MySwitchStateState();
}

class __MySwitchStateState extends State<MySwitch> {
  bool IsOn = false;
  String text = "InActive"; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: Column(
    children: [
      Switch(value: IsOn, onChanged: (bool value){
          setState(() {
             IsOn = value;
           
           
      
          });
          
        },activeColor: Colors.red,activeThumbColor: Colors.lightGreen,
        
        ),
        Text(IsOn?"On":"Off")
    ],
  ),
    
       
    );
  }
}