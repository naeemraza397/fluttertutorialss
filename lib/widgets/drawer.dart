import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://thumbs.dreamstime.com/b/flat-male-avatar-image-beard-hairstyle-businessman-profile-icon-vector-179285629.jpg";
    return Drawer(
      child: Container(
        color: Colors.purple.shade900,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.purple.shade900),
                  margin: EdgeInsets.zero,
                  accountName: Text(
                    "NAEEM RAZA",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  accountEmail: Text(
                    "naeemraza397@gmail.com",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w200),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )),
            ListTile(
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                "MailBox",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
