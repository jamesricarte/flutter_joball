import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController searchController;
  const CustomTextField({super.key, required this.searchController});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: TextField(
        controller: searchController,
        style: const TextStyle(
            fontSize: 18,
            color: Color.fromARGB(255, 113, 113, 113),
            fontWeight: FontWeight.w500),
        decoration: InputDecoration(
            prefixIcon: Container(
                margin: const EdgeInsets.only(left: 20, right: 4),
                child: const Icon(Icons.search, size: 32)),
            prefixIconColor: const Color.fromARGB(255, 113, 113, 113),
            hintText: 'Search Job, Company & Role',
            hintStyle: const TextStyle(
                color: Color.fromARGB(255, 113, 113, 113), fontSize: 18),
            contentPadding: EdgeInsets.symmetric(vertical: 14),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 225, 225, 225), width: 2),
                borderRadius: BorderRadius.circular(14)),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: Color.fromARGB(255, 190, 190, 190), width: 2),
              borderRadius: BorderRadius.circular(14),
            )),
      ),
    );
  }
}
