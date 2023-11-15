
import 'package:flutter/material.dart';
import 'package:renthvaen/ui/screen/signupScreen.dart';

class ChooseProfileScreen extends StatefulWidget {
  const ChooseProfileScreen({super.key});

  @override
  State<ChooseProfileScreen> createState() => _ChooseProfileScreenState();
}

class _ChooseProfileScreenState extends State<ChooseProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Choose Your Profile"),
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                        },
                        child: Container(
                          color: Colors.greenAccent,
                          child: Column(
                            children: [
                              Image.asset("assets/images/landowner.jpg",height: 300),
                              Text("বাসা ভাড়া দেওয়া",style: TextStyle(fontSize: 25),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 25,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                        },
                        child: Container(
                          color: Colors.greenAccent,
                          child: Column(
                            children: [
                              Image.asset("assets/images/rent.jpg",height: 200,),
                              Text("বাসা ভাড়া নেওয়া",style: TextStyle(fontSize: 25),)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Already have an account?"),
                      TextButton(onPressed: () {}, child: Text('Log In'))
                    ],
                  ),
                ],
              ),
            ),
            ),);
  }
}
