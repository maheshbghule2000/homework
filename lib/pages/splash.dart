import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _HomeworkWidget(context),
    );
  }
}

_HomeworkWidget(context) {
  return Container(
      child: Stack(children: [
    Container(
      // height: 500,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xffC3F4FF),
        Color.fromARGB(255, 239, 252, 255),
        Color(0xffFFFFFF),
        Color(0xffFFFFFF),
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: Column(
        children: const [
          SizedBox(
            height: 200,
          ),
          Text.rich(TextSpan(children: <InlineSpan>[
            TextSpan(
                text: 'HOME ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'WORK',
                style: TextStyle(
                    color: Color(0xff3D8393),
                    fontSize: 35,
                    fontWeight: FontWeight.bold)),
          ])),
          SizedBox(
            height: 30,
          ),
          Text('SUPER SERVICE APP',
              style: TextStyle(
                  color: Color(0xff09A0C3),
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          Text('BY',
              style: TextStyle(
                  color: Color(0xff3C8292),
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          Text('the baap company',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    ),
    Align(
      alignment: Alignment.bottomCenter,
      child: Image.asset(
        'assets/groupy.png',
        width: MediaQuery.of(context).size.width,
      ),
    ),
  ]));
}
