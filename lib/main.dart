import 'package:flutter/material.dart';
import 'package:marlon_portfolio/screens/footer.dart';
import 'package:marlon_portfolio/screens/hero.dart';
import 'package:marlon_portfolio/screens/projects.dart';
import 'package:marlon_portfolio/screens/skills.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Marlon Menezes - Portfolio',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Portfolio'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF171B22),
        centerTitle: true,
        title: Text(
          widget.title,
          style: const TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          color: const Color(0xFF171B22),
          child: Column(
            children: [
              const HeroSection(),
              const SkillsSection(),
              const ProjectSection(),
              FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}
