class Attendance {
  int? id;
  int sectionId;
  int studentID;
  int lecturerId;
  bool absence;
  Attendance({
    this.id,
    required this.sectionId,
    required this.studentID,
    required this.lecturerId,
    required this.absence,
  });

  // named constructor
  Attendance.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        sectionId = json['sectionId'],
        studentID = json['studentID'],
        lecturerId = json['lecturerId'],
        absence = json['absence'];

  // method
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'sectionId': sectionId,
      'studentID': studentID,
      'lecturerId': lecturerId,
      'absence': absence,
    };
  }
}
