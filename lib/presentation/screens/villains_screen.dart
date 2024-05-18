import 'package:flutter/material.dart';

class VillainsScreen extends StatelessWidget {
  const VillainsScreen({super.key, required this.bookId});
  final int? bookId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Villanos del libro $bookId'),
      ),
    );
  }
}