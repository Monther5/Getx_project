import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? errorText;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final TextEditingController? controller;

  const TextfieldWidget({
    super.key,
    this.hintText,
    this.labelText,
    this.errorText,
    this.keyboardType,
    this.onChanged,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: TextField(
        controller: controller,

        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          errorText: errorText,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(120),
            borderSide: const BorderSide(color: Colors.black),
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
