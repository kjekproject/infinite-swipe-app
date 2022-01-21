import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  const Box({Key? key, 
    required this.color, 
    this.text,
  }) : super(key: key);

  final Color color;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(14)),
          color: color,
        ),
        child: text == null
          ? null
          : Center(
            child: Text(
              text!,
              style: const TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )
            ),
          ),
      ),
    );
  }
}