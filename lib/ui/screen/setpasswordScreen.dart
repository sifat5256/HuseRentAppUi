import 'package:flutter/material.dart';
import 'package:renthvaen/ui/screen/loginScreen.dart';
import 'package:renthvaen/ui/screen/newTaskScreen.dart';

import '../widget/background_body.dart';

class SetpasswordScreen extends StatefulWidget {
  const SetpasswordScreen({super.key});

  @override
  State<SetpasswordScreen> createState() => _SetpasswordScreenState();
}

class _SetpasswordScreenState extends State<SetpasswordScreen> {
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
                      "Set Password",
                      style:Theme.of(context).textTheme.titleLarge
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text('Please give at least 6 character password include number and letter'),

                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
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
                    height: 16,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>NewTaskScreen()));
                      },
                          child: Text("Confirm"))),
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
