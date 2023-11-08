import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/bubble-stories.dart';
import 'package:instagram_ui/utils/post.dart';

class UserHome extends StatelessWidget {
  const UserHome({super.key});

  static const List<int> arr =  [1,2,3,4,5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Instagram"),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share)
              ],
            )

          ],),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                BubbleStory(text: "ankit",),
                BubbleStory(text: "ankit",),
                BubbleStory(text: "ankit",),
                BubbleStory(text: "ankit",),
                BubbleStory(text: "ankit",),
                BubbleStory(text: "ankit",),
                BubbleStory(text: "ankit",),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(itemCount: arr.length,itemBuilder: (ctx,index){
              return Post();
            }),
          )
        ],
      ));
  }
}
