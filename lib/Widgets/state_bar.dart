import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StateBarWidget extends StatelessWidget {

  const StateBarWidget(this.mainColor, this.isChecked, {Key? key}) : super(key: key);
  final Color mainColor;
  final bool isChecked;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        height: 10,
        width: 25,
        margin: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: isChecked?mainColor:Colors.white,
          border: Border.all(color: mainColor, width: 2.0),
          borderRadius: const BorderRadius.all(Radius.elliptical(30, 30)),
        ),
        child: const Text(''),
      ),
    );
  }
}
