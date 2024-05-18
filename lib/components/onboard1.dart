import 'package:flutter/material.dart';

class Onboard1 extends StatelessWidget {
  final String textBoard;
  final String imgPath;
  final VoidCallback next;

  const Onboard1(
      {super.key,
      required this.textBoard,
      required this.imgPath,
      required this.next});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              textBoard,
              style: const TextStyle(fontSize: 29, color: Colors.green),
            ),
            // Image.asset(imgPath),

            Image(image: AssetImage(imgPath)),
            ElevatedButton(onPressed: next, child: const Text('Next'))
          ],
        ),
      ),
    );
  }
}
