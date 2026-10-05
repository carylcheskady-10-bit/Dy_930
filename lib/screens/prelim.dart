import 'package:flutter/material.dart';

class PrelimExamScreen extends StatefulWidget {
  const PrelimExamScreen({Key? key}) : super(key: key);

  @override
  State<PrelimExamScreen> createState() => _PrelimExamScreenState();
}

class _PrelimExamScreenState extends State<PrelimExamScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8FA),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          const Text(
            "Prelim Exam",
            style: TextStyle(
              fontSize: 22,
              color: Color(0xFF2196F3),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Caryl Cheska G. Dy",
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 30),
          Container(
            width: 300,
            height: 300,
            color: const Color(0xFF03A9F4),
            child: const Center(
              child: Text(
                "BOX 1",
                style: TextStyle(fontSize: 22),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                color: const Color(0xFF03A9F4),
                child: const Center(
                  child: Text(
                    "BOX 2",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
              const SizedBox(width: 30),
              Container(
                width: 300,
                height: 300,
                color: const Color(0xFF03A9F4),
                child: const Center(
                  child: Text(
                    "BOX 3",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
