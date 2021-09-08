import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  final String img;
    final String heroTag;

  const Detail({required this.heroTag, required this.img, Key? key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: widget.heroTag,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.img), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
