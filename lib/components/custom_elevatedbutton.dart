import 'package:flutter/material.dart';

enum ElevatedButtonVariant { filled, outlined }

class CustomElevatedButton extends StatelessWidget {
  final ElevatedButtonVariant variant;
  final VoidCallback onPressed;
  final String label;
  final TextStyle? textStyle;

  const CustomElevatedButton({
    super.key,
    this.variant = ElevatedButtonVariant.filled,
    required this.onPressed,
    required this.label,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    ElevatedButton elevatedButtonVariant;

    switch (variant) {
      case ElevatedButtonVariant.filled:
        elevatedButtonVariant = ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          onPressed: onPressed,
          child: Text(
            label,
            style: textStyle,
          ),
        );
      case ElevatedButtonVariant.outlined:
        elevatedButtonVariant = ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              side: const BorderSide(
                  color: Color.fromARGB(255, 31, 31, 31), width: 1)),
          onPressed: onPressed,
          child: Center(
            child: Text(
              label,
              style: textStyle,
            ),
          ),
        );
    }

    return elevatedButtonVariant;
  }
}
