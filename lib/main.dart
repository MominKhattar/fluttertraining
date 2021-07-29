import 'package:flutter/material.dart';
import 'package:fluttertraining/pages/login.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      //for changing theme

      themeMode: ThemeMode.light,

      //for changing light theme

      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),

      //for changing dark theme data


      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),


      initialRoute: 'login',
      routes:{
        '/' : (context)=> HomePage(),
        '/login' : (context)=>LoginPage(),
      }

    );
  }
}


