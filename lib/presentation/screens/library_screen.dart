import 'package:books_application_germanbarrera/application/repositories/books_repository_impl.dart';
import 'package:books_application_germanbarrera/domain/entities/book.dart';
import 'package:books_application_germanbarrera/presentation/widgets/book_card.dart';
import 'package:flutter/material.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  List<Book> books = [];

  Future<void> _cargarDatos() async {
    final booksResponse = await BooksRepositoryImpl().getBooks();
    setState(() {
      books = booksResponse.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    _cargarDatos();

    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade700,
        title: const Text('Lista de libros',
            style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return BookCard(book: book);
        },
      ),
    );
  }
}
