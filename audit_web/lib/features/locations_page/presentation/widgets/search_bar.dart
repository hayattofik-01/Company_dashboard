import 'package:flutter/material.dart';

class SearchInfo extends StatelessWidget {
  const SearchInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: TextField(
        decoration: InputDecoration(
          labelText: 'search...', // Placeholder text for the input field
          prefixIcon: Icon(Icons.search), // Icon displayed at the beginning of the input field
          border: InputBorder.none, // Removes the border around the input field
        ),
      ),
    );
  }
}