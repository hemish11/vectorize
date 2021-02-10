import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String text;
  final ValueChanged<String> onChanged;

  const TextInput({Key key, @required this.text, @required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: TextField(
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
        onChanged: onChanged,
        textAlign: TextAlign.end,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: text,
        ),
      ),
    );
  }
}
