import 'dart:convert';

class Books {
  Books({
    required this.idBook,
    required this.idAuthor,
    required this.idCategory,
    required this.idEditorial,
    required this.title,
    required this.stateBook,
    required this.commentBook,
    required this.imageBook,
  });

  String idBook;
  String idAuthor;
  String idCategory;
  String idEditorial;
  String title;
  String stateBook;
  String commentBook;
  String imageBook;

  factory Books.fromJson(String str) => Books.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Books.fromMap(Map<String, dynamic> json) => Books(
        idBook: json["id_book"],
        idAuthor: json["id_author"],
        idCategory: json["id_category"],
        idEditorial: json["id_editorial"],
        title: json["title"],
        stateBook: json["state_book"],
        commentBook: json["comment_book"],
        imageBook: json["image_book"],
      );

  Map<String, dynamic> toMap() => {
        "id_book": idBook,
        "id_author": idAuthor,
        "id_category": idCategory,
        "id_editorial": idEditorial,
        "title": title,
        "state_book": stateBook,
        "comment_book": commentBook,
        "image_book": imageBook,
      };
}
