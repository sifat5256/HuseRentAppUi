import 'package:flutter/material.dart';
import 'package:renthvaen/ui/screen/editProfileScreen.dart';


class ProfileSummaryCard extends StatelessWidget {
  const ProfileSummaryCard({
    super.key,this.enableOnTap=true
  });
  final bool enableOnTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        if (enableOnTap)
          Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfileScreen()));
      },
      leading: CircleAvatar(
        child: Icon(Icons.person),
      ),
      title: Text(
        "IQRAMUL HASAN SIFAT",
        style:
        TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
      ),
      subtitle: Text(
        'iqramhasan65@gmail.com',
        style: TextStyle(color: Colors.white),
      ),
      trailing:enableOnTap?const Icon(
        Icons.arrow_forward,
        color: Colors.white,
      ):null,
      tileColor: Colors.green,
    );
  }
}