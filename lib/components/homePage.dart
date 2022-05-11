import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../classes/days.dart';
import '../services/apiServices.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Future getPost() async {
  //   var url = Uri.parse("http://10.0.2.2:3000/times");
  //   var res = await http.get(url);
  //   var resbody = res.body;
  //   final myList = <Day>[];
  //   try {
  //     dynamic jsonList = json.decode(resbody);
  //     if (jsonList is! List) throw FormatException();
  //     for (dynamic item in jsonList) {
  //       if (item is! Map<String, dynamic>) continue;
  //       final person = Day.fromJson(item);
  //       myList.add(person);
  //     }
  //   } on FormatException {
  //     print('JSON is in the wrong format');
  //   }
  //   print(myList);
  //   return resbody;
  // }

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
        future: APIServices().getPost(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Day>? days = snapshot.data;
            return ListView.builder(
              itemCount: days!.length,
              itemBuilder: (context, index) {
                return Text("${days[index].aName} -> ${days[index].eName}')");
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
