import 'package:fashion_app/themes/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'components/bottom_wave.dart';

class ClotheScreen extends StatelessWidget {
  const ClotheScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: ligthTheme.colorScheme.background,
      body: Stack(
        children: [
          const BottomWave(),
          ],
      ),
    );
  }
}
