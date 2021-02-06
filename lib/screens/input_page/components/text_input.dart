import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String text;
  final ValueChanged<String> onChanged;

  const TextInput({Key key, @required this.text, @required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
      onChanged: onChanged,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: text,
      ),
    );
  }
}
