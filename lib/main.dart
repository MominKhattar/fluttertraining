import 'package:flutter/material.dart';
import 'package:fluttertraining/pages/login.dart';
import 'pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils/routes.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      //for changing theme

      themeMode: ThemeMode.light,

      //for changing light theme

      theme: ThemeData(

        fontFamily: GoogleFonts.lato().fontFamily,
        primarySwatch: Colors.purple,
      ),

      //for changing dark theme data


      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),


      initialRoute: '/login',
      routes:{
        MyRoutes.homeRoute : (context)=> HomePage(),
        MyRoutes.loginRoute : (context)=>LoginPage(),
      }

    );
  }
}


