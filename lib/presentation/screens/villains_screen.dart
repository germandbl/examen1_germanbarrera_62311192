import 'package:books_application_germanbarrera/application/repositories/books_repository_impl.dart';
import 'package:books_application_germanbarrera/domain/entities/book.dart';
import 'package:books_application_germanbarrera/presentation/widgets/villain_card.dart';
import 'package:flutter/material.dart';

class VillainsScreen extends StatefulWidget {
  const VillainsScreen({super.key, required this.bookId});
  final int bookId;

  @override
  State<VillainsScreen> createState() => _VillainsScreenState();
}

class _VillainsScreenState extends State<VillainsScreen> {
  Book? book;

  Future<void> _cargarLibro() async {
    final bookResponse = await BooksRepositoryImpl().getBookById(widget.bookId);
    setState(() {
      book = bookResponse;
    });
  }

  @override
  Widget build(BuildContext context) {
    _cargarLibro();

    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade700,
        title: Text('Villanos del libro ${book?.title}',
            style: const TextStyle(color: Colors.white, fontSize: 18)),
      ),
      body: ListView.builder(
        itemCount: book?.villains.length,
        itemBuilder: (context, index) {
          return VillainCard(name: book?.villains[index].name);
        },
      ),
    );
  }
}
