import 'package:flutter/material.dart';
import 'ui/NavigationBar/navigation.dart';
import 'pages/IwiHub/iwi_hub_home_page.dart';

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
          backgroundColor: Colors.white,
          title: const Text('Iwi Hub'),
          centerTitle: true,
        ),
        body: IwiHubHomePage(),
        bottomNavigationBar: MainNavigation(),
      ),
    );
  }
}
