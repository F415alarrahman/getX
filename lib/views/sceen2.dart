import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Sceen2 extends StatefulWidget {
  const Sceen2({super.key});

  @override
  State<Sceen2> createState() => _Sceen2State();
}

class _Sceen2State extends State<Sceen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
      ),
    );
  }
}
