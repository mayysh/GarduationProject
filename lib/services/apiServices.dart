import 'package:http/http.dart' as http;
import 'dart:convert';

import '../classes/attendance.dart';
import '../classes/building.dart';
import '../classes/course.dart';
import '../classes/hall.dart';
import '../classes/lecturer.dart';
import '../classes/sectionsdates.dart';
import '../classes/student.dart';
import '../classes/time.dart';
import '../classes/days.dart';

class APIServices {


  Future<List<Day>> get days  async {
    var res = await http.get(Uri.parse("http://10.0.2.2:3000/days"));

    final myList = <Day>[];
    if (res.statusCode == 200) {
      try {
        dynamic jsonList = json.decode(res.body);
        if (jsonList is! List) throw FormatException();
        for (dynamic item in jsonList) {
          if (item is! Map<String, dynamic>) continue;
          final day = Day.fromJson(item);
          myList.add(day);
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

  Future<List<Time>> get times  async {
    var res = await http.get(Uri.parse("http://10.0.2.2:3000/times"));

    final myList = <Time>[];
    if (res.statusCode == 200) {
      try {
        dynamic jsonList = json.decode(res.body);
        if (jsonList is! List) throw FormatException();
        for (dynamic item in jsonList) {
          if (item is! Map<String, dynamic>) continue;
          final time = Time.fromJson(item);
          myList.add(time);
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

   Future<List<Attendance>> get attendances  async {
    var res = await http.get(Uri.parse("http://10.0.2.2:3000/attendances"));

    final myList = <Attendance>[];
    if (res.statusCode == 200) {
      try {
        dynamic jsonList = json.decode(res.body);
        if (jsonList is! List) throw FormatException();
        for (dynamic item in jsonList) {
          if (item is! Map<String, dynamic>) continue;
          final attendance = Attendance.fromJson(item);
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
   Future<List<Building>> get building  async {
    var res = await http.get(Uri.parse("http://10.0.2.2:3000/building"));

    final myList = <Building>[];
    if (res.statusCode == 200) {
      try {
        dynamic jsonList = json.decode(res.body);
        if (jsonList is! List) throw FormatException();
        for (dynamic item in jsonList) {
          if (item is! Map<String, dynamic>) continue;
          final building = Building.fromJson(item);
          myList.add(building);
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
   Future<List<Course>> get courses  async {
    var res = await http.get(Uri.parse("http://10.0.2.2:3000/courses"));

    final myList = <Course>[];
    if (res.statusCode == 200) {
      try {
        dynamic jsonList = json.decode(res.body);
        if (jsonList is! List) throw FormatException();
        for (dynamic item in jsonList) {
          if (item is! Map<String, dynamic>) continue;
          final course = Course.fromJson(item);
          myList.add(course);
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
   Future<List<Hall>> get halls  async {
    var res = await http.get(Uri.parse("http://10.0.2.2:3000/halls"));

    final myList = <Hall>[];
    if (res.statusCode == 200) {
      try {
        dynamic jsonList = json.decode(res.body);
        if (jsonList is! List) throw FormatException();
        for (dynamic item in jsonList) {
          if (item is! Map<String, dynamic>) continue;
          final hall = Hall.fromJson(item);
          myList.add(hall);
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
   Future<List<Lecturer>> get lecturers  async {
    var res = await http.get(Uri.parse("http://10.0.2.2:3000/lecturers"));

    final myList = <Lecturer>[];
    if (res.statusCode == 200) {
      try {
        dynamic jsonList = json.decode(res.body);
        if (jsonList is! List) throw FormatException();
        for (dynamic item in jsonList) {
          if (item is! Map<String, dynamic>) continue;
          final lecturer = Lecturer.fromJson(item);
          myList.add(lecturer);
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
   Future<List<Student>> get students  async {
    var res = await http.get(Uri.parse("http://10.0.2.2:3000/students"));

    final myList = <Student>[];
    if (res.statusCode == 200) {
      try {
        dynamic jsonList = json.decode(res.body);
        if (jsonList is! List) throw FormatException();
        for (dynamic item in jsonList) {
          if (item is! Map<String, dynamic>) continue;
          final student = Student.fromJson(item);
          myList.add(student);
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
  Future<List<SectionsDates>> get sectionsdates  async {
    var res = await http.get(Uri.parse("http://10.0.2.2:3000/sectionsdates"));

    final myList = <SectionsDates>[];
    if (res.statusCode == 200) {
      try {
        dynamic jsonList = json.decode(res.body);
        if (jsonList is! List) throw FormatException();
        for (dynamic item in jsonList) {
          if (item is! Map<String, dynamic>) continue;
          final sectionsDates = SectionsDates.fromJson(item);
          myList.add(sectionsDates);
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
}
