import 'package:flutter/material.dart';
import 'package:flutter_ui_work/home_page.dart';

void main() => runApp(ModaUi());

class ModaUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
