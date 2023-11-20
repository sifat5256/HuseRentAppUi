
import 'package:flutter/material.dart';
import 'package:renthvaen/ui/widget/ProfileSummaryCard.dart';


class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              ProfileSummaryCard(
                enableOnTap: false,
              ),
              Expanded(
                child:SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 45,
                        ),
                        Row(
                          children: [
                            Text(
                                "See Your All Notification",
                                style:Theme.of(context).textTheme.titleMedium
                            ),
                            IconButton(onPressed: (){}, icon: Icon(Icons.notification_add_outlined))
                          ],
                        ),

                        SizedBox(
                          height: 45,
                        ),
                        Text(
                            "Update Profile",
                            style:Theme.of(context).textTheme.titleLarge
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Container(
                          height: 55,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)

                          ),
                          child: Row(
                            children: [
                              Expanded(
                                  flex:1,
                                  child:Container(
                                    height: 55,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(8),bottomLeft: Radius.circular(8))
                                    ),
                                    child: Text('Photo',style: TextStyle(color: Colors.white),),
                                    alignment: Alignment.center,
                                  )),
                              Expanded(
                                  flex:3,
                                  child:Container(
                                    padding: EdgeInsets.all(8),
                                    child: Text('Upload Your Photo'),
                                  ))
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                                hintText: 'Email'
                            )
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                                hintText: 'First Name'
                            )
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                                hintText: 'Last Name'
                            )
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                                hintText: 'Mobile'
                            )
                        ),

                        const SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                                hintText: 'Password'
                            )
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(onPressed: (){}, child: Text('Updated'))),




                      ],
                    ),
                  ),
                ),),
            ],
          )

      ),
    );
  }
}
