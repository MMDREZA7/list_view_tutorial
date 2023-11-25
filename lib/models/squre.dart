import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SqurePost extends StatelessWidget {
  final String name;
  final String text;
  const SqurePost({
    super.key,
    required this.text,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      height: 400,
      decoration: BoxDecoration(
        color: Colors.grey[700],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  shape: BoxShape.circle,
                ),
                child: const Text(
                  'user',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                name,
                style: GoogleFonts.aBeeZee(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.grey[200],
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 25,
              )
            ],
          ),
          const SizedBox(height: 150),
          Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey[200],
            ),
          ),
        ],
      ),
    );
  }
}

class SqureStory extends StatelessWidget {
  final String text;
  const SqureStory({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.grey[400],
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
