import 'package:books_application_germanbarrera/domain/entities/book.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        context.go('/villains/${book.id}');
      },
      title: Text(
        book.title,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
      subtitle: Text(
        book.publisher,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
      trailing: const Icon(
        Icons.keyboard_arrow_right_rounded,
        color: Colors.white,
        size: 38,
      ),
    );
  }
}
