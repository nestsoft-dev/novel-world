import 'package:flutter/material.dart';

class GenresCard extends StatelessWidget {
  const GenresCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Fiction'),
        ),
      ),
    );
  }
}
