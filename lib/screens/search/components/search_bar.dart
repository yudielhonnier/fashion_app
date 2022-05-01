import 'package:fashion_app/models/search_result.dart';
import 'package:fashion_app/screens/search/components/search_delegate.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.90,
      height: size.height * 0.06,
      child:GestureDetector(
          onTap: () async{
            final  result=await showSearch(context: context, delegate: SearchDestination()); 
            this.returnSearch(context,result!); 
          },

          child:
       Row(
        children: [
          SizedBox(
            width: size.width * 0.06,
          ),
          Icon(
            Icons.search,
           color: Colors.grey[500],
          ),
          SizedBox(
            width: size.width * 0.04,
          ),
          Text(
            'Search all clothes',
            style: TextStyle(
              fontSize: 17,
              color: Colors.grey[400],
            ),
          ),
        ],
      ),),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 254, 239, 247),
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }

    void returnSearch(BuildContext context,SearchResult result){

        if(result.cancelled!)
      return;

          }
}
