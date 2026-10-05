import 'package:flutter/material.dart';

class Newsfeedcomponent extends StatelessWidget {
  final String? username;
  final String? status;
  final String? numberoflikes;
  final String? numberofcomments;
  final String? numberofshares;
  final String? timeposted;

  const Newsfeedcomponent({
    super.key,
    this.username,
    this.status,
    this.numberoflikes,
    this.numberofcomments,
    this.numberofshares,
    this.timeposted,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // --- Profile Section ---
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person_outline),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(username ?? "John Doe",
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(timeposted ?? "Just now",
                    style: const TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
            trailing: const Icon(Icons.more_vert),
          ),
          //
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              status ?? "This is a sample status.",
              style: const TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(height: 15),

          // --- Image Area ---
          Container(
            width: double.infinity,
            height: 330,
            decoration: const BoxDecoration(
              color: Colors.lightGreen,
            ),
            child: const Center(
              child: Icon(
                Icons.image,
                size: 80,
                color: Colors.white,
              ),
            ),
          ),

          // --- Interaction Bar ---
          ListTile(
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.thumb_up_alt_outlined),
                const SizedBox(width: 5),
                Text(numberoflikes ?? "0"),
              ],
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.comment_outlined),
                const SizedBox(width: 5),
                Text(numberofcomments ?? "0"),
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.share_outlined),
                const SizedBox(width: 5),
                Text(numberofshares ?? "0"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
