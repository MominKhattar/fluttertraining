import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter Catalog'),
      ),
      body: Center(
        child: Container(
          child: Text('Hello world Welcome to Flutter'),
        ),
      ),
    );
  }
}
