import 'package:dy_930/components/globalappbar_component.dart';
import 'package:dy_930/components/newsfeedcomponent.dart';
import 'package:flutter/material.dart';

class NewsFeedScreen extends StatefulWidget {
  const NewsFeedScreen({Key? key}) : super(key: key);

  @override
  State<NewsFeedScreen> createState() => _NewsFeedScreenState();
}

class _NewsFeedScreenState extends State<NewsFeedScreen> {
  final List<Map<String, String>> NewsFeed = [
    {
      "username": "John Doe",
      "status": "Having a great day!",
      "likes": "120",
      "comments": "25",
      "shares": "10",
      "timeposted": "2 hours ago"
    },
    {
      "username": "Jane Smith",
      "status": "Learning Flutter is fun!",
      "likes": "250",
      "comments": "40",
      "shares": "15",
      "timeposted": "3 hours ago"
    },
    {
      "username": "Michael Cruz",
      "status": "Working on my new project.",
      "likes": "89",
      "comments": "12",
      "shares": "4",
      "timeposted": "5 hours ago"
    },
    {
      "username": "Alex Santos",
      "status": "Flutter development today!",
      "likes": "300",
      "comments": "50",
      "shares": "20",
      "timeposted": "6 hours ago"
    },
    {
      "username": "Sarah Lee",
      "status": "Coffee and code ☕💻",
      "likes": "412",
      "comments": "67",
      "shares": "32",
      "timeposted": "8 hours ago"
    },
    {
      "username": "Mark Reyes",
      "status": "Debugging is my superpower 😅",
      "likes": "156",
      "comments": "21",
      "shares": "8",
      "timeposted": "10 hours ago"
    },
    {
      "username": "Jenny Tan",
      "status": "New UI design done ✨",
      "likes": "523",
      "comments": "78",
      "shares": "45",
      "timeposted": "12 hours ago"
    },
    {
      "username": "Carl Rivera",
      "status": "Deployed first app today! 🚀",
      "likes": "678",
      "comments": "92",
      "shares": "61",
      "timeposted": "1 day ago"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBarComponent(),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: NewsFeed.length,
        itemBuilder: (context, index) {
          final post = NewsFeed[index];
          return Newsfeedcomponent(
            username: post["username"],
            status: post["status"],
            numberoflikes: post["likes"],
            numberofcomments: post["comments"],
            numberofshares: post["shares"],
            timeposted: post["timeposted"],
          );
        },
      ),
    );
  }
}
