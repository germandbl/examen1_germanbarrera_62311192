import 'villain.dart';

class Book {
    int id;
    int year;
    String title;
    String handle;
    String publisher;
    String isbn;
    int pages;
    List<String> notes;
    DateTime createdAt;
    List<Villain> villains;

    Book({
        required this.id,
        required this.year,
        required this.title,
        required this.handle,
        required this.publisher,
        required this.isbn,
        required this.pages,
        required this.notes,
        required this.createdAt,
        required this.villains,
    });

    factory Book.fromJson(Map<String, dynamic> json) => Book(
        id: json["id"],
        year: json["Year"],
        title: json["Title"],
        handle: json["handle"],
        publisher: json["Publisher"],
        isbn: json["ISBN"],
        pages: json["Pages"],
        notes: List<String>.from(json["Notes"].map((x) => x)),
        createdAt: DateTime.parse(json["created_at"]),
        villains: List<Villain>.from(json["villains"].map((x) => Villain.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "Year": year,
        "Title": title,
        "handle": handle,
        "Publisher": publisher,
        "ISBN": isbn,
        "Pages": pages,
        "Notes": List<dynamic>.from(notes.map((x) => x)),
        "created_at": createdAt.toIso8601String(),
        "villains": List<dynamic>.from(villains.map((x) => x.toJson())),
    };

}