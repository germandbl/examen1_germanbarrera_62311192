import 'dart:convert';

import 'package:books_application_germanbarrera/domain/entities/book.dart';
import 'package:books_application_germanbarrera/domain/repositories/books_repository.dart';
import 'package:flutter/services.dart';



class BooksRepositoryImpl implements BooksRepository {
  final path = '../../infrastructure/data/data.json';

  @override
  Future<Book> getBookById(int id) {
     // TODO: implement getBooks
    throw UnimplementedError();
  }

  @override
  Future<List<Book>> getBooks() async {
    final String response = await rootBundle.loadString(path);
    final data = json.decode(response);
    return data['data'];
  }

}