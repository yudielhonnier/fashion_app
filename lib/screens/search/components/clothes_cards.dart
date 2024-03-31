import 'package:fashion_app/themes/theme_constants.dart';
import 'package:flutter/material.dart';

class ClothesCards extends StatelessWidget {
  const ClothesCards({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // padding: EdgeInsets.only(left: size.width * 0.04),
      height: size.height * 0.3,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            padding: EdgeInsets.only(left: size.width * 0.04),
            width: size.width * 0.65,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/clothes'),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(25.0)),
                      child: Image(
                        fit: BoxFit.cover,
                        height: size.height * 0.2,
                        image: const AssetImage('assets/3.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.02),
                      child: Row(
                        children: [
                          Container(
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Winter jacket',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.white),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '4.0',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.star_outlined,
                                      color: Colors.yellow,
                                    ),
                                    Text(
                                      '(12k review)',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Container(
                            height: size.width * 0.1,
                            margin: const EdgeInsets.all(0),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '\$',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    Text(
                                      '203.00',
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    // SizedBox(width: size.width*0.1,),
                  ],
                ),
              ),
            ),
          ),
          // SizedBox(width: size.width * 0.05),
          Container(
            padding: EdgeInsets.only(left: size.width * 0.04),
            width: size.width * 0.65,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(25.0)),
                    child: Image(
                      fit: BoxFit.cover,
                      height: size.height * 0.2,
                      width: size.width,
                      image: const AssetImage('assets/2.jpg'),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.02),
                    child: Row(
                      children: [
                        Container(
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Winter jacket',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '4.0',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.star_outlined,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                    '(12k review)',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(child: Container()),
                        Container(
                          height: size.width * 0.1,
                          margin: const EdgeInsets.all(0),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '\$',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  Text(
                                    '203.00',
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  // SizedBox(width: size.width*0.1,),
                ],
              ),
            ),
          ),
          // SizedBox(width: size.width * 0.05),
          Container(
            padding: EdgeInsets.only(left: size.width * 0.04),
            width: size.width * 0.65,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(25.0)),
                    child: Image(
                      fit: BoxFit.cover,
                      height: size.height * 0.2,
                      // width: size.width,
                      image: const AssetImage('assets/5.jpg'),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.02),
                    child: Row(
                      children: [
                        Container(
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Winter jacket',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '4.0',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.star_outlined,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                    '(12k review)',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(child: Container()),
                        Container(
                          height: size.width * 0.1,
                          margin: const EdgeInsets.all(0),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '\$',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  Text(
                                    '203.00',
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  // SizedBox(width: size.width*0.1,),
                ],
              ),
            ),
          ),
          // SizedBox(width: size.width * 0.05),
        ],
      ),
    );
  }
}
