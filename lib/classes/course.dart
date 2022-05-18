
class Course {
  int? courseNo;
  int sectionNo;
  int capacity;
  int instructorNo;
  int droupSectionId;
 

  Course({
    this.courseNo,
    required this.sectionNo,
    required this.capacity,
    required this.instructorNo,
    required this.droupSectionId,
  });

 // named constructor
  Course.fromJson(Map<String, dynamic> json)
      : courseNo = json['courseNo'],
        sectionNo = json['sectionNo'],
        capacity = json['capacity'],
        instructorNo = json['instructorNo'],
        droupSectionId = json['droupSectionId'];

  // method
  Map<String, dynamic> toJson() {
    return {
      'courseNo': courseNo,
      'sectionNo': sectionNo,
      'capacity': capacity,
      'instructorNo': instructorNo,
      'droupSectionId': droupSectionId,
    };
  }
}
