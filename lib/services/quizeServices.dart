import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:ppu_attendance/classes/attendance.dart';
import 'package:ppu_attendance/classes/attendanceStudents.dart';
import 'package:ppu_attendance/classes/quize.dart';

class QuizeServices {
  final int? courseNo;
  final int? sectionNo;
  final int? lecturerId;

  QuizeServices({
    this.courseNo,
    this.sectionNo,
    this.lecturerId,
  });

  Future<List<Quize>> get quize async {
    var res = await http.get(Uri.parse("http://10.0.2.2:3000/quizzes/"));

    final myList = <Quize>[];
    if (res.statusCode == 200) {
      try {
        dynamic jsonList = json.decode(res.body);
        if (jsonList is! List) throw FormatException();
        for (dynamic item in jsonList) {
          if (item is! Map<String, dynamic>) continue;
          final attendance = Quize.fromJson(item);
          myList.add(attendance);
        }
      } on FormatException {
        print('JSON is in the wrong format');
      }
      print(myList);
      return myList;
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<Quize> get quizeBylecturer async {
    var res = await http
        .get(Uri.parse("http://10.0.2.2:3000/quize/${this.lecturerId}"));

    final myList = <Quize>[];

    if (res.statusCode == 200) {
      try {
        dynamic jsonList = json.decode(res.body);
        if (jsonList is! List) throw FormatException();
        for (dynamic item in jsonList) {
          if (item is! Map<String, dynamic>) continue;
          final attendance = Quize.fromJson(item);
          myList.add(attendance);
        }
      } on FormatException {
        print('JSON is in the wrong format');
      }
      print(myList);
      return myList.first;
    } else {
      throw Exception('Failed to load Quize');
    }
  }

  Future<int?> createQuize(Quize quize) async {
    final response = await http.post(
      Uri.parse('http://10.0.2.2:3000/quize/add'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(quize.toJson()),
    );

    if (response.statusCode == 200) {
      var res =
          await http.get(Uri.parse("http://10.0.2.2:3000/quize/last"));
      final myList = <Quize>[];
      if (res.statusCode == 200) {
        try {
          dynamic jsonList = json.decode(res.body);
          if (jsonList is! List) throw FormatException();
          for (dynamic item in jsonList) {
            if (item is! Map<String, dynamic>) continue;
            final quize = Quize.fromJson(item);
            myList.add(quize);
          }
        } on FormatException {
          print('JSON is in the wrong format');
        }
        print(myList);
        return myList.first.id;
      } else {
        throw Exception('Failed to load Quize');
      }
    } else {
      print(response.body);
      throw Exception('Failed to create Quize.');
    }
  }

// /quize/last
  Future<String> createQuizeStudents(List<Map<String, dynamic>> quizeStudent) async {
   
    final response = await http.post(
      Uri.parse('http://10.0.2.2:3000/studentsQuize/add'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(quizeStudent),
    );

    if (response.statusCode == 200) {
      return "Done";
    } else {
      print(response.body);
      throw Exception('Failed to create Qize.');
    }
  }
}
