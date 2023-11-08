import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/explore_gride.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child:Container(
          color: Colors.grey[400],
          padding: EdgeInsets.all(8),
          child: Row(children: [
            Icon(Icons.search,color: Colors.grey[500]),
            Text("Search", style: TextStyle(color: Colors.grey[500]),),

          ],),
        ),
        )
      ),
      body: ExploreGride());
  }
}
