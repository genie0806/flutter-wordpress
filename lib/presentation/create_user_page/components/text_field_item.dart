import 'package:flutter/material.dart';
import 'package:virtue_test/presentation/create_user_page/create_user_event.dart';
import 'package:virtue_test/presentation/create_user_page/create_user_page_view_model.dart';
import 'package:virtue_test/presentation/create_user_page/create_user_state.dart';

InputDecoration textInputDeco(String hint) {
  return InputDecoration(
      isDense: true,
      contentPadding: const EdgeInsets.fromLTRB(15, 25, 0, 0),
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
      borderSide: BorderSide(color: Colors.grey.shade400, width: 0.5),
      borderRadius: BorderRadius.circular(0));
}

InputDecoration confirmPasswordInputDeco(
    CreateUserPageViewModel viewModel, CreateUserState state) {
  return InputDecoration(
      isDense: true,
      contentPadding: const EdgeInsets.fromLTRB(15, 25, 0, 0),
      hintText: "비밀번호 확인",
      hintStyle: TextStyle(fontSize: 16, color: Colors.grey.shade400),
      enabledBorder: activeInputBorder(),
      focusedBorder: activeInputBorder(),
      errorBorder: errorInputBorder(),
      focusedErrorBorder: errorInputBorder(),
      errorStyle: const TextStyle(color: Colors.redAccent, fontSize: 13),
      suffixIcon: IconButton(
          color: Colors.grey.shade500.withOpacity(.4),
          onPressed: () {
            viewModel.onEvent(const ToggleConfirmPasswordVisibility());
          },
          icon: Icon(state.hideConfirmPassword
              ? Icons.visibility_off
              : Icons.visibility)));
}

InputDecoration passwordInputDeco(
    CreateUserPageViewModel viewModel, CreateUserState state) {
  return InputDecoration(
      isDense: true,
      contentPadding: const EdgeInsets.fromLTRB(15, 25, 0, 0),
      hintText: "비밀번호",
      hintStyle: TextStyle(fontSize: 16, color: Colors.grey.shade400),
      enabledBorder: activeInputBorder(),
      focusedBorder: activeInputBorder(),
      errorBorder: errorInputBorder(),
      focusedErrorBorder: errorInputBorder(),
      errorStyle: const TextStyle(color: Colors.redAccent, fontSize: 13),
      suffixIcon: IconButton(
          color: Colors.grey.shade500.withOpacity(.4),
          onPressed: () {
            viewModel.onEvent(const TogglePasswordVisibility());
          },
          icon: Icon(
              state.hidePassword ? Icons.visibility_off : Icons.visibility)));
}
