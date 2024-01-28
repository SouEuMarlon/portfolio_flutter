// ignore_for_file: library_private_types_in_public_api, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_sanity/flutter_sanity.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectSection extends StatefulWidget {
  const ProjectSection({Key? key}) : super(key: key);

  @override
  _ProjectSectionState createState() => _ProjectSectionState();
}

class _ProjectSectionState extends State<ProjectSection> {
  final sanityClient = SanityClient(
    dataset: 'production',
    projectId: '4mmh01wh',
  );

  List<Map<String, dynamic>> workCards = [];

  @override
  void initState() {
    super.initState();
    fetchSanityData();
  }

  Future<void> fetchSanityData() async {
    final response = await sanityClient.fetch('*[_type == "workCard"]');
    setState(() {
      workCards = List<Map<String, dynamic>>.from(response);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          const Text(
            'Projects',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          workCards.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : CarouselSlider.builder(
                  itemCount: workCards.length,
                  itemBuilder:
                      (BuildContext context, int index, int realIndex) {
                    final String tag = workCards[index]['tag'];
                    final String imageUrl = workCards[index]['imageUrl'];
                    final String title = workCards[index]['title'];
                    final String? url = workCards[index]['url'];

                    return url != null && url.isNotEmpty
                        ? GestureDetector(
                            onTap: () {
                              print('Abrir $url');
                              launch(url);
                            },
                            child: buildCard(tag, imageUrl, title),
                          )
                        : buildCard(tag, imageUrl, title);
                  },
                  options: CarouselOptions(
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                  ),
                ),
        ],
      ),
    );
  }

  Widget buildCard(String tag, String imageUrl, String title) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.deepPurple,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              tag.toUpperCase(),
              style: const TextStyle(
                fontSize: 13,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.network(imageUrl),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
