import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterSection extends StatelessWidget {
  FooterSection({super.key});

  final _linkedin = Uri.parse('https://www.linkedin.com/in/marlonmenezes/');
  final _github = Uri.parse('https://github.com/SouEuMarlon');
  final _email = Uri.parse('mailto: marlon.menezes@outlook.com');

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF171B22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          const Text(
            'Contato',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Entre em contato comigo',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              height: 1.4,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 26),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.deepPurple,
                ),
                onPressed: () {
                  launchUrl(_linkedin, mode: LaunchMode.externalApplication);
                },
                icon: const Icon(FontAwesomeIcons.linkedin),
                label: const Text('Linkedin'),
              ),
              TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.deepPurple,
                ),
                onPressed: () {
                  launchUrl(_github, mode: LaunchMode.externalApplication);
                },
                icon: const Icon(FontAwesomeIcons.github),
                label: const Text(
                  'Github',
                ),
              ),
              TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.deepPurple,
                ),
                onPressed: () {
                  launchUrl(_email);
                },
                icon: const Icon(FontAwesomeIcons.envelope),
                label: const Text('E-mail'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
