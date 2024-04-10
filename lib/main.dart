import 'package:coreflutter_exam/view/screen/addscreen/addscreen.dart';
import 'package:coreflutter_exam/view/screen/homescreen/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Student_App());
}

class Student_App extends StatelessWidget {
  const Student_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => HomeScreen(),
        '/add':(context) => AddScreen(),
      },
    );
  }
}

