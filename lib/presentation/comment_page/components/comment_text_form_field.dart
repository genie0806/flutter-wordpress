import 'package:flutter/material.dart';

InputDecoration textInputDeco(String hint) {
  return InputDecoration(
      isDense: true,
      contentPadding: const EdgeInsets.fromLTRB(15, 29, 0, 0),
      hintText: hint,
      hintStyle: TextStyle(fontSize: 16, color: Colors.grey.shade400),
      enabledBorder: activeInputBorder(),
      focusedBorder: activeInputBorder(),
      errorBorder: errorInputBorder(),
      focusedErrorBorder: errorInputBorder(),
      errorStyle: const TextStyle(color: Colors.redAccent, fontSize: 13));
}

OutlineInputBorder errorInputBorder() {
  return OutlineInputBorder(
      borderSide: const BorderSide(
        width: 0.5,
        color: Colors.red,
      ),
      borderRadius: BorderRadius.circular(0));
}

OutlineInputBorder activeInputBorder() {
  return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade500, width: 0.5),
      borderRadius: BorderRadius.circular(0));
}
