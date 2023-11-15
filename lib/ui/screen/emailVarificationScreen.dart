import 'package:flutter/material.dart';
import 'package:renthvaen/ui/screen/loginScreen.dart';
import 'package:renthvaen/ui/screen/pinVarificationScreen.dart';

import '../widget/background_body.dart';

class EmailVarificationScreen extends StatefulWidget {
  const EmailVarificationScreen({super.key});

  @override
  State<EmailVarificationScreen> createState() => _EmailVarificationScreenState();
}

class _EmailVarificationScreenState extends State<EmailVarificationScreen> {
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
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          hintText: 'Email'
                      )
                  ),
                  const SizedBox(
                    height: 24,
                  ),

                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PinVarificationScreen()));
                      }, child: Icon(Icons.arrow_circle_right_outlined))),
                  const SizedBox(
                    height: 24,
                  ),





                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Have an account?",
                        style: TextStyle(

                            fontSize: 16
                        ),),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
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
