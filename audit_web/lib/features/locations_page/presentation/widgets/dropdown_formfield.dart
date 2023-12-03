import 'package:flutter/material.dart';

class DropdownFormField extends StatelessWidget {
  final String hintText;
  final List<String> items;

  const DropdownFormField({Key? key, required this.hintText, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: DropdownButtonHideUnderline(
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none,
            ),
            items: items.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              if (newValue != null) {
                // Handle value change
              }
            },
          ),
        ),
      ),
    );
  }
}