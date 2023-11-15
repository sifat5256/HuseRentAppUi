import 'package:flutter/material.dart';

class TaskItemCard extends StatelessWidget {
  const TaskItemCard({
    super.key,required this.taskPosition

  });
  final String taskPosition;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text('Title Will be here',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500

            )),
            Text('Description'),
            Text('Date:10/11/2023'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(

                  label: Text(taskPosition,style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                  backgroundColor: Colors.blue,),
                Wrap(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline_rounded)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}