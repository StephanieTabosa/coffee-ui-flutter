import 'package:flutter/material.dart';

class CoffeeName extends StatelessWidget {
  final String name;
  final bool isSelected;
  final VoidCallback onTap;

  const CoffeeName(
      {required this.name,
      required this.isSelected,
      required this.onTap,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 24.0),
        child: Text(
          name,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.orange : Colors.white),
        ),
      ),
    );
  }
}
