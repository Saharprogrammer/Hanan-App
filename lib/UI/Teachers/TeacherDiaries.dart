import 'package:flutter/material.dart';
import '../Constance.dart';

class DiariesTeacher extends StatefulWidget {
  @override
  _DiariesTeacherState createState() => _DiariesTeacherState();
}

class _DiariesTeacherState extends State<DiariesTeacher> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "This is Diaries Screen",
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
