import 'package:flutter/material.dart';
import 'package:page_flip_builder/page_flip_builder.dart';
import 'package:z08_agenda/model/model_note.dart';
import 'package:z08_agenda/note/view_note.dart';
import 'package:z08_agenda/note/view_note_update.dart';


class PageAnimation extends StatefulWidget {
  ModelNote iconModelList;
  PageAnimation(this.iconModelList);

  @override
  State<PageAnimation> createState() => _PageAnimationState();
}

class _PageAnimationState extends State<PageAnimation> {
   final pageFlipKey = GlobalKey<PageFlipBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      width:200,
      height:200,
      color:Colors.black,
      child:PageFlipBuilder(
         key: pageFlipKey,
                   frontBuilder: (_) => ViewNote(widget.iconModelList),
          backBuilder: (_) => ViewNoteUpdate(widget.iconModelList),
          flipAxis: Axis.horizontal,
          maxTilt: 0.003,
          maxScale: 0.2,
          onFlipComplete: (isFrontSide) => print('isFrontSide: $isFrontSide'),
      ),
    );
  }
}