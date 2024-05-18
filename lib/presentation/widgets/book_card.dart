import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.title, required this.publisher});

  final String title;
  final String publisher;

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('Nombre libro'),
      subtitle: Text('Subtitle'),
    );
  }
}