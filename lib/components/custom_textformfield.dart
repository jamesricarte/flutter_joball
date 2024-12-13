import 'package:flutter/material.dart';

enum TextFieldVariant { normal, password, email }

class CustomTextFormField extends StatefulWidget {
  final TextFieldVariant variant;
  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;
  final EdgeInsetsGeometry? contentPadding;

  const CustomTextFormField({
    super.key,
    this.variant = TextFieldVariant.normal,
    this.validator,
    required this.hintText,
    required this.controller,
    this.contentPadding,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

bool _isObscured = true;

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    TextFormField textFormFieldVariant;
    switch (widget.variant) {
      case TextFieldVariant.normal:
        textFormFieldVariant = TextFormField(
          style: const TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 113, 113, 113),
              fontWeight: FontWeight.w500),
          controller: widget.controller,
          keyboardType: TextInputType.text,
          validator: widget.validator,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: const TextStyle(
                color: Color.fromARGB(255, 113, 113, 113), fontSize: 18),
            contentPadding: widget.contentPadding ?? const EdgeInsets.all(16),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 225, 225, 225), width: 2),
                borderRadius: BorderRadius.circular(14)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 190, 190, 190), width: 2),
                borderRadius: BorderRadius.circular(14)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 159, 44, 36), width: 2),
                borderRadius: BorderRadius.circular(14)),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 159, 44, 36), width: 2),
                borderRadius: BorderRadius.circular(14)),
          ),
        );
      case TextFieldVariant.email:
        textFormFieldVariant = TextFormField(
          style: const TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 113, 113, 113),
              fontWeight: FontWeight.w500),
          controller: widget.controller,
          validator: widget.validator,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: const TextStyle(
                color: Color.fromARGB(255, 113, 113, 113), fontSize: 18),
            contentPadding: widget.contentPadding ?? const EdgeInsets.all(16),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 225, 225, 225), width: 2),
                borderRadius: BorderRadius.circular(14)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 190, 190, 190), width: 2),
                borderRadius: BorderRadius.circular(14)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 159, 44, 36), width: 2),
                borderRadius: BorderRadius.circular(14)),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 159, 44, 36), width: 2),
                borderRadius: BorderRadius.circular(14)),
          ),
        );
      case TextFieldVariant.password:
        textFormFieldVariant = TextFormField(
          style: const TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 113, 113, 113),
              fontWeight: FontWeight.w500),
          controller: widget.controller,
          obscureText: _isObscured,
          keyboardType: TextInputType.visiblePassword,
          validator: widget.validator,
          decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 113, 113, 113), fontSize: 18),
              contentPadding: widget.contentPadding ?? const EdgeInsets.all(16),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 225, 225, 225), width: 2),
                  borderRadius: BorderRadius.circular(14)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 190, 190, 190), width: 2),
                  borderRadius: BorderRadius.circular(14)),
              errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 159, 44, 36), width: 2),
                  borderRadius: BorderRadius.circular(14)),
              focusedErrorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 159, 44, 36), width: 2),
                  borderRadius: BorderRadius.circular(14)),
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
