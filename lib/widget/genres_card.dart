import 'package:flutter/material.dart';

class GenresCard extends StatelessWidget {
  final String name;
  const GenresCard({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(name),
        ),
      ),
    );
  }
}
