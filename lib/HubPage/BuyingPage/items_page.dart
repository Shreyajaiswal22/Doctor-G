import 'package:flutter/material.dart';
import 'package:projectBiyt/HubPage/BuyingPage/item_description.dart';

class BuyingITems extends StatefulWidget {
  @override
  _BuyingITemsState createState() => _BuyingITemsState();
}

class _BuyingITemsState extends State<BuyingITems> {
  List<String> image = [
    "assets/12.jpg",
    "assets/14.jpg",
    "assets/16.jpg",
    "assets/11.jpg",
    "assets/12.jpg",
    "assets/14.jpg",
    "assets/15.jpg",
    "assets/11.jpg",
    "assets/12.jpg",
    "assets/14.jpg",
    "assets/15.jpg",
    "assets/11.jpg",
    "assets/12.jpg",
    "assets/14.jpg",
    "assets/15.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 25.0),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  leading:
                      IconButton(icon: Icon(Icons.search), onPressed: null),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: <Widget>[
                Text("Explore",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    )),
                SizedBox(width: 7.0),
                Text(
                  "Here!",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    color: Colors.black,
                    fontSize: 25.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Flexible(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(10, (index) {
                return Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(40)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Description(),
                                settings:
                                    RouteSettings(arguments: image[index])));
                      },
                      child: Card(
                        elevation: 4,
                        child: Image.asset(
                          image[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
