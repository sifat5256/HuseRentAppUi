import 'package:flutter/material.dart';
import 'package:renthvaen/ui/screen/addNewTaskScreen.dart';
import 'package:renthvaen/ui/screen/detailsScreen.dart';
import 'package:renthvaen/ui/widget/ProfileSummaryCard.dart';
import 'package:renthvaen/ui/widget/SummaryCard.dart';
import 'package:renthvaen/ui/widget/TaskItemCard.dart';
// Import the TaskDetailsScreen

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  // Function to handle the onTap for TaskItemCard
  void _onTaskItemTap() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TaskDetailsScreen()), // Navigate to TaskDetailsScreen
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    title: 'new',
                  ),
                  SummaryCard(
                    count: '7',
                    title: 'Progreess',
                  ),
                  SummaryCard(
                    count: '11',
                    title: 'Complete',
                  ),
                  SummaryCard(
                    count: '13',
                    title: 'Cancel',
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: _onTaskItemTap, // Call the onTap function
                    child: TaskItemCard(
                      taskPosition: 'New',
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


