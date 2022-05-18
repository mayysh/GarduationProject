import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppu_attendance/components/drawer.dart';
import 'package:ppu_attendance/components/quizeComponent/studentMark.dart';

class QuizeList extends StatefulWidget {
  QuizeList({Key? key}) : super(key: key);

  @override
  State<QuizeList> createState() => TQuizeListState();
}

class TQuizeListState extends State<QuizeList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Quizzes",
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
                    MaterialPageRoute(builder: (context) => StudentsMarks()),
                  );
                },
                leading: Text('1'),
                title: Text(
                  "First Quize",
                  style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: Color(0xff622545),
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
                    MaterialPageRoute(builder: (context) => StudentsMarks()),
                  );
                },
                leading: Text('1'),
                title: Text(
                  "Seconde Quize",
                  style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: Color(0xff622545),
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
                    MaterialPageRoute(builder: (context) => StudentsMarks()),
                  );
                },
                leading: Text('1'),
                title: Text(
                  "Quize 1",
                  style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: Color(0xff622545),
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
                    MaterialPageRoute(builder: (context) => StudentsMarks()),
                  );
                },
                leading: Text('1'),
                title: Text(
                  "Third Quize",
                  style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: Color(0xff622545),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
