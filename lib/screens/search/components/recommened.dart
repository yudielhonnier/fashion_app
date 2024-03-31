import 'package:flutter/material.dart';

class Recommened extends StatelessWidget {
  const Recommened({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.red,
      // padding: EdgeInsets.only(left: size.width * 0.05),
      height: size.height * 0.14,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: size.width * 0.04),
          const CircleAvatar(
            radius: 58,
            backgroundImage: AssetImage('assets/5.jpg'),
          ),
          SizedBox(width: size.width * 0.04),
          const CircleAvatar(
            radius: 58,
            backgroundImage: AssetImage('assets/5.jpg'),
          ),
          SizedBox(width: size.width * 0.04),
          const CircleAvatar(
            radius: 58,
            backgroundImage: AssetImage('assets/5.jpg'),
          ),
          SizedBox(width: size.width * 0.04),
          const CircleAvatar(
            radius: 58,
            backgroundImage: AssetImage('assets/5.jpg'),
          ),
          const VerticalDivider(),
        ],
      ),
    );
  }
}
