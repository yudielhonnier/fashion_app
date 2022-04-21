import 'package:flutter/material.dart';

class ClothesCards extends StatelessWidget {
  const ClothesCards({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      padding: EdgeInsets.only(left: size.width * 0.05),
      height: size.height * 0.3,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: size.width * 0.6,
            child: Card(
              child: Column(
                children: [
                  Text('New Arrival'),
                 
                ],
              ),
            ),
          ),
          VerticalDivider(),
          Container(
            width: size.width * 0.35,
            child: Card(
              child: Text('For Woman'),
            ),
            // color: Color.fromARGB(255, 254, 239, 247),
          ),
          VerticalDivider(),
          Container(
            width: size.width * 0.35,
            child: Card(
              child: Text('For man'),
            ),
            // color: Color.fromARGB(255, 254, 239, 247),
          ),
        ],
      ),
    );
  }
}
