import 'package:fashion_app/themes/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfilehScreenState();
}

class _ProfilehScreenState extends State<ProfileScreen> {
  final textNameController = TextEditingController();
  String username = 'Your username';
  num counter=40;

  @override
  void dispose() {
    textNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: ligthTheme.colorScheme.primary,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.07),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SafeArea(child: Container()),
            SizedBox(
              height: size.height * 0.03,
            ),
            Center(
              child: CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage('assets/6.jpg'),
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.white,
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: CustomBottomSheet(
                          onUsernameChanged: (newText) {
                          username = newText;
                          },
                          textNameController: textNameController,
                          size: size,
                          username: username,
                          counter: counter,
                        )));
              },
              child: Container(
                height: size.height * 0.06,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.account_circle_sharp,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: size.width * 0.09,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: size.height * 0.06,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: size.height * 0.008,
                              ),
                              Text(
                                'Username',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                username,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                        Expanded(child: Container()),
                        Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            Container(
              height: size.height * 0.06,
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: size.width * 0.09,
                      ),
                      Container(
                        alignment: Alignment.center,
                        //color: Colors.red,
                        height: size.height * 0.06,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: size.height * 0.008,
                            ),
                            Text(
                              'Info',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Write a info about you',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                      Expanded(child: Container()),
                      Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              height: size.height * 0.1,
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: size.width * 0.09,
                      ),
                      Container(
                        alignment: Alignment.center,
                        //color: Colors.red,
                        height: size.height * 0.06,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: size.height * 0.008,
                            ),
                            Text(
                              'Phone',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '55555555',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}

class CustomBottomSheet extends StatefulWidget {
  CustomBottomSheet(
      {Key? key,
      required this.textNameController,
      required this.size,
      required this.username,
      required this.counter,
      this.onUsernameChanged})
      : super(key: key);

  TextEditingController textNameController;
  final Size size;
  String username;
  num counter;
  final ValueChanged<String>? onUsernameChanged;

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: widget.size.width * 0.02),
      child: Row(
        children: [
          Container(
            height: widget.size.height * 0.4,
            width: widget.size.width * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: widget.size.height * 0.02,
                ),
                Text(
                  'Enter your username',
                ),
                SizedBox(
                  height: 8.0,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'username',
                      suffixText: '${widget.counter}'
                    ),
                    autofocus: true,
                    controller: widget.textNameController,
                    onChanged: (text) {
                      setState(() {
                        widget.username = text;
                        widget.counter--;
                      });
                      widget.onUsernameChanged!(text);
                    },
                    onSubmitted: (text) {
                      Navigator.pop(context);
                    },
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
       
           ],
      ),
    );
  }
}
