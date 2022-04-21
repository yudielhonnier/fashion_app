import 'package:flutter/material.dart';


class HeaderSquare extends StatelessWidget {
  const HeaderSquare({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child:
          CustomPaint(
            painter:_HeaderWavePainter(),
          ),
          
        
      
    );
  }
}


class _HeaderDiagonalPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
      
      final paint=new Paint();
      paint.color= Color(0xff615AAB);
      paint.style=PaintingStyle.fill;
      paint.strokeWidth=5;

      final path=new Path();
      // final left=size.height*0.35;
      // final right=size.height*0.25;

      path.moveTo(0.0, size.height*0.35);
      path.lineTo(size.width, size.height*0.25);
      path.lineTo(size.width, 0);
      path.lineTo(0, 0);


      canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }


}
class _HeaderCurvedPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
      
      final paint=new Paint();
      paint.color= Color(0xff615AAB);
      paint.style=PaintingStyle.fill;
      paint.strokeWidth=5;

      final path=new Path();
      // final left=size.height*0.35;
      // final right=size.height*0.25;

      path.moveTo(0.0, size.height*0.35);
      path.quadraticBezierTo(size.width*0.25,size.height*0.15,size.width, size.height*0.25);
      path.lineTo(size.width, 0);
      path.lineTo(0, 0);


      canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }


}
class _HeaderWavePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
      
      final paint=new Paint();
      paint.color= Colors.purple;
      paint.style=PaintingStyle.fill;
      paint.strokeWidth=5;

      final path=new Path();
      // final left=size.height*0.35;
      // final right=size.height*0.25;

      path.moveTo(0.0, size.height*0.35);
      path.quadraticBezierTo(size.width*0.25,size.height*0.55,size.width*0.5, size.height*0.35);
      path.quadraticBezierTo(size.width*0.75,size.height*0.15,size.width, size.height*0.35);
      path.lineTo(size.width, 0);
      path.lineTo(0, 0);
  


      canvas.drawPath(path, paint);
     
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }


}

