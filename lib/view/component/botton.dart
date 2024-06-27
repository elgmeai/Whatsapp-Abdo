import 'package:flutter/material.dart';

class my_botton extends StatelessWidget {
  final String text;
  final int color;
  final  onPressed;
  const my_botton({
    super.key, required this.text, required this.onPressed, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Material(
        elevation: 5,
        color:  Color(color),
        borderRadius: BorderRadius.circular(30),
        child: MaterialButton(
          onPressed:      onPressed
,
          child:  Text(text,
              style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                  color: Colors.white)),
        ),
      ),
    );
  }
}