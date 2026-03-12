import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom-colors.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({super.key, 
  required this.category,
  this.isSelected = false,
  required this.onPressed});

  final String category;
  final bool isSelected;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: isSelected ? CustomColors.customSwatchColor : Colors.transparent
          ),
        
          child: Text(
            category,
            style: TextStyle(
              color: isSelected ? Colors.white : CustomColors.customContrastColor,
              fontWeight: FontWeight.bold,   
              fontSize: isSelected ? 16 : 14,
              ),
          ),
        ),
      ),
    );
  }
}
