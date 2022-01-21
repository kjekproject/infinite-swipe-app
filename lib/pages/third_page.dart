import 'package:flutter/material.dart';
import 'package:infinite_swipe_app/widgets/box.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Box(
              color: Colors.purple,
            ),
            const Box(
              color: Colors.purple,
              text: '3',
            ),
            Expanded(
              child: Row(
                children: const [
                  Box(
                    color: Colors.purple,
                  ),
                  Box(
                    color: Colors.purple,
                  ),
                  Box(
                    color: Colors.purple,
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