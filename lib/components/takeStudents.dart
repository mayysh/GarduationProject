import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TakeStudents extends StatefulWidget {
  TakeStudents({Key? key}) : super(key: key);

  @override
  State<TakeStudents> createState() => TtakeStudentsState();
}

class TtakeStudentsState extends State<TakeStudents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Students Attendance",
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
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(color: Colors.grey),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "1-Jan-22",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff622545),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                Text(
                  "Flutter",
                  style: TextStyle(
                    fontSize: 26,
                    color: Color(0xff622545),
                  ),
                ),
              ],
            ),
          ),
          ///////////////////////////////
          ///
          ///
         
          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),

          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),

          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),

          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),

          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),

          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),
          Card(
            child: ListTile(title: Text("Assel"),),
          ),

          Card(
            child: ListTile(title: Text("Assel"),),
          ),
        ],
      ),
    );
  }
}
