

import 'package:flutter/material.dart';
import 'package:renthvaen/ui/widget/ProfileSummaryCard.dart';
import 'package:renthvaen/ui/widget/TaskItemCard.dart';



class CompletedTaskScreen extends StatefulWidget {
  const CompletedTaskScreen({super.key});

  @override
  State<CompletedTaskScreen> createState() => _CompletedTaskScreenState();
}

class _CompletedTaskScreenState extends State<CompletedTaskScreen> {
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
                        taskPosition: 'Completed',
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












