import 'package:flutter/material.dart';

class SearchInfo  extends StatelessWidget {
  // final TextEditingController controller;
  // final ValueChanged<String>? onChanged;

  const SearchInfo({
    Key? key,
    // required this.controller,
    // this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
    
      child: TextField(
    
        decoration: InputDecoration(
        
          labelText: 'search...',
          prefixIcon: Icon(Icons.search),
          border:InputBorder.none,
        ),
      ),
    );
  }
}