
import 'package:flutter/material.dart';

class SkillProgress {
  final String skill;
  final double percentage;

  SkillProgress({required this.skill, required this.percentage});
}

// Progress bar widget
class SkillProgressBar extends StatelessWidget {
  final SkillProgress skill;

  const SkillProgressBar({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    // Max width to avoid overflow
    double maxWidth = MediaQuery.of(context).size.width / 2 - 60;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                skill.skill,
                style: const TextStyle(color: Colors.white, fontSize: 14),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              '${(skill.percentage * 100).toInt()}%',
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Stack(
          children: [
            Container(
              width: maxWidth,
              height: 8,
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Container(
              width: maxWidth * skill.percentage,
              height: 8,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

// Main skills section
class SkillSec extends StatelessWidget {
   SkillSec({super.key});

  final List<SkillProgress> skills = [
    SkillProgress(skill: "Flutter App (Android, iOS, Web)", percentage: 0.65),
    SkillProgress(skill: "Code Structure & Clean Architecture", percentage: 0.95),
     SkillProgress(skill: "GitHub", percentage: 0.80),
     SkillProgress(skill: "Android Studio", percentage: 0.70),
     SkillProgress(skill: "Html", percentage: 0.80),
     SkillProgress(skill: "C", percentage: 0.80),
    //  SkillProgress(skill: "Cubit", percentage: 0.80),
    //  SkillProgress(skill: "Firebase", percentage: 0.80),
    //  SkillProgress(skill: "Firestore", percentage: 0.80),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      padding: const EdgeInsets.all(20),
      child: Wrap(
        spacing: 50,
        runSpacing: 20,
        children: skills.map((s) {
          return SizedBox(
            width: MediaQuery.of(context).size.width / 2 - 60,
            child: SkillProgressBar(skill: s),
          );
        }).toList(),
      ),
    );
  }
}
