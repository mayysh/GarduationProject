import 'package:flutter/material.dart';
import 'package:ppu_attendance/components/homePage.dart';
import 'package:ppu_attendance/components/profilePage.dart';
import 'package:ppu_attendance/components/sendEmail.dart';

import 'components/noteComponent/addNote.dart';
import 'components/noteComponent/noteList.dart';
import 'components/quizeComponent/allCoursesQuizzes.dart';
import 'components/quizeComponent/quizeList.dart';
import 'components/homePage1.dart';
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
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color(0xff622545),
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.white,
          onPrimary: const Color(0xff622545),
        ),
        backgroundColor: Colors.white
      ),
      home: HomePage(),
    );
  }
}
