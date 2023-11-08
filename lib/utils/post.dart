import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Text("name",
                  style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),

            Icon(Icons.more_vert)
          ],) ,),
        Container(
          height: 350,
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
              children: [
                Icon(Icons.favorite),
                Padding(padding: EdgeInsets.all(4),child: Icon(Icons.chat_bubble_outline),),
                Icon(Icons.share)
              ],
            ),
              Icon(Icons.bookmark)
          ],),
        )
      ],
    );
  }
}
