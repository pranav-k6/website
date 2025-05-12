
import 'package:flutter/material.dart';
import 'package:photoprofile/featured/homepages/model/text_service.dart';

class DetailsServiceTile extends StatelessWidget {
  final Model item;
  const DetailsServiceTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 120, 119, 115),
      ),
      child: Row(
        children: [
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage(item.imag), fit: BoxFit.contain),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.txt1,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  item.txt2,
                  style: const TextStyle(color: Colors.white70),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
