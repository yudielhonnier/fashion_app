// import 'package:crypto_app/models/chart_circular_data.dart';
// import 'package:crypto_app/models/sales_data.dart';
// import 'package:crypto_app/models/step_area_data.dart';
// import 'package:crypto_app/themes/theme_constants.dart';
// import 'package:crypto_app/components/widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// class TestWalletPage extends StatefulWidget {
//   @override
//   TestWalletPageState createState() => TestWalletPageState();
// }

// class TestWalletPageState extends State<TestWalletPage> {
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;

//     List<ChartCircularData> data = [
//       ChartCircularData('CHN', 12, Colors.red),
//       ChartCircularData('GER', 15, Colors.green),
//       ChartCircularData('RUS', 30, Colors.yellow),
//       ChartCircularData('BRZ', 6.4, Colors.blue),
//       ChartCircularData('IND', 14, Colors.white)
//     ];

//     final colorsGradient = [
//       Color.fromARGB(0, 6, 13, 24),
//       Color.fromARGB(220, 6, 13, 24),
//       Color.fromARGB(255, 6, 13, 24)
//     ];


//     List<StepAreaData> chartData = <StepAreaData>[
//       StepAreaData(1, 23, -29),
//       StepAreaData(2, 13, -7),
//       StepAreaData(3, 4, -90),
//       StepAreaData(4, 90, -50),
//       StepAreaData(5, 40, -5),
//     ];


//     return Scaffold(
//       body: 
//       CustomScrollView(
//         slivers: [
//             SliverAppBar(
//               flexibleSpace: FlexibleSpaceBar(
//                 // background: Image.asset('assets/ship.jpg'),
//                 centerTitle:true,
//                 title:  
//                     Container(
//                       // padding: EdgeInsets.all(130),
//                       height: size.height*0.5,
//                       width: size.width
//                       ,
//                       child: ColoredBox(
//                             color: Colors.red,
//                       child: Stack(
//                         children: [
//                           CircularChart(data: data),
//                           Center(
//                             child: Container(
//                               alignment: Alignment.center,
//                               color: Colors.blue,
//                               height: 200,
//                               width: 200,
//                               child:Text('hello world'),
//                             ),
//                           )
//                           // StaticticsCircularChart(size:size),
//                         ],
//                       ),
//                         )),
                
//               ),
//               floating: false,
//               pinned: false,
//               expandedHeight: 555,
//             ),
//             SliverList(
//               delegate:
//                   SliverChildBuilderDelegate(
//             (context, index) {
//               return Container(
//                 height: 50,
//                 alignment: Alignment.center,
//                 color: Colors.orange[100 * (index % 9)],
//                 child: Text('orange $index'),
//               );
//             },
//             childCount: 90,
//           ),
        
//                 ),
            
            
//         ],
//       ),

   
//     );
  
//   }
// }
