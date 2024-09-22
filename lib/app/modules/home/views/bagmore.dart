import 'package:flutter/material.dart';

import 'mybag.dart';
import 'whitelist.dart';

class Bagmore extends StatefulWidget {
  const Bagmore({super.key});

  @override
  State<Bagmore> createState() => _BagmoreState();
}

class _BagmoreState extends State<Bagmore> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            leading: Icon(Icons.arrow_downward_outlined),
            title: Column(
              children: [
                Text("Bag More",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 25)),
              ],
            ),
            bottom: TabBar(
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                // physics: BouncingScrollPhysics(),
                labelStyle:
                    TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                tabs: [
                  Tab(
                    text: "My Bag",
                  ),
                  Tab(
                    text: "Whitelist",
                  )
                ]),
          ),
          body: TabBarView(
              physics: BouncingScrollPhysics(),
              children: [MyBag(), Whitelist()])),
    );
  }
}
