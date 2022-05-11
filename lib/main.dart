import 'package:flutter/material.dart';

import 'components/homePage.dart';
import 'components/takeStudents.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff606164),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: const Color(0xff622545), // Button color
            onPrimary: Colors.white, // Text color
          ),
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.white,
          onPrimary: const Color(0xff622545),
        ),
      ),
      home: HomePage(),
    );
  }
}
