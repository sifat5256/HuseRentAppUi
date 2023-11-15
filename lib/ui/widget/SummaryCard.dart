import 'package:flutter/material.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({
    super.key,required this.count,required this.title
  });
  final String count,title;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
          child: Column(
            children: [
              Text(count,style: Theme.of(context).textTheme.titleLarge),
              // Text("9",style: Theme.of(context).textTheme.titleLarge,),
              Text(title)
            ],
          ),
        ),
      ),
    );
  }
}