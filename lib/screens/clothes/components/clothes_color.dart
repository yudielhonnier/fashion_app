import 'package:fashion_app/themes/theme_constants.dart';
import 'package:flutter/material.dart';

class ClothesColor extends StatefulWidget {
  ClothesColor({Key? key, required this.size})
      : super(key: key);

  final Size size;
  

  @override
  State<ClothesColor> createState() => _ClothesColorState();
}

class _ClothesColorState extends State<ClothesColor> {
  Map<int, dynamic> map = {};
  List<bool> selection = [true, false, false, false, false];

  @override
  void initState() {
    map = {
      0: [ ligthTheme.colorScheme.primary,],
      1: [ Colors.purple,],
      2: [ Colors.yellow,],
      3: [ Colors.orange,],
      4: [ ligthTheme.colorScheme.primaryVariant,],
     
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
        height: widget.size.height * 0.08,
        width: widget.size.width * 0.9,
        child:
            ListView.separated(
                separatorBuilder: (context, i) => SizedBox(
                      width: widget.size.width * 0.03,
                    ),
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return GestureDetector(
                         onTap: () {
                    setState(() {
                     for (var j = 0; j < selection.length; j++) {
                       if(j==i){
                        selection[j]=true;
                        }
                        else{
                        selection[j]= false;
                        }
                     }
                  
                    });
                  },
                    child: selection[i]
                    ? CircleAvatar(
                      backgroundColor:ligthTheme.colorScheme.primary,
                      radius: 35,
                      child: CircleAvatar(
                        radius: 30,
                         backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 25,
                        backgroundColor: map[i][0],
                         ),
                      ) ,
                      )
                    : CircleAvatar(
                      radius: 25,
                      backgroundColor: map[i][0],
                       )   
                  );
                })
                );
  }
}

