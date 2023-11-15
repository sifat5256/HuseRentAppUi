
import 'package:flutter/material.dart';
import 'package:renthvaen/ui/widget/ProfileSummaryCard.dart';
import 'package:renthvaen/ui/widget/TaskItemCard.dart';



class ProgreessTaskScreen extends StatefulWidget {
  const ProgreessTaskScreen({super.key});

  @override
  State<ProgreessTaskScreen> createState() => _ProgreessTaskScreenState();
}

class _ProgreessTaskScreenState extends State<ProgreessTaskScreen> {
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
                        taskPosition: 'Progress',
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








