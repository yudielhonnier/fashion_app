import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.90,
      height: size.height * 0.08,
      child: Row(
        children: [
          SizedBox(
            width: size.width * 0.06,
          ),
          Icon(Icons.search),
          SizedBox(
            width: size.width * 0.04,
          ),
          Text(
            'Search all clothes',
            style: TextStyle(fontSize:17 ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 254, 239, 247),
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
