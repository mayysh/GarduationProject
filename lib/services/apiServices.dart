import 'package:http/http.dart' as http;
import '../classes/days.dart';
import 'dart:convert';

import '../classes/time.dart';

class APIServices {
  Future<List<Day>> getPost() async {
    var res = await http.get(Uri.parse("http://10.0.2.2:3000/times"));

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
}
