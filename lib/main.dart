import 'package:flutter/material.dart';
import 'package:new_application_challenge/ContactList.dart';
import 'package:new_application_challenge/CustomWidget.dart';
import 'package:new_application_challenge/Form.dart';
import 'package:new_application_challenge/GridView.dart';
import 'package:new_application_challenge/ListViewBuilder.dart';
import 'package:new_application_challenge/StateFulWid.dart';
import 'package:new_application_challenge/Switch.dart';
import 'package:new_application_challenge/TextField.dart';
import 'package:new_application_challenge/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
 
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MySwitch(),
    );
  }
}

