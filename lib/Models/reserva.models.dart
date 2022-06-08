import 'dart:convert';

class Reserves {
  Reserves({
    required this.idReserve,
    required this.idBook,
    required this.idStudent,
    required this.reservationDate,
  });

  String idReserve;
  String idBook;
  String idStudent;
  String reservationDate;

  factory Reserves.fromJson(String str) => Reserves.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Reserves.fromMap(Map<String, dynamic> json) => Reserves(
        idReserve: json["id_reserve"],
        idBook: json["id_book"],
        idStudent: json["id_student"],
        reservationDate: json["reservation_date"],
      );

  Map<String, dynamic> toMap() => {
        "id_reserve": idReserve,
        "id_book": idBook,
        "id_student": idStudent,
        "reservation_date": reservationDate,
      };
}
