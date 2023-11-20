import 'package:flutter/material.dart';
import 'package:renthvaen/ui/screen/selecttypeHouseScreen.dart';
import 'package:renthvaen/ui/screen/selecttypeHouseScreen2.dart';

import '../widget/background_body.dart';

class SignupScreen2 extends StatefulWidget {
  const SignupScreen2({super.key});

  @override
  State<SignupScreen2> createState() => _SignupScreen2State();
}

class _SignupScreen2State extends State<SignupScreen2> {
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
                      "Join With Us",
                      style:Theme.of(context).textTheme.titleLarge
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    height: 55,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)

                    ),
                    child: Row(
                      children: [
                        Expanded(
                            flex:1,
                            child:Container(
                              height: 55,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(8),bottomLeft: Radius.circular(8))
                              ),
                              child: Text('Photo',style: TextStyle(color: Colors.white),),
                              alignment: Alignment.center,
                            )),
                        Expanded(
                            flex:3,
                            child:Container(
                              padding: EdgeInsets.all(8),
                              child: Text('Upload Your Photo'),
                            ))
                      ],
                    ),
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
                    height: 24,
                  ),
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          hintText: 'First Name'
                      )
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          hintText: 'Last Name'
                      )
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          hintText: 'Mobile'
                      )
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          hintText: 'NID Number'
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
                  TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: 'Confirm Password'
                      )
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>SelectTypeHouseScreen2()));
                      }, child: Icon(Icons.arrow_circle_right_outlined))),
                  const SizedBox(
                    height: 40,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Have an account?",
                        style: TextStyle(

                            fontSize: 16
                        ),),
                      TextButton(onPressed: (){
                        Navigator.pop(context);
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
