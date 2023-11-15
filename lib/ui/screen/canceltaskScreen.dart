


import 'package:flutter/material.dart';
import 'package:renthvaen/ui/widget/ProfileSummaryCard.dart';
import 'package:renthvaen/ui/widget/TaskItemCard.dart';



class CanceldTaskScreen extends StatefulWidget {
  const CanceldTaskScreen({super.key});

  @override
  State<CanceldTaskScreen> createState() => _CanceldTaskScreenState();
}

class _CanceldTaskScreenState extends State<CanceldTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ProfileSummaryCard(),



            Expanded(

                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context,index){
                      return  TaskItemCard(
                        taskPosition: 'Cancled',
                      );
                    }
                )

            ),
          ],
        ),
      ),
    );
  }
}
















