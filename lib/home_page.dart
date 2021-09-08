import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabBarController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabBarController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabBarController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Moda Ui Work',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Montserrat',
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt),
            color: Colors.grey,
          )
        ],
      ),
      body: HomeBody(),
      bottomNavigationBar: myButtonNavigationBar(),
    );
  }

  Material myButtonNavigationBar() {
    return Material(
      child: TabBar(
        controller: _tabBarController,
        indicatorColor: Colors.grey,
        tabs: const [
          Tab(
            icon: Icon(
              Icons.more,
              color: Colors.grey,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.play_arrow,
              color: Colors.grey,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.navigation,
              color: Colors.grey,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.supervised_user_circle,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
