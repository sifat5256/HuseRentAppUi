import 'package:flutter/material.dart';
import 'package:renthvaen/ui/screen/addNewTaskScreen.dart';
import 'package:renthvaen/ui/widget/ProfileSummaryCard.dart';
import 'package:renthvaen/ui/widget/SummaryCard.dart';
import 'package:renthvaen/ui/widget/TaskItemCard.dart';


class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddNewTaskScreen()));
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ProfileSummaryCard(),


            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SummaryCard(
                    count: '189',
                    title:'new',

                  ),
                  SummaryCard(
                    count: '7',
                    title:'Progreess',

                  ),
                  SummaryCard(
                    count: '11',
                    title:'Complete',

                  ),
                  SummaryCard(
                    count: '13',
                    title:'Cancle',

                  ),


                ],
              ),
            ),
            Expanded(

                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context,index){
                      return  TaskItemCard(
                        taskPosition: 'New',
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






