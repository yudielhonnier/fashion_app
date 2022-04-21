import 'package:fashion_app/themes/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'components/bottom_wave.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: ligthTheme.colorScheme.background,
      body: Stack(
        children: [
          const BottomWave(),
             Positioned(
            top: size.height * 0.15,
            child: Container(
              color: Colors.transparent,
              padding: EdgeInsets.only(left: 20),
              width: size.width * 0.60,
              height: size.height*0.10,
              child:  Text(
                'New',
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
            ),
          ),
             Positioned(
            top: size.height * 0.20,
            child: Container(
              color: Colors.transparent,
              padding: EdgeInsets.only(left: 20),
              width: size.width * 0.60,
              height: size.height*0.10,
              child:  Text(
                'Collection',
                style: TextStyle(fontSize: 35, color: Colors.black),
              ),
            ),
          ),
           const BottomWave(),
          Positioned(
            top: size.height * 0.66,
            child: Container(
              color: Colors.black,
              padding: EdgeInsets.only(left: 20),
              width: size.width * 0.60,
              height: size.height*0.10,
              child:  Text(
                'Your Fashion Level up',
                style: TextStyle(fontSize: 35, color: Colors.white),
                 textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.83,
            width: size.width,
            child: Container(
            padding:  EdgeInsets.symmetric(horizontal:size.width*0.20),
            width: size.width,  
            height: size.height*0.09,
           
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26)
                      )
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                           SizedBox(height: size.height*0.02,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Start Shopping',  style: TextStyle(fontSize: 18, color: Colors.black),),
                           SizedBox(width: size.width*0.05,),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                      Row(
                        children: [
                           SizedBox(height: size.height*0.01,),
                        ],
                      ),
                      
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
