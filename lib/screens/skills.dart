import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF171B22),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   'Habilidades',
          //   style: TextStyle(
          //     fontSize: 14,
          //     color: Colors.white,
          //   ),
          //   textAlign: TextAlign.start,
          // ),
          // SizedBox(height: 10),
          SizedBox(height: 40),
          Text(
            'Skills',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          // Text(
          //   'Tecnologias que utilizo',
          //   style: TextStyle(
          //     fontSize: 26,
          //     fontWeight: FontWeight.bold,
          //     color: Colors.white,
          //   ),
          // ),
          // SizedBox(height: 10),
          // Text(
          //   'Conhecimentos em tecnologias de desenvolvimento web e mobile.',
          //   style: TextStyle(
          //     fontSize: 14,
          //     color: Colors.white,
          //     height: 1.4,
          //   ),
          //   textAlign: TextAlign.start,
          // ),
          SizedBox(height: 26),
          // SizedBox(height: 10),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              Chip(
                label: Text('HTML'),
                backgroundColor: Colors.deepPurple,
                labelStyle: TextStyle(color: Colors.white),
              ),
              Chip(
                label: Text('CSS'),
                backgroundColor: Colors.deepPurple,
                labelStyle: TextStyle(color: Colors.white),
              ),
              Chip(
                label: Text('JavaScript'),
                backgroundColor: Colors.deepPurple,
                labelStyle: TextStyle(color: Colors.white),
              ),
              Chip(
                label: Text('SASS'),
                backgroundColor: Colors.deepPurple,
                labelStyle: TextStyle(color: Colors.white),
              ),
              Chip(
                label: Text('Git'),
                backgroundColor: Colors.deepPurple,
                labelStyle: TextStyle(color: Colors.white),
              ),
              Chip(
                label: Text('GitHub'),
                backgroundColor: Colors.deepPurple,
                labelStyle: TextStyle(color: Colors.white),
              ),
              Chip(
                label: Text('GitLab'),
                backgroundColor: Colors.deepPurple,
                labelStyle: TextStyle(color: Colors.white),
              ),
              Chip(
                label: Text('VueJS'),
                backgroundColor: Colors.deepPurple,
                labelStyle: TextStyle(color: Colors.white),
              ),
              Chip(
                label: Text('Nuxt'),
                backgroundColor: Colors.deepPurple,
                labelStyle: TextStyle(color: Colors.white),
              ),
              Chip(
                label: Text('Dart'),
                backgroundColor: Colors.deepPurple,
                labelStyle: TextStyle(color: Colors.white),
              ),
              Chip(
                label: Text('Flutter'),
                backgroundColor: Colors.deepPurple,
                labelStyle: TextStyle(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
