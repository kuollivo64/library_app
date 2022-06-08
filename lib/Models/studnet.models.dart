import 'dart:convert';

class Students {
  Students({
    required this.idStudent,
    required this.passwordStudent,
    required this.nameStudent,
    required this.dateOfBirth,
    required this.collegeCareer,
    required this.phone,
    required this.mail,
  });

  int idStudent;
  String passwordStudent;
  String nameStudent;
  DateTime dateOfBirth;
  String collegeCareer;
  String phone;
  String mail;

  factory Students.fromJson(String str) => Students.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Students.fromMap(Map<String, dynamic> json) => Students(
        idStudent: json["idStudent"],
        passwordStudent: json["passwordStudent"],
        nameStudent: json["nameStudent"],
        dateOfBirth: DateTime.parse(json["dateOfBirth"]),
        collegeCareer: json["collegeCareer"],
        phone: json["phone"],
        mail: json["mail"],
      );

  Map<String, dynamic> toMap() => {
        "idStudent": idStudent,
        "passwordStudent": passwordStudent,
        "nameStudent": nameStudent,
        "dateOfBirth": dateOfBirth.toIso8601String(),
        "collegeCareer": collegeCareer,
        "phone": phone,
        "mail": mail,
      };
}
