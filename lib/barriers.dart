import 'package:flutter/material.dart';
class MyBarrier extends StatelessWidget {
  final barrierWidth;
  final barrierHeight;
  final barrierX;
  final bool isThisBottomBarrier;



  MyBarrier({
   this.barrierHeight,
   this.barrierWidth,
   required this.isThisBottomBarrier,
    this.barrierX,

});

  @override
  Widget build(BuildContext context) {
    return Container(
alignment: Alignment((2*barrierX+barrierWidth)/(2-barrierWidth),isThisBottomBarrier ? 1 : -1),

      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          border: Border.all(width: 10,color: Color(0xC10D8E04)),
          borderRadius: BorderRadius.circular(10)
        ),
      width: MediaQuery.of(context).size.width*barrierWidth /2,
      height: MediaQuery.of(context).size.height*3 / 4 * barrierHeight /2,),
    );
  }
}
