
import 'package:flutter/material.dart';
import 'package:renthvaen/ui/screen/addNewTaskScreen.dart';
import 'package:renthvaen/ui/screen/mainBottomNavbar.dart';
import 'package:renthvaen/ui/widget/ProfileSummaryCard.dart';

class SelectTypeHouseScreen2 extends StatefulWidget {
  const SelectTypeHouseScreen2({super.key});

  @override
  State<SelectTypeHouseScreen2> createState() => _SelectTypeHouseScreen2State();
}

class _SelectTypeHouseScreen2State extends State<SelectTypeHouseScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: SafeArea(
        child: ListView(
          children: [
            ProfileSummaryCard(),
            SizedBox(height: 50,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewTaskScreen()));
              },
              child: Container(


                child: Column(
                  children: [
                    Image.asset('assets/images/img_4.png',height: 140,),
                    Text("familly house",style: TextStyle(fontSize: 25),)

                  ],
                ),
              ),
            ),
            SizedBox(height: 50,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewTaskScreen()));
              },
              child: Container(
                child: Column(
                  children: [
                    Image.asset("assets/images/img_5.png",height: 200,),
                    Text("becelor house",style: TextStyle(fontSize: 25),)


                  ],
                ),
              ),
            ),
            SizedBox(height: 50,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewTaskScreen()));
              },
              child: Container(
                child: Column(
                  children: [
                    Image.asset("assets/images/img_6.png",height: 200,),
                    Text("office space",style: TextStyle(fontSize: 25),)

                  ],
                ),
              ),
            ),
            SizedBox(height: 50,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewTaskScreen()));
              },
              child: Container(
                child: Column(
                  children: [
                    Image.asset("assets/images/img_7.png",height: 180,),
                    Text("All(familly,becelor or others)",style: TextStyle(fontSize: 25),)

                  ],
                ),
              ),
            ),
          ],
        ),
      ),);

  }
}
