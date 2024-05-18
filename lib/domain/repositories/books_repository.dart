import 'package:books_application_germanbarrera/domain/entities/book.dart';

abstract class BooksRepository {
  Future<List<Book>> getBooks();
  Future<List<Book>> getBookById(int id);
}