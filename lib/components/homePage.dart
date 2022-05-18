import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:ppu_attendance/components/drawer.dart';




class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: DrawerPage(),
      appBar: AppBar(
        
        title: Text(
          "PPU ATTENDANCE",
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
          Card(
            child: ListTile(
              leading: Container(
                  child: Text(
                "C220",
                style: TextStyle(
                  fontSize: 26,
                  color: Color(0xff622545),
                ),
              )),
              title: Text(
                "Flutter",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff707070),
                ),
              ),
              subtitle: Text(
                "08:00 - 08:50",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Container(
                  child: Text(
                "C220",
                style: TextStyle(
                  fontSize: 26,
                  color: Color(0xff622545),
                ),
              )),
              title: Text(
                "Flutter",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff707070),
                ),
              ),
              subtitle: Text(
                "08:00 - 08:50",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Container(
                  child: Text(
                "C220",
                style: TextStyle(
                  fontSize: 26,
                  color: Color(0xff622545),
                ),
              )),
              title: Text(
                "Flutter",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff707070),
                ),
              ),
              subtitle: Text(
                "08:00 - 08:50",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Container(
                  child: Text(
                "C220",
                style: TextStyle(
                  fontSize: 26,
                  color: Color(0xff622545),
                ),
              )),
              title: Text(
                "Flutter",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff707070),
                ),
              ),
              subtitle: Text(
                "08:00 - 08:50",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Container(
                  child: Text(
                "C220",
                style: TextStyle(
                  fontSize: 26,
                  color: Color(0xff622545),
                ),
              )),
              title: Text(
                "Flutter",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff707070),
                ),
              ),
              subtitle: Text(
                "08:00 - 08:50",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Container(
                  child: Text(
                "C220",
                style: TextStyle(
                  fontSize: 26,
                  color: Color(0xff622545),
                ),
              )),
              title: Text(
                "Flutter",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff707070),
                ),
              ),
              subtitle: Text(
                "08:00 - 08:50",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Container(
                  child: Text(
                "C220",
                style: TextStyle(
                  fontSize: 26,
                  color: Color(0xff622545),
                ),
              )),
              title: Text(
                "Flutter",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff707070),
                ),
              ),
              subtitle: Text(
                "08:00 - 08:50",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Container(
                  child: Text(
                "C220",
                style: TextStyle(
                  fontSize: 26,
                  color: Color(0xff622545),
                ),
              )),
              title: Text(
                "Flutter",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff707070),
                ),
              ),
              subtitle: Text(
                "08:00 - 08:50",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Container(
                  child: Text(
                "C220",
                style: TextStyle(
                  fontSize: 26,
                  color: Color(0xff622545),
                ),
              )),
              title: Text(
                "Flutter",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff707070),
                ),
              ),
              subtitle: Text(
                "08:00 - 08:50",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Container(
                  child: Text(
                "C220",
                style: TextStyle(
                  fontSize: 26,
                  color: Color(0xff622545),
                ),
              )),
              title: Text(
                "Flutter",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff707070),
                ),
              ),
              subtitle: Text(
                "08:00 - 08:50",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
