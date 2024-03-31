import 'package:fashion_app/themes/theme_constants.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<bool> selection = [true, false, false];
  Map<int, dynamic> map = {};

  @override
  void initState() {
    map = {
      0: ['New Arrival'],
      1: ['For Woman'],
      2: ['For Man'],
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: widget.size.height * 0.06,
      width: widget.size.width,
      child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  for (var j = 0; j < selection.length; j++) {
                    if (j == i) {
                      selection[j] = true;
                    } else {
                      selection[j] = false;
                    }
                  }
                });
              },
              child: selection[i]
                  ? Container(
                      color: Colors.transparent,
                      padding: EdgeInsets.only(left: widget.size.width * 0.05),
                      child: Container(
                        alignment: Alignment.center,
                        width: widget.size.width * 0.35,
                        decoration: BoxDecoration(
                          color: ligthTheme.colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          map[i][0],
                          style: const TextStyle(
                            color: Color.fromARGB(255, 254, 239, 247),
                          ),
                        ),
                      ),
                    )
                  : Container(
                      color: Colors.transparent,
                      padding: EdgeInsets.only(left: widget.size.width * 0.05),
                      child: Container(
                        alignment: Alignment.center,
                        width: widget.size.width * 0.35,
                        child: Text(
                          map[i][0],
                          style: TextStyle(
                            color: ligthTheme.colorScheme.primaryContainer,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: ligthTheme.colorScheme.secondary,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
            );
          }),
    );
  }
}
