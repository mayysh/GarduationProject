import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../classes/days.dart';
import '../services/apiServices.dart';

class HomePage1 extends StatefulWidget {
  HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: FutureBuilder<List<Day>>(
        future: APIServices().days,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Day>? days = snapshot.data;
            return ListView.builder(
              itemCount: days!.length,
              itemBuilder: (context, index) {
                return Text("${days[index].aName} -> ${days[index].eName}");
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          // By default, show a loading spinner.
          return const CircularProgressIndicator();
        },
      ),
      // ListView(
      //   children: [
      //     Card(
      //       child: ListTile(
      //         leading: Container(
      //             child: Text(
      //               "C220",
      //               style: TextStyle(
      //                 fontSize: 26,
      //                 color: Color(0xff622545),
      //               ),
      //             )),
      //         title: Text("Flutter",
      //               style: TextStyle(
      //                 fontSize: 24,
      //                 fontWeight: FontWeight.bold,
      //                 color: Color(0xff707070),
      //               ),),
      //         subtitle: Text("08:00 - 08:50",
      //               style: TextStyle(
      //                 fontSize: 18,
      //               ),),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         leading: Container(
      //             child: Text(
      //               "C220",
      //               style: TextStyle(
      //                 fontSize: 26,
      //                 color: Color(0xff622545),
      //               ),
      //             )),
      //         title: Text("Flutter",
      //               style: TextStyle(
      //                 fontSize: 24,
      //                 fontWeight: FontWeight.bold,
      //                 color: Color(0xff707070),
      //               ),),
      //         subtitle: Text("08:00 - 08:50",
      //               style: TextStyle(
      //                 fontSize: 18,
      //               ),),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         leading: Container(
      //             child: Text(
      //               "C220",
      //               style: TextStyle(
      //                 fontSize: 26,
      //                 color: Color(0xff622545),
      //               ),
      //             )),
      //         title: Text("Flutter",
      //               style: TextStyle(
      //                 fontSize: 24,
      //                 fontWeight: FontWeight.bold,
      //                 color: Color(0xff707070),
      //               ),),
      //         subtitle: Text("08:00 - 08:50",
      //               style: TextStyle(
      //                 fontSize: 18,
      //               ),),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         leading: Container(
      //             child: Text(
      //               "C220",
      //               style: TextStyle(
      //                 fontSize: 26,
      //                 color: Color(0xff622545),
      //               ),
      //             )),
      //         title: Text("Flutter",
      //               style: TextStyle(
      //                 fontSize: 24,
      //                 fontWeight: FontWeight.bold,
      //                 color: Color(0xff707070),
      //               ),),
      //         subtitle: Text("08:00 - 08:50",
      //               style: TextStyle(
      //                 fontSize: 18,
      //               ),),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         leading: Container(
      //             child: Text(
      //               "C220",
      //               style: TextStyle(
      //                 fontSize: 26,
      //                 color: Color(0xff622545),
      //               ),
      //             )),
      //         title: Text("Flutter",
      //               style: TextStyle(
      //                 fontSize: 24,
      //                 fontWeight: FontWeight.bold,
      //                 color: Color(0xff707070),
      //               ),),
      //         subtitle: Text("08:00 - 08:50",
      //               style: TextStyle(
      //                 fontSize: 18,
      //               ),),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         leading: Container(
      //             child: Text(
      //               "C220",
      //               style: TextStyle(
      //                 fontSize: 26,
      //                 color: Color(0xff622545),
      //               ),
      //             )),
      //         title: Text("Flutter",
      //               style: TextStyle(
      //                 fontSize: 24,
      //                 fontWeight: FontWeight.bold,
      //                 color: Color(0xff707070),
      //               ),),
      //         subtitle: Text("08:00 - 08:50",
      //               style: TextStyle(
      //                 fontSize: 18,
      //               ),),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         leading: Container(
      //             child: Text(
      //               "C220",
      //               style: TextStyle(
      //                 fontSize: 26,
      //                 color: Color(0xff622545),
      //               ),
      //             )),
      //         title: Text("Flutter",
      //               style: TextStyle(
      //                 fontSize: 24,
      //                 fontWeight: FontWeight.bold,
      //                 color: Color(0xff707070),
      //               ),),
      //         subtitle: Text("08:00 - 08:50",
      //               style: TextStyle(
      //                 fontSize: 18,
      //               ),),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         leading: Container(
      //             child: Text(
      //               "C220",
      //               style: TextStyle(
      //                 fontSize: 26,
      //                 color: Color(0xff622545),
      //               ),
      //             )),
      //         title: Text("Flutter",
      //               style: TextStyle(
      //                 fontSize: 24,
      //                 fontWeight: FontWeight.bold,
      //                 color: Color(0xff707070),
      //               ),),
      //         subtitle: Text("08:00 - 08:50",
      //               style: TextStyle(
      //                 fontSize: 18,
      //               ),),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         leading: Container(
      //             child: Text(
      //               "C220",
      //               style: TextStyle(
      //                 fontSize: 26,
      //                 color: Color(0xff622545),
      //               ),
      //             )),
      //         title: Text("Flutter",
      //               style: TextStyle(
      //                 fontSize: 24,
      //                 fontWeight: FontWeight.bold,
      //                 color: Color(0xff707070),
      //               ),),
      //         subtitle: Text("08:00 - 08:50",
      //               style: TextStyle(
      //                 fontSize: 18,
      //               ),),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         leading: Container(
      //             child: Text(
      //               "C220",
      //               style: TextStyle(
      //                 fontSize: 26,
      //                 color: Color(0xff622545),
      //               ),
      //             )),
      //         title: Text("Flutter",
      //               style: TextStyle(
      //                 fontSize: 24,
      //                 fontWeight: FontWeight.bold,
      //                 color: Color(0xff707070),
      //               ),),
      //         subtitle: Text("08:00 - 08:50",
      //               style: TextStyle(
      //                 fontSize: 18,
      //               ),),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
