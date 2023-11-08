import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BubbleStory extends StatelessWidget {

  final String text;

  BubbleStory({required this.text,super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:Colors.red
            ),
          ),
          SizedBox(height: 4,),
          Text(text)
        ],
      ),
    );
  }
}
