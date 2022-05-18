import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppu_attendance/components/attendanceComponent/allCoursesAttendance.dart';
import 'package:ppu_attendance/components/coursesList.dart';
import 'package:ppu_attendance/components/noteComponent/noteList.dart';
import 'package:ppu_attendance/components/profilePage.dart';
import 'package:ppu_attendance/components/quizeComponent/allCoursesQuizzes.dart';
import 'package:ppu_attendance/components/sendEmail.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color:  Color(0xff622545)),
              accountName: Text(
                "Pinkesh Darji",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "pinkesh.earth@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: FlutterLogo(),
              arrowColor: Color(0xff622545),
              onDetailsPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
            ListTile(
              title: Center(
                child: Text(
                  'Courses',
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff622545),
                  ),
                ),
              ),
              onTap: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CoursesList()),
                );
              },
            ),
            ListTile(
              title: Center(
                child: Text(
                  'Attendance',
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff622545),
                  ),
                ),
              ),
              onTap: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AllCoursesAttendance()),
                );
              },
            ),
            ListTile(
              title: Center(
                child: Text(
                  'Quizzes',
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff622545),
                  ),
                ),
              ),
              onTap: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AllCoursesQuizzez()),
                );
              },
            ),
            
            ListTile(
              title: Center(
                  child: Text(
                'My Note',
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff622545),
                ),
              )),
              onTap: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NoteList()),
                );
              },
            ),
            ListTile(
              title: Center(
                  child: Text(
                'Send Email',
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff622545),
                ),
              )),
              onTap: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SendEmail()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
