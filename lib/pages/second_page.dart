import 'package:flutter/material.dart';
import 'package:infinite_swipe_app/widgets/box.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Box(
              color: Colors.blue,
            ),
            const Box(
              color: Colors.blue,
              text: '2',
            ),
            Expanded(
              child: Row(
                children: const [
                  Box(
                    color: Colors.blue,
                  ),
                  Box(
                    color: Colors.blue
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}