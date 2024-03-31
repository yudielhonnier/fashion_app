import 'package:fashion_app/screens/search/components/bottom_bar.dart';
import 'package:fashion_app/screens/search/components/clothes_cards.dart';
import 'package:fashion_app/themes/theme_constants.dart';
import 'package:flutter/material.dart';

import 'components/custom_app_bar.dart';
import 'components/recommened.dart';
import 'components/search_bar.dart';
import 'components/categories.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: ligthTheme.colorScheme.surface,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SafeArea(child: Container()),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.045),
            child: CustomAppbar(size: size),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          CustomSearchBar(size: size),
          SizedBox(
            height: size.height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.045),
            child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Categories',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                )),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Categories(
            size: size,
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          ClothesCards(size: size),
          SizedBox(
            height: size.height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.045),
            child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recommened you',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                )),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Recommened(
            size: size,
          ),
        ],
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
