import 'package:flutter/material.dart';
import 'package:swiggy/pages/profile_page/profile_page.dart';
import 'package:theme_provider/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      child: ThemeConsumer(
        child: Builder(
          builder: (BuildContext context) => MaterialApp(
            theme: ThemeProvider.themeOf(context).data,
            home: const ProfilePage(),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}