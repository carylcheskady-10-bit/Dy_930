import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Hello World",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          Text(
            "How are you?",
            style: TextStyle(color: Colors.purple),
          ),
          SizedBox(
            width: 40,
          ),
          Row(
            children: [
              Text("Hello World",
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold)),
              Text("How are you?",
                  style: TextStyle(
                      color: Colors.red, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 50,
              ),
            ],
          )
        ],
      ),
    );
  }
}
