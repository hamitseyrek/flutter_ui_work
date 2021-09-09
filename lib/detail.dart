import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  final String img;
  final String heroTag;

  const Detail({required this.heroTag, required this.img, Key? key})
      : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.heroTag,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.img), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Container(
              height: 220,
              width: MediaQuery.of(context).size.width - 30,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                              image: const DecorationImage(
                                  image: AssetImage('assets/dress.jpg'),
                                  fit: BoxFit.contain)),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'LAMINATED',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Louis vuitton',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                color: Colors.grey),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 180,
                            child: const Text(
                              'Flutter basit bir mantık üzerine kurulu karmaşık görülen bir yapıdır.',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          '\$6500',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        CircleAvatar(
                          child: Icon(Icons.arrow_forward_ios),
                          backgroundColor: Colors.brown,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: 50,
            child: Container(
              height: 35,
              width: 130,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Center(
                    child: Text(
                      'LAMINATED',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  CircleAvatar(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
