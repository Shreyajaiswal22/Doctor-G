import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    final String todo = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Card(
          elevation: 2,
          margin: EdgeInsets.only(left: 14, right: 14, top: 8),
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
          child: Container(
              height: 180,
              child: Image.asset(
                todo,
                fit: BoxFit.fill,
              )),
        ),
      ),
    );
  }
}
