import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppu_attendance/components/attendanceComponent/studentsAttendance.dart';
import 'package:ppu_attendance/components/drawer.dart';

class AllCoursesAttendance extends StatefulWidget {
  AllCoursesAttendance({Key? key}) : super(key: key);

  @override
  State<AllCoursesAttendance> createState() => TAllCoursesAttendanceState();
}

class TAllCoursesAttendanceState extends State<AllCoursesAttendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "All Courses Attendance",
          style: GoogleFonts.roboto(
              // fontSize: 60,
              ),
          // style: GoogleFonts.lato(),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/ppu-logo.png",
          ),
        ),
      ),
      endDrawer: DrawerPage(),
      body: ListView(
        children: [
          Container(
            height: 70,
            alignment: Alignment.center,
            child: Card(
              elevation: 0,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StudentsAttendance()),
                  );
                },
                leading: Text('1'),
                title: Text(
                  "Flutter",
                  style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: Color(0xff622545),
                  ),
                ),
                subtitle: Text("Section : 1"),
                trailing: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Text(
                    "Student :3",
                    style: GoogleFonts.roboto(
                      fontSize: 18.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 70,
            alignment: Alignment.center,
            child: Card(
              elevation: 0,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StudentsAttendance()),
                  );
                },
                leading: Text('1'),
                title: Text(
                  "Java",
                  style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: Color(0xff622545),
                  ),
                ),
                subtitle: Text("Section : 1"),
                trailing: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Text(
                    "Student :3",
                    style: GoogleFonts.roboto(
                      fontSize: 18.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 70,
            alignment: Alignment.center,
            child: Card(
              elevation: 0,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StudentsAttendance()),
                  );
                },
                leading: Text('1'),
                title: Text(
                  "Node Js/Anguler",
                  style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: Color(0xff622545),
                  ),
                ),
               subtitle: Text("Section : 1"),
                trailing: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Text(
                    "Student :3",
                    style: GoogleFonts.roboto(
                      fontSize: 18.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 70,
            alignment: Alignment.center,
            child: Card(
              elevation: 0,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StudentsAttendance()),
                  );
                },
                leading: Text('1'),
                title: Text(
                  "Web",
                  style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: Color(0xff622545),
                  ),
                ),
                subtitle: Text("Section : 1"),
                trailing: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Text(
                    "Student :3",
                    style: GoogleFonts.roboto(
                      fontSize: 18.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
