
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:photoprofile/featured/homepages/model/text_service.dart';
import 'package:photoprofile/featured/homepages/view/pages/contact/contact_page.dart';
import 'package:photoprofile/featured/homepages/view/widgets/colors_cust.dart';
import 'package:photoprofile/featured/homepages/view/widgets/container_cust.dart';
import 'package:photoprofile/featured/homepages/view/widgets/details_service.dart';
import 'package:photoprofile/featured/homepages/view/widgets/skill_sec.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 23, 28),
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Center(
                child: CircleAvatar(
                  backgroundImage: const AssetImage(
                      "assets/WhatsApp Image 2025-02-13 at 11.14.51_4cb1328c.jpg"),
                  radius: 100,
                ),
              ),
              const SizedBox(height: 10),
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    'PRANAV K',
                    textStyle: TextStyle(
                      color: secondaryclr,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                "ABOUT ME",
                style: TextStyle(
                  color: const Color.fromARGB(255, 155, 149, 128),
                  fontSize: 50,
                  fontWeight: FontWeight.w800,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: "I'm ",
                  style: const TextStyle(color: Colors.white),
                  children: [
                    TextSpan(
                      text: 'Pranav K',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 155, 149, 128),
                      ),
                    ),
                    const TextSpan(
                      text: ', a Flutter Developer',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "I specialize in crafting innovative and user-centric mobile applications. With a keen eye for detail and a passion for technology, I am committed to delivering high-quality solutions that exceed expectations. Leveraging the power of Flutter.",
                style: TextStyle(color: Color.fromARGB(255, 158, 155, 155)),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Education",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
               SizedBox(height: 10),
               ContainerCust(),
               SizedBox(
                height: 20,
               ),
               Stack(
                alignment: Alignment.center,
                children: [
                  Text("SERVICES",
                style: TextStyle(
                  fontSize: 71,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 90, 85, 79))),
                  Column(
                    children: [
                    Text("What I Do",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                    Container(
                      width: 20,
                      height: 2,
                      color: Colors.white,
                    )
                  ],),
                ],
               ),
                SizedBox(
                  height: 20,
                 ),
                 ...data.map((e) => DetailsServiceTile(item: e)).toList(),
                 SizedBox(
                  height: 20,
                 ),

                 Stack(
                alignment: Alignment.center,
                children: [
                  Text("SKILLS",
                style: TextStyle(
                  fontSize: 71,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 90, 85, 79))),
                  Column(
                    children: [
                    Text("My Expertise",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                    Container(
                      width: 20,
                      height: 2,
                      color: Colors.white,
                    )
                  ],),
                ],
               ),

                SizedBox(
                  height: 20,
                 ),
                //  SkillProgressBar(),
                SkillSec(),
                SizedBox(
                  height: 20,
                ),
                Stack(
                alignment: Alignment.center,
                children: [
                  Text("CONTACT",
                style: TextStyle(
                  fontSize: 71,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 90, 85, 79))),
                  Column(
                    children: [
                    Text("Get In Touch",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                    Container(
                      width: 20,
                      height: 2,
                      color: Colors.white,
                    )
                  ],),
                ],
               ),
               SizedBox(height: 20,),
              //  ContactPage(),
              ContactPage()
            ],
          ),
        ),
      ),
    );
  }
}


