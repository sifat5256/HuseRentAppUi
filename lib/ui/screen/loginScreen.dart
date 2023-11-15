import 'package:flutter/material.dart';
import 'package:renthvaen/ui/screen/chooseProfile.dart';
import 'package:renthvaen/ui/screen/emailVarificationScreen.dart';
import 'package:renthvaen/ui/screen/mainBottomNavbar.dart';
import 'package:renthvaen/ui/screen/selecttypeHouseScreen.dart';
import 'package:renthvaen/ui/screen/signupScreen.dart';

import '../widget/background_body.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                      "Get Started with Us",
                      style:Theme.of(context).textTheme.titleLarge
                  ),
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
                    height: 16,
                  ),
                  TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: 'Password'
                      )
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectTypeHouseScreen()));
                      }, child: Icon(Icons.arrow_circle_right_outlined))),
                  const SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>EmailVarificationScreen()));
                    },
                        child:const Text("Forgot Password?",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16
                          ),
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't Have an account?",
                        style: TextStyle(

                            fontSize: 16
                        ),),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ChooseProfileScreen()));
                      },
                          child:const Text("Sign Up",
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
