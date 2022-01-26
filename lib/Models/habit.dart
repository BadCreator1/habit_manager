import 'package:flutter/cupertino.dart';

class Habit{
  final String name;
  final bool isGood;
  final int force;
  final IconData icon;
  bool isChecked = false;

  Habit(this.name,this.icon, this.isGood, this.force);
}