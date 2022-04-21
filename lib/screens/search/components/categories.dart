import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      padding: EdgeInsets.only(left: size.width*0.05),
      height: size.height * 0.06,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: size.width*0.35,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 254, 239, 247),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text('New Arrival'),
          ),
          VerticalDivider(),
          Container(
            width: size.width*0.35,
            child: Text('For Woman'),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 254, 239, 247),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          VerticalDivider(),
          Container(
            width: size.width*0.35,
            child: Text('For man'),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 254, 239, 247),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ],
      ),
    );
  }
}
