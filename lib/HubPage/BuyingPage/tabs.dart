import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projectBiyt/HubPage/BuyingPage/electronics.dart';

class Example extends StatefulWidget {
  Example({Key key}) : super(key: key);

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 7,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                backgroundColor: Colors.red,
                unselectedBackgroundColor: Colors.grey[300],
                unselectedLabelStyle: TextStyle(color: Colors.black),
                labelStyle:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    icon: Icon(Icons.medical_services),
                    text: "Medical Store",
                  ),
                  Tab(
                    icon: Icon(FontAwesomeIcons.shopify),
                    text: "Supermarket",
                  ),
                  Tab(
                    icon: Icon(FontAwesomeIcons.pen),
                    text: "Stationery",
                  ),
                  Tab(
                    icon: Icon(FontAwesomeIcons.shoppingBag),
                    text: "Fashion",
                  ),
                  Tab(
                    icon: Icon(FontAwesomeIcons.laptop),
                    text: "Elecronics",
                  ),
                  Tab(
                    icon: Icon(FontAwesomeIcons.gift),
                    text: "Gifts",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Electronics(),
                    Electronics(),
                    Electronics(),
                    Electronics(),
                    Electronics(),
                    Electronics(),
                    Electronics(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
