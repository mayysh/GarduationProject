import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppu_attendance/components/attendanceComponent/updateTotalAttendanc.dart';
import 'package:ppu_attendance/components/drawer.dart';
import 'package:ppu_attendance/components/quizeComponent/updateQuize.dart';

class StudentsAttendance extends StatefulWidget {
  StudentsAttendance({Key? key}) : super(key: key);

  @override
  State<StudentsAttendance> createState() => TStudentsAttendanceState();
}

class TStudentsAttendanceState extends State<StudentsAttendance> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter / Attendance",
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
          SizedBox(height: 15),
          Container(
            height: 70,
            alignment: Alignment.center,
            child: Card(
              elevation: 0,
              child: ListTile(
                leading: Text(
                  '1',
                  style: GoogleFonts.roboto(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
                title: Text(
                  "Assel",
                  style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: Color(0xff622545),
                  ),
                ),
                trailing: Container(
                  height: 40,
                  width: 40,
                  color: Colors.grey.shade50,
                  alignment: Alignment.center,
                  child: Text(
                    '40',
                    style: GoogleFonts.roboto(
                      fontSize: 14.0,
                      color: Colors.blue.shade700,
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
                leading: Text(
                  '1',
                  style: GoogleFonts.roboto(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
                title: Text(
                  "Assel",
                  style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: Color(0xff622545),
                  ),
                ),
                trailing: Container(
                  height: 40,
                  width: 40,
                  color: Colors.grey.shade50,
                  alignment: Alignment.center,
                  child: Text(
                    '40',
                    style: GoogleFonts.roboto(
                      fontSize: 14.0,
                      color: Colors.blue.shade700,
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
                leading: Text(
                  '1',
                  style: GoogleFonts.roboto(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
                title: Text(
                  "Assel",
                  style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: Color(0xff622545),
                  ),
                ),
                trailing: Container(
                  height: 40,
                  width: 40,
                  color: Colors.grey.shade50,
                  alignment: Alignment.center,
                  child: Text(
                    '40',
                    style: GoogleFonts.roboto(
                      fontSize: 14.0,
                      color: Colors.blue.shade700,
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
                leading: Text(
                  '1',
                  style: GoogleFonts.roboto(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
                title: Text(
                  "Assel",
                  style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: Color(0xff622545),
                  ),
                ),
                trailing: Container(
                  height: 40,
                  width: 40,
                  color: Colors.grey.shade50,
                  alignment: Alignment.center,
                  child: Text(
                    '40',
                    style: GoogleFonts.roboto(
                      fontSize: 14.0,
                      color: Colors.blue.shade700,
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
                leading: Text(
                  '1',
                  style: GoogleFonts.roboto(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
                title: Text(
                  "Assel",
                  style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: Color(0xff622545),
                  ),
                ),
                trailing: Container(
                  height: 40,
                  width: 40,
                  color: Colors.grey.shade50,
                  alignment: Alignment.center,
                  child: Text(
                    '40',
                    style: GoogleFonts.roboto(
                      fontSize: 14.0,
                      color: Colors.blue.shade700,
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
                leading: Text(
                  '1',
                  style: GoogleFonts.roboto(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
                title: Text(
                  "Assel",
                  style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: Color(0xff622545),
                  ),
                ),
                trailing: Container(
                  height: 40,
                  width: 40,
                  color: Colors.grey.shade50,
                  alignment: Alignment.center,
                  child: Text(
                    '40',
                    style: GoogleFonts.roboto(
                      fontSize: 14.0,
                      color: Colors.blue.shade700,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UpdateTotalAttendance()),
                  );
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}
