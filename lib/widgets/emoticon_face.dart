import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String face;
  final String text;
  const EmoticonFace({super.key, required this.face, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.blue[600],
          ),
          child: Text(
            face,
            style: TextStyle(fontSize: 30.0),
          ),
        ),
        const SizedBox(height: 10),
        Text(text,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold))
      ],
    );
  }
}


// Fine 😊
// 