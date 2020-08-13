import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Electronics extends StatefulWidget {
  @override
  _ElectronicsState createState() => _ElectronicsState();
}

class _ElectronicsState extends State<Electronics> {
  List<String> image = [
    "assets/12.jpg",
    "assets/14.jpg",
    "assets/16.jpg",
    "assets/11.jpg",
    "assets/12.jpg",
    "assets/14.jpg",
    "assets/15.jpg"
  ];
  List<String> litems = [
    "ShopNumber 1",
    "ShopNumber 2",
    "ShopNumber 3",
    "ShopNumber 4",
    "ShopNumber 5",
    "ShopNumber 6",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 210,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: image.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(right: 7),
                  child: GestureDetector(
                    child: Container(
                      height: 205,
                      width: 220,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "${image[index]}",
                              height: 180,
                              width: 220,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Choose Now!",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              )),
          Flexible(
            child: new ListView.builder(
                itemCount: litems.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Card(
                      child: new ListTile(
                        subtitle: Text("subtitle"),
                        leading: CircleAvatar(
                          child: Image.asset(
                            "${image[index]}",
                            height: 180,
                            width: 220,
                            fit: BoxFit.cover,
                          ),
                        ),
                        trailing: Icon(FontAwesomeIcons.star),
                        title: Text(litems[index]),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
