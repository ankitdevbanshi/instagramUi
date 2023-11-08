import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/bubble-stories.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(elevation: 0,backgroundColor: Colors.transparent,),
        body: Padding(padding: EdgeInsets.symmetric(vertical: 16,horizontal: 16),
        child:Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(height: 80,width: 80,decoration: BoxDecoration(shape: BoxShape.circle,
                  color: Colors.deepOrange,),
                ),


               Column(children: [
                 Text("43", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                 Text("posts",)
               ],),
               Column(children: [
                 Text("43", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                 Text("followers", )
               ],),
               Column(children: [
                 Text("43", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                 Text("following", )
               ],)
          ],),
Padding(
  padding: const EdgeInsets.only(left: 24,top: 16),
  child:   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
                Text("Ankit", style: TextStyle(fontWeight: FontWeight.bold),),
                Text("landed on earth",),
      ],
  ),
),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Container(padding:EdgeInsets.symmetric(vertical: 4,horizontal: 8),decoration: BoxDecoration(
                      border:Border.all(color:Colors.grey,),borderRadius: BorderRadius.circular(8)),
                  child: Center(child: Text('Edit profile',style: TextStyle(fontSize: 18),)),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Container(padding:EdgeInsets.symmetric(vertical: 4,horizontal: 8),decoration: BoxDecoration(
                      border:Border.all(color:Colors.grey,),
                      borderRadius: BorderRadius.circular(8)),
                    child: Center(child: Text('At tools',style: TextStyle(fontSize: 18))),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Container(padding:EdgeInsets.symmetric(vertical: 4,horizontal: 8),decoration: BoxDecoration(
                      border:Border.all(color:Colors.grey,),
                      borderRadius: BorderRadius.circular(8)),
                    child: Center(child: Text('Insigts',style: TextStyle(fontSize: 18))),),
                ),
              )
            ],),
           SizedBox(height: 16),
          Row(
            children: [
              BubbleStory(text: "story"),
              BubbleStory(text: "story"),
              BubbleStory(text: "story"),
              BubbleStory(text: "story")
            ],
          ),
            SizedBox(height: 16),
         TabBar(tabs: [
           Tab(icon: Icon(Icons.grid_3x3_outlined),),
           Tab(icon: Icon(Icons.video_call),),
           Tab(icon: Icon(Icons.shop),),
         ])
        ],)


        ,),

      ),
    );
  }
}
