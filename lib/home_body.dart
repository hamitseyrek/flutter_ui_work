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
          height: 400,
          width: double.infinity,
          child: Column(
            children: const [
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/model1.jpeg'),
                    radius: 35,
                  ),
                  title: Text('Daisy'),
                  subtitle: Text('34 min ago'),
                  trailing: Icon(Icons.architecture),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
