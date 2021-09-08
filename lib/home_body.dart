import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 10),
      children: [
        SizedBox(
          height: 150,
          width: double.infinity,
          child: ListView(
            padding: const EdgeInsets.all(10),
            scrollDirection: Axis.horizontal,
            children: [
              listElement('assets/model1.jpeg', 'assets/chanellogo.jpg'),
              const SizedBox(width: 25),
              listElement('assets/model2.jpeg', 'assets/chloelogo.png'),
              const SizedBox(width: 25),
              listElement('assets/model3.jpeg', 'assets/louisvuitton.jpg'),
              const SizedBox(width: 25),
              listElement('assets/model1.jpeg', 'assets/chanellogo.jpg'),
              const SizedBox(width: 25),
              listElement('assets/model2.jpeg', 'assets/chloelogo.png'),
              const SizedBox(width: 25),
              listElement('assets/model3.jpeg', 'assets/louisvuitton.jpg'),
              const SizedBox(width: 25),
            ],
          ),
        ),
        myCard(),
      ],
    );
  }

  Widget listElement(String image, String logo) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(logo), fit: BoxFit.cover),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 15),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.brown,
          ),
          child: const Center(
            child: Text(
              'Follow',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }

  Widget myCard() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Material(
        borderRadius: BorderRadius.circular(16),
        elevation: 6,
        child: SizedBox(
          height: 550,
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
                width: double.infinity,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/model1.jpeg'),
                    radius: 25,
                  ),
                  title: Text(
                    'Daisy',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontFamily: 'Montserrat'),
                  ),
                  subtitle: Text(
                    '34 min ago',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontFamily: 'Montserrat'),
                  ),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                margin: const EdgeInsets.all(10),
                child: const Text(
                  'To add custom fonts to your application, add a fonts section here, in this flutter section. Each entry in this list should have a family key with the font family name, and a fonts key with a',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.grey,
                      fontSize: 13),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    height: 210,
                    width: (MediaQuery.of(context).size.width - 50) / 2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(
                            image: AssetImage('assets/modelgrid1.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: (MediaQuery.of(context).size.width - 100) / 2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(
                                image: AssetImage('assets/modelgrid2.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 100,
                        width: (MediaQuery.of(context).size.width - 100) / 2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(
                                image: AssetImage('assets/modelgrid3.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.brown.withOpacity(0.01)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        '# Louis vuitton',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(width: 5),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.brown.withOpacity(0.01)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        '# Chloe',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Divider(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Icon(Icons.reply,
                        color: Colors.brown.withOpacity(0.3), size: 30),
                    const SizedBox(width: 3),
                    const Text('1.7k',
                        style: TextStyle(fontFamily: 'Montserrat')),
                    const SizedBox(width: 20),
                    Icon(Icons.comment,
                        color: Colors.brown.withOpacity(0.3), size: 30),
                    const SizedBox(width: 3),
                    const Text('216',
                        style: TextStyle(fontFamily: 'Montserrat')),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30,
                        ),
                        SizedBox(width: 3),
                        Text(
                          '216',
                          style: TextStyle(fontFamily: 'Montserrat'),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
