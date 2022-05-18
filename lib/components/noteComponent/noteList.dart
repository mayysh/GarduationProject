import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppu_attendance/components/drawer.dart';
import 'package:ppu_attendance/components/noteComponent/addNote.dart';
import 'package:ppu_attendance/components/noteComponent/updateNote.dart';

class NoteList extends StatefulWidget {
  NoteList({Key? key}) : super(key: key);

  @override
  State<NoteList> createState() => TNoteListState();
}

class TNoteListState extends State<NoteList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notes",
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UpdateNote()),
                  );
                },
                leading: Icon(Icons.notes),
                title: Text(
                  "Flutter",
                  style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: Color(0xff622545),
                  ),
                ),
                subtitle: Text(
                    "Explain to me again why I shouldn't cheat?\" he asked. \"All the others do and nobody ever gets punished for doing so. I should go about being happy losing to cheaters because I know that I don't? That's what you're telling me?"),
                trailing: Text("1-Jan-22"),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            alignment: Alignment.center,
            child: Card(
              elevation: 0,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UpdateNote()),
                  );
                },
                leading: Icon(Icons.notes),
                title: Text(
                  "web",
                  style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: Color(0xff622545),
                  ),
                ),
                subtitle: Text(
                    "Explain to me again why I shouldn't cheat?\" he asked. \"All the others do and nobody ever gets punished for doing so. I should go about being happy losing to cheaters because I know that I don't? That's what you're telling me?"),
                trailing: Text("1-Jan-22"),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            alignment: Alignment.center,
            child: Card(
              elevation: 0,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UpdateNote()),
                  );
                },
                leading: Icon(Icons.notes),
                title: Text(
                  "Flutter",
                  style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: Color(0xff622545),
                  ),
                ),
                subtitle: Text(
                    "Explain to me again why I shouldn't cheat?\" he asked. \"All the others do and nobody ever gets punished for doing so. I should go about being happy losing to cheaters because I know that I don't? That's what you're telling me?"),
                trailing: Text("1-Jan-22"),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddNote()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
