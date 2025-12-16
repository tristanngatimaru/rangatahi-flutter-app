import 'package:flutter/material.dart';
import 'ui/NavigationBar/navigation.dart';

void main() {
  runApp(MyApp());
}

//stateless is for a ui element that doesn't have any internal data
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text('flutter is fun'),
        ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(50),
            padding: const EdgeInsets.all(10),
            color: Colors.red,
            height: 100,
            width: 100,
            child: const Text('hi mum'),
          ),
        ),
        bottomNavigationBar: MainNavigation(),
      ),
    );
  }
}
