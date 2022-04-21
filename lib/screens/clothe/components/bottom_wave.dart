import 'package:flutter/material.dart';


class BottomWave extends StatelessWidget {
  const BottomWave({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child:
          CustomPaint(
            painter:_BottomWavePainter(),
          ),
                       
    );
  }
}



class _BottomWavePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
      
      final paint=new Paint();
      paint.color= Colors.black;
      paint.style=PaintingStyle.fill;
      paint.strokeWidth=5;

      final path=new Path();
  
      path.moveTo(0.0, size.height);
      path.lineTo(0.0, size.height*0.69);

      path.quadraticBezierTo(size.width*0.10,size.height*0.62,size.width*0.25, size.height*0.62);
      path.lineTo(size.width*0.75, size.height*0.62);
      path.quadraticBezierTo(size.width*0.90,size.height*0.62,size.width, size.height*0.69);
      path.lineTo(size.width, size.height);
  


      canvas.drawPath(path, paint);
     
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }


}

