import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppu_attendance/classes/course.dart';
import 'package:ppu_attendance/components/attendanceComponent/studentsAttendance.dart';
import 'package:ppu_attendance/components/drawer.dart';
import 'package:ppu_attendance/services/apiServices.dart';

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
      body: FutureBuilder<List<Course>>(
        future: APIServices().homeData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Course>? courses = snapshot.data;
            return ListView.builder(
              itemCount: courses!.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 70,
                  alignment: Alignment.center,
                  child: Card(
                    elevation: 0,
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StudentsAttendance()),
                        );
                      },
                      leading: Icon(Icons.insert_drive_file_rounded),
                      title: Text(
                        courses[index].courseName,
                        style: GoogleFonts.roboto(
                          fontSize: 18.0,
                          color: Color(0xff622545),
                        ),
                      ),
                      subtitle: Text("Section : ${courses[index].sectionNo}"),
                      trailing: Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Text(
                          "Student :${courses[index].capacity}",
                          style: GoogleFonts.roboto(
                            fontSize: 18.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          // By default, show a loading spinner.
          return const CircularProgressIndicator();
        },

        // return ListView(
        //   children: [
        //     Container(
        //       height: 70,
        //       alignment: Alignment.center,
        //       child: Card(
        //         elevation: 0,
        //         child: ListTile(
        //           onTap: () {
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(builder: (context) => StudentsAttendance()),
        //             );
        //           },
        //           leading: Text('1'),
        //           title: Text(
        //             "Flutter",
        //             style: GoogleFonts.roboto(
        //               fontSize: 18.0,
        //               color: Color(0xff622545),
        //             ),
        //           ),
        //           subtitle: Text("Section : 1"),
        //           trailing: Container(
        //             margin: EdgeInsets.only(right: 20),
        //             child: Text(
        //               "Student :3",
        //               style: GoogleFonts.roboto(
        //                 fontSize: 18.0,
        //                 color: Colors.grey,
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //     Container(
        //       height: 70,
        //       alignment: Alignment.center,
        //       child: Card(
        //         elevation: 0,
        //         child: ListTile(
        //           onTap: () {
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(builder: (context) => StudentsAttendance()),
        //             );
        //           },
        //           leading: Text('1'),
        //           title: Text(
        //             "Java",
        //             style: GoogleFonts.roboto(
        //               fontSize: 18.0,
        //               color: Color(0xff622545),
        //             ),
        //           ),
        //           subtitle: Text("Section : 1"),
        //           trailing: Container(
        //             margin: EdgeInsets.only(right: 20),
        //             child: Text(
        //               "Student :3",
        //               style: GoogleFonts.roboto(
        //                 fontSize: 18.0,
        //                 color: Colors.grey,
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //     Container(
        //       height: 70,
        //       alignment: Alignment.center,
        //       child: Card(
        //         elevation: 0,
        //         child: ListTile(
        //           onTap: () {
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(builder: (context) => StudentsAttendance()),
        //             );
        //           },
        //           leading: Text('1'),
        //           title: Text(
        //             "Node Js/Anguler",
        //             style: GoogleFonts.roboto(
        //               fontSize: 18.0,
        //               color: Color(0xff622545),
        //             ),
        //           ),
        //          subtitle: Text("Section : 1"),
        //           trailing: Container(
        //             margin: EdgeInsets.only(right: 20),
        //             child: Text(
        //               "Student :3",
        //               style: GoogleFonts.roboto(
        //                 fontSize: 18.0,
        //                 color: Colors.grey,
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //     Container(
        //       height: 70,
        //       alignment: Alignment.center,
        //       child: Card(
        //         elevation: 0,
        //         child: ListTile(
        //           onTap: () {
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(builder: (context) => StudentsAttendance()),
        //             );
        //           },
        //           leading: Text('1'),
        //           title: Text(
        //             "Web",
        //             style: GoogleFonts.roboto(
        //               fontSize: 18.0,
        //               color: Color(0xff622545),
        //             ),
        //           ),
        //           subtitle: Text("Section : 1"),
        //           trailing: Container(
        //             margin: EdgeInsets.only(right: 20),
        //             child: Text(
        //               "Student :3",
        //               style: GoogleFonts.roboto(
        //                 fontSize: 18.0,
        //                 color: Colors.grey,
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // );

        // }
      ),
    );
  }
}
