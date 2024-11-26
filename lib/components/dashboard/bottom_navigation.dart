import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final void Function(int) onTap;
  const CustomBottomNavigationBar({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.business), label: "Companies"),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            radius: 11,
            backgroundColor: Color.fromARGB(255, 109, 109, 109),
          ),
          label: "Profile",
        ),
      ],
      onTap: onTap,
    );
  }
}
