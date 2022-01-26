import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habit_manager/Models/habit.dart';
import 'package:habit_manager/Widgets/habit_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Habit> habits = [
    new Habit("Work", Icons.work, true, 1),
    new Habit("Japanese", Icons.language, true, 2),
    new Habit("Morning Exercises", Icons.sports, true, 3),
  ];

  _MainPageState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: ListView.builder(
          itemCount: habits.length,
            itemBuilder: (context, index) {
          final item = habits[index];
          return HabitItemWidget(item);
        }),
      ),
    );
  }
}
