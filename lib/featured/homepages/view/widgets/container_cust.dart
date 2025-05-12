

import 'package:flutter/material.dart';

import 'package:photoprofile/featured/homepages/model/text_det.dart'; 

class ContainerCust extends StatelessWidget {
  const ContainerCust({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: data.map((item) {
          return Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 120, 119, 115),
            ),
            
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10),
            margin: const EdgeInsets.only(bottom: 10), 
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Positioned(
                  top: 10,
                  left: 0,
                  child: Container( 
                    height: 35,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 195, 192, 192),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      item.title, 
                      style:  TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Positioned(
                  top: 55,
                  left: 0,
                  child: Text(
                    item.title2,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  top: 80,
                  left: 0,
                  child: Text(
                    item.title3, 
                    style: const TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ),
              ],
            ),
          );
        }).toList(), 
      ),
    );
  }
}


