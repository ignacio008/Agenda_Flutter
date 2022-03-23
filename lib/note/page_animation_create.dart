import 'package:flutter/material.dart';
import 'package:page_flip_builder/page_flip_builder.dart';
import 'package:z08_agenda/note/create_note.dart';
import 'package:z08_agenda/note/widget_create_note.dart';

class PageAnimationCreate extends StatefulWidget {
  PageAnimationCreate({Key key}) : super(key: key);

  @override
  State<PageAnimationCreate> createState() => _PageAnimationCreateState();
}

class _PageAnimationCreateState extends State<PageAnimationCreate> {
 final pageFlipKey = GlobalKey<PageFlipBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      width:200,
      height:200,
      color:Colors.black,
      child:PageFlipBuilder(
         key: pageFlipKey,
                   frontBuilder: (_) => CreateNote(),
          backBuilder: (_) => WidgetCreateNote(),
          flipAxis: Axis.horizontal,
          maxTilt: 0.003,
          maxScale: 0.2,
          onFlipComplete: (isFrontSide) => print('isFrontSide: $isFrontSide'),
      ),
    );
  }
}