import 'package:fashion_app/themes/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'components/bottom_wave.dart';
import 'components/clothes_size.dart';
import 'components/description.dart';

class ClothesScreen extends StatefulWidget {
  const ClothesScreen({Key? key}) : super(key: key);

  @override
  State<ClothesScreen> createState() => _ClothesScreenState();
}

class _ClothesScreenState extends State<ClothesScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 250,
        backgroundColor: ligthTheme.colorScheme.primary,
        elevation: 0,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Row(
            children: [
              SizedBox(width: size.width * 0.12),
              Icon(Icons.arrow_back_ios),
            ],
          ),
        ),
      ),
      backgroundColor: ligthTheme.colorScheme.background,
      body: Column(
        children: [
          Container(
            //size of the appbar(38.1+55.1)
            height: size.height - 38.1 - 55.1,
            child: Stack(
              children: [
                Container(child: const BottomWave()),
                Positioned(
                        right: 0,
                    child: ClothesSize(
                  size: size,
                )),
                Positioned(
                  top: size.height * 0.4,
                  child: Description(size: size),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
