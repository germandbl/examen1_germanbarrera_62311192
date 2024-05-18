import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.title, required this.publisher});

  final String title;
  final String publisher;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
      subtitle: Text(
        publisher,
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
