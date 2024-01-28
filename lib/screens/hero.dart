import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF171B22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Olá, sou eu',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 10),
          const Text(
            'Marlon Menezes',
            style: TextStyle(
              // decoration: TextDecoration.underline,
              // decorationStyle: TextDecorationStyle.solid,
              // decorationColor: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Desenvolvedor Front-end sempre trazendo tecnologias modernas, buscando implementar novos conhecimentos e trazendo a melhor experiência ao usuário.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              height: 1.4,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 10),
          RichText(
            text: const TextSpan(
              text: 'Atualmente trabalho na ',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                height: 1.4,
              ),
              children: [
                TextSpan(
                  text: 'SapientAG2',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    height: 1.4,
                  ),
                ),
                TextSpan(
                  text:
                      ' onde atuo com desenvolvimento de e-mail marketing, landing pages com e sem integração com APIs, manutenção de sites e portais para diversos clientes como: Honda, Ypê, Bradesco e Unimed.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
