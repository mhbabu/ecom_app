import 'package:flutter/material.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({super.key});

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Row(
        children: [
          const Icon(Icons.search, size: 30, color: Colors.grey),
          const SizedBox(width: 10),
          Flexible(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search...',
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
          ),
          Container(height: 25, width: 1.5, color: Colors.grey),
          IconButton(
            onPressed: null,
            icon: const Icon(Icons.tune, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
