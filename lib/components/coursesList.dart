import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppu_attendance/components/drawer.dart';
import 'package:ppu_attendance/components/noteComponent/addNote.dart';
import 'package:ppu_attendance/components/noteComponent/updateNote.dart';

class CoursesList extends StatefulWidget {
  CoursesList({Key? key}) : super(key: key);

  @override
  State<CoursesList> createState() => TCoursesListState();
}

class TCoursesListState extends State<CoursesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Courses List",
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
            padding: EdgeInsets.only(top: 10, bottom: 10),
            alignment: Alignment.center,
            child: Card(
              elevation: 0,
              child: ListTile(
                leading: Icon(Icons.hotel_class),
                title: Text(
                  "Flutter",
                  style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: Color(0xff622545),
                  ),
                ),
                subtitle: Text(
                    "Sunday / Tuesday / Thuersday"),
                trailing: Column(children: [
                  Text("C220",
                  style: GoogleFonts.roboto(
                    fontSize: 16.0,
                    color: Color(0xff622545),
                  ),),
                  SizedBox(height: 15,),
                  Text("80:00",style: GoogleFonts.roboto(
                    color: Color(0xff622545),
                  ),),
                ],),
              ),
            ),
          ),
           Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            alignment: Alignment.center,
            child: Card(
              elevation: 0,
              child: ListTile(
                leading: Icon(Icons.hotel_class),
                title: Text(
                  "Web",
                  style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: Color(0xff622545),
                  ),
                ),
                subtitle: Text(
                    "Sunday / Tuesday / Thuersday"),
                trailing: Column(children: [
                  Text("C220",
                  style: GoogleFonts.roboto(
                    fontSize: 16.0,
                    color: Color(0xff622545),
                  ),),
                  SizedBox(height: 15,),
                  Text("10:00",style: GoogleFonts.roboto(
                    color: Color(0xff622545),
                  ),),
                ],),
              ),
            ),
          ),
           Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            alignment: Alignment.center,
            child: Card(
              elevation: 0,
              child: ListTile(
                leading: Icon(Icons.hotel_class),
                title: Text(
                  "Node JS/Angular",
                  style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: Color(0xff622545),
                  ),
                ),
                subtitle: Text(
                    "Sunday / Tuesday / Thuersday"),
                trailing: Column(children: [
                  Text("C220",
                  style: GoogleFonts.roboto(
                    fontSize: 16.0,
                    color: Color(0xff622545),
                  ),),
                  SizedBox(height: 15,),
                  Text("14:00",style: GoogleFonts.roboto(
                    color: Color(0xff622545),
                  ),),
                ],),
              ),
            ),
          ),
          
        ],
      ),
      
    );
  }
}
