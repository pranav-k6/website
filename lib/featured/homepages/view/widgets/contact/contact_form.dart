// import 'package:flutter/material.dart';

// class ContactForm extends StatelessWidget {
//   const ContactForm({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final inputDecoration = InputDecoration(
//       filled: true,
//       fillColor: const Color(0xFF0D1224),
//       hintStyle: const TextStyle(color: Colors.grey),
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(8),
//         borderSide: BorderSide.none,
//       ),
//     );

//     return Column(
//       children: [
//         Row(
//           children: [
//             Expanded(child: TextField(decoration: inputDecoration.copyWith(hintText: 'YOUR NAME'))),
//             const SizedBox(width: 20),
//             Expanded(child: TextField(decoration: inputDecoration.copyWith(hintText: 'YOUR EMAIL'))),
//           ],
//         ),
//         const SizedBox(height: 20),
//         TextField(decoration: inputDecoration.copyWith(hintText: 'YOUR SUBJECT')),
//         const SizedBox(height: 20),
//         TextField(
//           maxLines: 6,
//           decoration: inputDecoration.copyWith(hintText: 'YOUR MESSAGE'),
//         ),
//         const SizedBox(height: 20),
//         ElevatedButton.icon(
//           onPressed: () {},
//           icon: const Icon(Icons.send),
//           label: const Text('SEND MESSAGE'),
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.grey,
//             foregroundColor: Colors.white,
//             padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    final inputDecoration = InputDecoration(
      filled: true,
      fillColor: const Color(0xFF0D1224),
      hintStyle: const TextStyle(color: Colors.grey),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
    );

    return Column(
      children: [
        Row(
          children: [
            Expanded(child: TextField(decoration: inputDecoration.copyWith(hintText: 'YOUR NAME'))),
            const SizedBox(width: 20),
            Expanded(child: TextField(decoration: inputDecoration.copyWith(hintText: 'YOUR EMAIL'))),
          ],
        ),
        const SizedBox(height: 20),
        TextField(decoration: inputDecoration.copyWith(hintText: 'YOUR SUBJECT')),
        const SizedBox(height: 20),
        TextField(
          maxLines: 6,
          decoration: inputDecoration.copyWith(hintText: 'YOUR MESSAGE'),
        ),
        const SizedBox(height: 20),
        ElevatedButton.icon(
          onPressed: () {
            // Submit logic here
          },
          icon: const Icon(Icons.send),
          label: const Text('SEND MESSAGE'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          ),
        ),
      ],
    );
  }
}
