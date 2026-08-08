import 'package:flutter/material.dart';

/// A form field styled consistently across every auth screen, with
/// built-in show/hide for password fields.
class AuthTextField extends StatefulWidget {
  const AuthTextField({
    required this.controller,
    required this.label,
    this.keyboardType,
    this.isPassword = false,
    this.textInputAction = TextInputAction.next,
    this.validator,
    this.autofillHints,
    this.onFieldSubmitted,
    super.key,
  });

  final TextEditingController controller;
  final String label;
  final TextInputType? keyboardType;
  final bool isPassword;
  final TextInputAction textInputAction;
  final String? Function(String?)? validator;
  final Iterable<String>? autofillHints;
  final ValueChanged<String>? onFieldSubmitted;

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  bool _obscured = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.isPassword && _obscured,
      textInputAction: widget.textInputAction,
      validator: widget.validator,
      autofillHints: widget.autofillHints,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
        labelText: widget.label,
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(_obscured ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                onPressed: () => setState(() => _obscured = !_obscured),
              )
            : null,
      ),
    );
  }
}
