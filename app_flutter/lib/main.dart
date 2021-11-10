import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swiggy/pages/home_page/home_page.dart';
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
          builder: (BuildContext context) => GetMaterialApp(
            theme: ThemeProvider.themeOf(context).data,
            debugShowCheckedModeBanner: false,
            home: HomePage(),

            /// To Debug your app run this line in terminal
            /// [$ flutter run --no-sound-null-safety]
          ),
        ),
      ),
    );
  }
}
