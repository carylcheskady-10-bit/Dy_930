import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: 550,
          height: 550,
          margin: EdgeInsets.all(20),
          color: Colors.purple,
          child: Column(children: [
            Text("Hello"),
            Text("Hello"),
          ]),
        ),
      ],
    ));
  }
}
