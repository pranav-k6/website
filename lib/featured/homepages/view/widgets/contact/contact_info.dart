
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "DON'T BE SHY!",
          style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const Text(
          "Feel free to get in touch with me. I am always open to discussing new projects, creative ideas, or opportunities to be part of your visions.",
          style: TextStyle(color: Colors.white70),
        ),
        const SizedBox(height: 20),
        Row(
          children: const [
            Icon(Icons.email, color: Colors.white),
            SizedBox(width: 8),
            Text("pranavk0306@gmail.com", style: TextStyle(color: Colors.white)),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: const [
            Icon(Icons.phone, color: Colors.white),
            SizedBox(width: 8),
            Text("+919207608812", style: TextStyle(color: Colors.white)),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: const [
            // Icon(FontAwesomeIcons.twitter, color: Colors.white),
            // SizedBox(width: 10),
            Icon(FontAwesomeIcons.linkedin, color: Colors.white),
            SizedBox(width: 10),
            Icon(FontAwesomeIcons.github, color: Colors.white),
            SizedBox(width: 10),
            Icon(FontAwesomeIcons.instagram, color: Colors.white),
          ],
        ),
      ],
    );
  }
}
