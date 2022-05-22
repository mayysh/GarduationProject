class Note {
  int? id;
  String name;
  String body;
  DateTime day;

  Note({
    this.id,
    required this.name,
    required this.body,
    required this.day,
  });

  // named constructor
  Note.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        body = json['body'],
        day = DateTime.parse(json['day']);

  // method
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'body': body,
      'day': day.toIso8601String(),
    };
  }
}
