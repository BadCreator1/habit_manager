import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:habit_manager/Models/habit.dart';
import 'package:habit_manager/Widgets/state_bar.dart';

import 'habit_force_state.dart';

class HabitItemWidget extends StatefulWidget {
  const HabitItemWidget(this.habit, {Key? key}) : super(key: key);

  final Habit habit;

  static const double _icon_size = 25;
  static const double _icon_padding = 8.0;

  @override
  State<HabitItemWidget> createState() => _HabitItemWidgetState();
}

class _HabitItemWidgetState extends State<HabitItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 20,
                  child: Icon(
                    widget.habit.icon,
                    size: HabitItemWidget._icon_size,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(widget.habit.name,
                            style: Theme.of(context).textTheme.headline6),
                      ),
                      HabitForceStateWidget(widget.habit.force)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Transform.scale(
                  scale: 1.5,
                  child: Checkbox(
                    checkColor: Colors.white,
                    splashRadius: 15,
                    value: widget.habit.isChecked,
                    shape: CircleBorder(),
                    onChanged: (bool? value) {
                      setState(() {
                        widget.habit.isChecked = !widget.habit.isChecked;
                      });
                    },
                  ),
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
