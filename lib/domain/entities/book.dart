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

}