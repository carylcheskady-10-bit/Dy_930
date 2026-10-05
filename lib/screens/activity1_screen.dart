import 'package:flutter/material.dart';

class Activity1Screen extends StatefulWidget {
  const Activity1Screen({super.key});

  @override
  State<Activity1Screen> createState() => _Activity1ScreenState();
}

class _Activity1ScreenState extends State<Activity1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Activity 1")),
      body: Container(
        color: const Color(0xFFFFF0F5), // Light pink background
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40), // Top spacing
            // "Activity 1" Blue Title
            const Text(
              "Activity 1",
              style: TextStyle(
                fontSize: 32,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 12),
            // Subtitle Text
            const Text(
              "Follow this layout step by step",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 40),
            // Left & Right Text Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Left Text", style: TextStyle(fontSize: 22)),
                SizedBox(width: 40), // Space between texts
                Text("Right Text", style: TextStyle(fontSize: 22)),
              ],
            ),
            const SizedBox(height: 40),
            // Yellow Container Box
            Container(
              width: 280,
              height: 280,
              decoration: BoxDecoration(
                color: const Color(0xFFF9C834), // Yellow color
                borderRadius: BorderRadius.circular(20), // Rounded corners
              ),
              child: const Center(
                child: Text(
                  "Container",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
