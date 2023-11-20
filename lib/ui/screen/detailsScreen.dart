import 'package:flutter/material.dart';
import 'package:renthvaen/ui/widget/ProfileSummaryCard.dart';

class TaskDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProfileSummaryCard(),
              Text(
                'Rent Details Screen',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 20,),

              // Horizontal ListView of Pictures
              SizedBox(
                height: 200, // Adjust the height according to your needs
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    PictureWidget(imagePath: 'assets/images/adda.jpg'),
                    PictureWidget(imagePath: 'assets/images/drw.png'),
                    PictureWidget(imagePath: 'assets/images/bed.png'),
                    PictureWidget(imagePath: 'assets/images/kit.jpg'),
                    PictureWidget(imagePath: 'assets/images/inner.jpg'),

                    // Add more PictureWidget as needed
                  ],
                ),
              ),
              Text(
                'Total Room : 4',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 20,),
              Text(
                'Bed Room : 2',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 20,),
              Text(
                'Kithchen Room : 1',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 20,),
              Text(
                'Kithchen Room : 1',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 20,),
              Text(
                'Bath And Wash Room : 1',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 20,),
              Text(
                "Rent : \$1500",
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 20,),
              Text(
                'Contact Info:',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 20,),
              Text(
                'Mobile Phone:016********',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 20,),
              Text(
                'Google Map Link:********',
                style: Theme.of(context).textTheme.headline6,
              ),

              // Button for Messaging
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MessageScreen()),
                  );
                },
                child: Text('Message'),
              ),

              // Card for Virtual Tour
              Card(
                elevation: 5,
                margin: EdgeInsets.all(16),
                child: ListTile(
                  title: Text('Virtual Tour'),
                  onTap: () {
                    // Handle the virtual tour action
                  },
                ),
              ),

              // Other content of the TaskDetailsScreen
              // ...

            ],
          ),
        ),
      ),
    );
  }
}

class PictureWidget extends StatelessWidget {
  final String imagePath;

  const PictureWidget({required this.imagePath, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: 150, // Adjust the width according to your needs
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Messaging Screen'),
      ),
      body: Center(
        child: Text('Messaging Screen Content'),
      ),
    );
  }
}
