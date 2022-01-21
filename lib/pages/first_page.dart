import 'package:flutter/material.dart';
import 'package:infinite_swipe_app/widgets/box.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: const [
            Box(
              color: Colors.red,
            ),
            Box(
              color: Colors.red,
              text: '1',
            ),
            Box(
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}