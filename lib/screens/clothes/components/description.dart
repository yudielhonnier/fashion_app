import 'package:fashion_app/themes/theme_constants.dart';
import 'package:flutter/material.dart';

import 'clothes_color.dart';

class Description extends StatelessWidget {
  const Description({
    required this.size,
    Key? key,
  }) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Modern Dress',
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: size.width * 0.46,
              ),
              // Expanded(child: Container()),
              Icon(Icons.add_link_rounded)
            ],
          ),
          SizedBox(height: size.height*0.015,),
          Row(
            children: [
              Text('\$',style: TextStyle(color:ligthTheme.colorScheme.primary ),),
              SizedBox(width: size.width*0.01,),
              Text('300 USD',style: TextStyle( ),),
            ],
          ),
          SizedBox(height: size.height*0.03,),

          Text('Select Color',style: TextStyle(fontSize: 19,)),
          SizedBox(height: size.height*0.01,),

          ClothesColor(size:size),
          // Row(
          //   children: [
          //     CircleAvatar(
          //       backgroundColor: ligthTheme.colorScheme.primary,
          //       radius: 30,
          //       // child: CircleAvatar(backgroundColor: ,),
          //     ),
          //     SizedBox(
          //       width: size.width * 0.02,
          //     ),
          //     CircleAvatar(
          //       backgroundColor: ligthTheme.colorScheme.primary,
          //       radius: 30,
          //     ),
          //     SizedBox(
          //       width: size.width * 0.02,
          //     ),
          //     CircleAvatar(
          //       backgroundColor: ligthTheme.colorScheme.primary,
          //       radius: 30,
          //     ),
          //     SizedBox(
          //       width: size.width * 0.02,
          //     ),
          //     CircleAvatar(
          //       backgroundColor: ligthTheme.colorScheme.primary,
          //       radius: 30,
          //     ),
          //     SizedBox(
          //       width: size.width * 0.02,
          //     ),
          //     CircleAvatar(
          //       backgroundColor: ligthTheme.colorScheme.primary,
          //       radius: 30,
          //     ),
          //   ],
          // ),
          SizedBox(
            height: size.height * 0.03,
            child: Container(color: Colors.red,),
          ),
       
           Text('Description',style: TextStyle(fontSize: 19,)),
          SizedBox(
            height: size.height * 0.02,
          ),
           Container(
             width: size.width*0.8,
             child: Text('A smart dress with check. 65% Polyester'+ 
          'aaaaaaaaaaaaaaasdasdasdasdasdasdasdasdasdasdasdasdasd'+
          'aaaaaaaaaaaaaaasdasdasdasdasdasdasdasdasdasdasdasdasd'+
          'aaaaaaaaaaaaaaasdasdasdasdasdasdasdasdasdasdasdass'),
           ),
               SizedBox(
            height: size.height * 0.03,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: size.width*0.13),
            child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26))),
                  backgroundColor: MaterialStateProperty.all(ligthTheme.colorScheme.primary),
                ),
                child: Container(
                  width: size.width*0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Add to cart',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
       
        ],
      ),
    );
  }
}
