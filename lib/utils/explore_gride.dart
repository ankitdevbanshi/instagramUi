import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExploreGride extends StatelessWidget {
  const ExploreGride({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(itemCount:20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (ctx,index){
      return Padding(padding: EdgeInsets.all(2),
        child: Container(color: Colors.grey[500],),);
        });
  }
}
