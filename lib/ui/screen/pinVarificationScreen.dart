import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:renthvaen/ui/screen/setpasswordScreen.dart';
import 'package:renthvaen/ui/screen/signupScreen.dart';

import '../widget/background_body.dart';

class PinVarificationScreen extends StatefulWidget {
  const PinVarificationScreen({super.key});

  @override
  State<PinVarificationScreen> createState() => _PinVarificationScreenState();
}

class _PinVarificationScreenState extends State<PinVarificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                      "Your Email Addreess",
                      style:Theme.of(context).textTheme.titleLarge
                  ),

                  const SizedBox(
                    height: 24,
                  ),
                  Text("A 6 digit verification code send your email address.Please don't share with anyone"),
                  const SizedBox(
                    height: 24,
                  ),
                  PinCodeTextField(
                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        activeFillColor: Colors.white,
                        activeColor: Colors.blue,
                        selectedFillColor: Colors.white,
                        inactiveFillColor: Colors.white
                    ),
                    animationDuration: Duration(milliseconds: 300),
                    // backgroundColor: Colors.white,
                    enableActiveFill: true,
                    // errorAnimationController: errorController,
                    //controller: textEditingController,
                    onCompleted: (v) {
                      // print("Completed");
                    },
                    onChanged: (value) {


                    },
                    beforeTextPaste: (text) {
                      //  print("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
                    appContext: context,
                  ),
                  const SizedBox(
                    height: 24,
                  ),

                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SetpasswordScreen()));
                      }, child: Icon(Icons.arrow_circle_right_outlined))),
                  const SizedBox(
                    height: 24,
                  ),




                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Have an account?",
                        style: TextStyle(

                            fontSize: 16
                        ),),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                      },
                          child:const Text("Sign In",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16
                            ),
                          )),

                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
