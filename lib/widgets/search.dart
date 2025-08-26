import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 242, 243, 247),
        border: BoxBorder.all(color: const Color.fromARGB(255, 224, 220, 220)),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 50,
      width: double.infinity,
      child: TextField(
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: 'Search...',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(12),
        ),
      ),
    );
  }
}
