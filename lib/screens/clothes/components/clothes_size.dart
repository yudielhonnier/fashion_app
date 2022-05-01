import 'package:fashion_app/themes/theme_constants.dart';
import 'package:flutter/material.dart';

class ClothesSize extends StatefulWidget {
  ClothesSize({Key? key, required this.size})
      : super(key: key);

  final Size size;
  

  @override
  State<ClothesSize> createState() => _ClothesSizeState();
}

class _ClothesSizeState extends State<ClothesSize> {
  Map<int, dynamic> map = {};
  List<bool> selection = [false, true, true, true];

  @override
  void initState() {
    map = {
      0: ['X', Colors.white, Colors.black],
      1: ['M',ligthTheme.colorScheme.primary, Colors.white],
      2: ['L', Colors.white, Colors.black],
      3: ['XM', Colors.white, Colors.black],
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        height: widget.size.height * 0.29,
        width: widget.size.width * 0.14,
        child:
            //  Column(children: [
            //   SizedBox(
            //     height: widget.size.width * 0.08,
            //   ),
            //   GestureDetector(
            //     onTap: () {
            //       setState(() {
            //         colors[0] = ligthTheme.colorScheme.primary;
            //       });
            //     },
            //     child: CircleAvatar(
            //       backgroundColor: colors[0],
            //       child: Text(
            //         'X',
            //         style: TextStyle(color: Colors.black),
            //       ),
            //     ),
            //   ),
            //   SizedBox(
            //     height: widget.size.width * 0.02,
            //   ),
            //   GestureDetector(
            //       onTap: () {
            //         print('object+++++++++++++++++++++++++++++');
            //         setState(() {
            //            colors[1] = ligthTheme.colorScheme.primary;
            //         });
            //       },
            //       child: CircleAvatar(
            //         backgroundColor: colors[1],
            //         child: Text(
            //           'M',
            //           style: TextStyle(color: Colors.white),
            //         ),
            //       )),
            //   SizedBox(
            //     height: widget.size.width * 0.02,
            //   ),
            //   GestureDetector(
            //       onTap: () {
            //         print('object+++++++++++++++++++++++++++++');
            //         setState(() {
            //            colors[2] = ligthTheme.colorScheme.primary;
            //         });
            //       },
            //       child: CircleAvatar(
            //         backgroundColor: colors[2],
            //         child: Text(
            //           'L',
            //           style: TextStyle(color: Colors.black),
            //         ),
            //       )),
            //   SizedBox(
            //     height: widget.size.width * 0.02,
            //   ),
            //   GestureDetector(
            //       onTap: () {
            //         print('object+++++++++++++++++++++++++++++');
            //         setState(() {
            //           colors[3]= ligthTheme.colorScheme.primary;
            //         });
            //       },
            //       child: CircleAvatar(
            //         backgroundColor: colors[3],
            //         child: Text(
            //           'XM',
            //           style: TextStyle(color: Colors.black),
            //         ),
            //       )),
            // ]),
            Column(children: [
          SizedBox(
            height: widget.size.height * 0.04,
          ),
          Container(
            height: widget.size.height * 0.22,
            child: ListView.separated(
                separatorBuilder: (context, i) => SizedBox(
                      height: widget.size.width * 0.02,
                    ),
                itemCount: 4,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, i) {
                  return GestureDetector(
                         onTap: () {
                    setState(() {
                     for (var j = 0; j < selection.length; j++) {
                       if(j==i){
                        map[j][1]=ligthTheme.colorScheme.primary;
                        map[j][2]= Colors.white;}
                        else{
                        map[j][1]= Colors.white;
                        map[j][2]= Colors.black;
                        }
                     }
                  
                    });
                  },
                    child: CircleAvatar(
                      backgroundColor: map[i][1],
                      child: Text(
                        map[i][0],
                        style: TextStyle(color: map[i][2]),
                      ),
                    ),
                  );
                }),
          ),
        ]));
  }
}
