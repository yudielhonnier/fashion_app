import 'package:fashion_app/themes/theme_constants.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: size.height * 0.1,
          child: Container(),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Find your',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              'best choice',
              style: TextStyle(
                  color: ligthTheme.colorScheme.primary, fontSize: 28),
            ),
          ],
        ),
        Expanded(child: Container()),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/profile');
          },
          child: const CircleAvatar(
            backgroundColor: Color.fromARGB(255, 254, 239, 247),
            radius: 28,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/6.jpg'),
              radius: 25,
            ),
          ),
        ),
        SizedBox(
          width: size.width * 0.05,
        ),
      ],
    );
  }
}
