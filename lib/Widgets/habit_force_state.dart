import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habit_manager/Widgets/state_bar.dart';

class HabitForceStateWidget extends StatelessWidget {
  HabitForceStateWidget(this.force,{Key? key}) : super(key: key);
  final int force;
  List<Color> colors = [Colors.white,Colors.redAccent,Colors.yellow,Colors.greenAccent];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Force: ',style: Theme.of(context).textTheme.subtitle1,),
        StateBarWidget(colors[force],force>0),
        StateBarWidget(colors[force],force>1),
        StateBarWidget(colors[force],force>2),
      ],
    );
  }
}
