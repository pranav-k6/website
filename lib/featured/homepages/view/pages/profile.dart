
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:photoprofile/featured/homepages/view/widgets/colors_cust.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 23, 28),
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Text('data', style: TextStyle(color: secondaryclr)),
                const SizedBox(width: 16), 
                Text('data', style: TextStyle(color: secondaryclr)),
                const SizedBox(width: 16),
                Text('data', style: TextStyle(color: secondaryclr)),
              ],
            ),
          ),
        ],
      ),
      
      body: 
      Column(
        children: [
          SizedBox(height: 20,),
          Center(child: CircleAvatar(backgroundImage: AssetImage("assets/WhatsApp Image 2025-02-13 at 11.14.51_4cb1328c.jpg"),
            radius: 100,)),
            SizedBox(height: 10,),
            AnimatedTextKit(animatedTexts: [
              TyperAnimatedText('PRANAV K',textStyle: TextStyle(color: secondaryclr,
            fontSize: 20,
            fontWeight: FontWeight.w900),speed: const Duration(milliseconds: 100),),
            ]),
            SizedBox(
              height: 20,
            ),
            Text("ABOUT ME",style: TextStyle(
              color: const Color.fromARGB(255, 155, 149, 128),
              fontSize: 50,
              fontWeight: FontWeight.w800
            ),),
            RichText(text: TextSpan(
              text: "I'm ",
              style: TextStyle(color: Colors.white,
              ),
              children: [TextSpan(
                text: 'Pranav K',style: TextStyle(
                  color: const Color.fromARGB(255, 155, 149, 128),
                ),
                
              ),
              TextSpan(
                text: ',a Flutter Developer',style: TextStyle(
                  color: Colors.white,
                ),
              )
              ]
            ))
            


            
        
          

        ],
      )
    );
  }
}
