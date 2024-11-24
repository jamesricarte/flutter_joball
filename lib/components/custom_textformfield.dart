import 'package:flutter/material.dart';

enum TextFieldVariant { normal, password, email }

class CustomTextformfield extends StatefulWidget {
  final TextFieldVariant variant;
  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;
  final EdgeInsetsGeometry? contentPadding;

  const CustomTextformfield({
    super.key,
    this.variant = TextFieldVariant.normal,
    this.validator,
    required this.hintText,
    required this.controller,
    this.contentPadding,
  });

  @override
  State<CustomTextformfield> createState() => _CustomTextformfieldState();
}

bool _isObscured = true;

class _CustomTextformfieldState extends State<CustomTextformfield> {
  @override
  Widget build(BuildContext context) {
    TextFormField textFormFieldVariant;
    switch (widget.variant) {
      case TextFieldVariant.normal:
        textFormFieldVariant = TextFormField(
          style: const TextStyle(color: Colors.white),
          controller: widget.controller,
          keyboardType: TextInputType.text,
          validator: widget.validator,
          decoration: InputDecoration(
            hintText: widget.hintText,
            labelStyle: const TextStyle(color: Colors.grey),
            contentPadding: widget.contentPadding ?? const EdgeInsets.all(16),
            border: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color.fromARGB(255, 53, 53, 53)),
                borderRadius: BorderRadius.circular(8.0)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0)),
            errorBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color.fromARGB(255, 159, 44, 36)),
                borderRadius: BorderRadius.circular(8.0)),
          ),
        );
      case TextFieldVariant.email:
        textFormFieldVariant = TextFormField(
          style: const TextStyle(color: Colors.white),
          controller: widget.controller,
          validator: widget.validator,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: widget.hintText,
            labelStyle: const TextStyle(color: Colors.grey),
            contentPadding: widget.contentPadding ?? const EdgeInsets.all(16),
            border: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color.fromARGB(255, 53, 53, 53)),
                borderRadius: BorderRadius.circular(8.0)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0)),
            errorBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color.fromARGB(255, 159, 44, 36)),
                borderRadius: BorderRadius.circular(8.0)),
          ),
        );
      case TextFieldVariant.password:
        textFormFieldVariant = TextFormField(
          style: const TextStyle(color: Colors.white),
          controller: widget.controller,
          obscureText: _isObscured,
          keyboardType: TextInputType.visiblePassword,
          validator: widget.validator,
          decoration: InputDecoration(
              hintText: widget.hintText,
              labelStyle: const TextStyle(color: Colors.grey),
              contentPadding: widget.contentPadding ?? const EdgeInsets.all(16),
              border: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color.fromARGB(255, 53, 53, 53)),
                  borderRadius: BorderRadius.circular(8.0)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0)),
              errorBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color.fromARGB(255, 159, 44, 36)),
                  borderRadius: BorderRadius.circular(8.0)),
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                  icon: Icon(
                      _isObscured ? Icons.visibility : Icons.visibility_off))),
        );
    }

    return textFormFieldVariant;
  }
}
