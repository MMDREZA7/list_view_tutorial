import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:list_view_toturial/components/my_icon.dart';
import 'package:list_view_toturial/models/squre.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List items = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // name of app + notifications + messages
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Social media",
          style: GoogleFonts.dmSerifText(
            fontSize: 22,
            color: Colors.grey[800],
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Icon(
            Icons.favorite_border,
            color: Colors.grey[600],
            size: 30,
          ),
          const SizedBox(width: 20),
          Icon(
            Icons.send,
            color: Colors.grey[600],
            size: 30,
          ),
        ],
      ),

      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          // stories
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemCount: items.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => SqureStory(
                text: 'Story ${items[index]}',
              ),
            ),
          ),

          const SizedBox(height: 10),

          Divider(color: Colors.grey[600]),

          // reels and posts
          Expanded(
            flex: 7,
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) => SqurePost(
                text: 'Post ${items[index]}',
                name: 'Name ${items[index]}',
              ),
            ),
          ),

          // buttons for pages
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(color: Colors.white),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyIcon(
                  icon: Icons.home,
                ),
                MyIcon(
                  icon: Icons.search,
                ),
                MyIcon(
                  icon: Icons.add_box_outlined,
                ),
                MyIcon(
                  icon: Icons.slow_motion_video_rounded,
                ),
                MyIcon(
                  icon: Icons.account_circle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
