import 'package:books_application_germanbarrera/presentation/widgets/book_card.dart';
import 'package:flutter/material.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade700,
        title: const Text('Lista de libros', style: TextStyle(color: Colors.white)),
      ),
      body: ListView(
        children: const [
          BookCard(title: 'Titulo libro', publisher: 'Publisher'),
        ],
      ),
    );
  }
}
