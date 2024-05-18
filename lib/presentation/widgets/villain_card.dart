import 'package:flutter/material.dart';

class VillainCard extends StatelessWidget {
  const VillainCard({super.key, required this.name});

  final String? name;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Text(
        name ?? '',
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
