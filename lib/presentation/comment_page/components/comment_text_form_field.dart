import 'package:flutter/material.dart';

InputDecoration textInputDeco(String hint) {
  return InputDecoration(
      isDense: true,
      contentPadding: const EdgeInsets.fromLTRB(15, 29, 0, 0),
      hintText: hint,
      hintStyle: TextStyle(fontSize: 16, color: Colors.grey.shade400),
      enabledBorder: activeInputBorder(),
      focusedBorder: activeInputBorder(),
      errorStyle: const TextStyle(color: Colors.redAccent, fontSize: 13),
      suffixIcon: TextButton(
        child: const Text(
          '등록',
          style: TextStyle(
              color: Color(0xff405479),
              fontSize: 17,
              fontWeight: FontWeight.bold),
        ),
        onPressed: () {},
      ));
}

OutlineInputBorder errorInputBorder() {
  return OutlineInputBorder(
      borderSide: const BorderSide(
        width: 0.5,
        color: Colors.red,
      ),
      borderRadius: BorderRadius.circular(5));
}

OutlineInputBorder activeInputBorder() {
  return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade500, width: 0.5),
      borderRadius: BorderRadius.circular(5));
}
