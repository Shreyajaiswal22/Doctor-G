import 'package:flutter/material.dart';
import 'package:projectBiyt/HubPage/BuyingPage/categories.dart';
import 'package:projectBiyt/HubPage/bottom_navy_Bar.dart';
import 'package:projectBiyt/HubPage/BookingPage/categories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 2,
      child: new Scaffold(
          appBar: new AppBar(
            backgroundColor: Colors.white,
            leading: Icon(
              Icons.menu_book_outlined,
              color: Colors.black,
            ),
            title: new Text(
              'BiYT',
              style: TextStyle(color: Colors.black),
            ),
            bottom: new PreferredSize(
              preferredSize: new Size(80.0, 80.0),
              child: new Container(
                child: new TabBar(
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.black,
                  labelStyle: TextStyle(
                      fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                  tabs: [
                    new Container(
                      child: new Tab(
                        text: 'BOOKING',
                      ),
                    ),
                    new Container(
                      child: new Tab(text: 'BUYING'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [Booking(), Buying()],
          ),
          bottomNavigationBar: BottomNavyBar(
              selectedIndex: currentIndex,
              showElevation: false,
              itemCornerRadius: 4,
              onItemSelected: (index) => setState(() {
                    currentIndex = index;
                  }),
              items: [
                BottomNavyBarItem(
                  icon: Icon(Icons.apps),
                  title: Text('Hub'),
                  activeColor: Colors.black,
                ),
                BottomNavyBarItem(
                  icon: Icon(FontAwesomeIcons.bookReader),
                  title: Text('Ticket'),
                  activeColor: Colors.black,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.add_shopping_cart_outlined),
                  title: Text('Cart'),
                  activeColor: Colors.black,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.radio),
                  title: Text('Assistant'),
                  activeColor: Colors.black,
                )
              ])),
    );
  }
}
