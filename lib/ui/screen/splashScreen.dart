import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:renthvaen/ui/screen/loginScreen.dart';
import 'package:renthvaen/ui/widget/background_body.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goToLogIn();
  }

  void goToLogIn() {
    Future.delayed(Duration(seconds: 3)).then((value) =>
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
                (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BodyBackground(
          child: SafeArea(
            child: Center(
              child: Column(

                //mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.start,


                children: [
                 SizedBox(height: 100,),
                  Container(
                    height:290,
                      width: 290,
                      child: Image.asset('assets/images/img_1.png',)),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Rent Haven',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w700),)
                ],
              ),
            ),
          ),
        ));
  }
}
