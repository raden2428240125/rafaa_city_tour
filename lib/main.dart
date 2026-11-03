
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'city tour',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('city tour'),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Gambar City Tour
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ClipRect(
                      child: Image.network(
                        'https://picsum.photos/id/162/300/200',
                        width: 300,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),

                    const SizedBox(width: 12),

                    ClipRect(
                      child: Image.network(
                        'https://picsum.photos/id/164/300/200',
                        width: 300,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),

                    const SizedBox(width: 12),

                    ClipRect(
                      child: Image.network(
                        'https://picsum.photos/id/174/300/200',
                        width: 300,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Tagline
              const Text(
                'explore, enjoy, experince.',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              // Deskripsi
              const Text(
                "explore te charm of our city's hidden gems "
                    "and embark on a journey to discover the rich "
                    "cultural heritage, breathtaking landscape, "
                    "and unique experinces that aait you. from "
                    "historc landmarks to vibrants markets and "
                    "serene natural wonders our city offers a "
                    "tapestry of experiences that will captive "
                    "your senses. join us in exploring the beauty "
                    "of our city and create memories that wll last "
                    "a lifetime. come and visit our city's treasures",
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),

            ],
          ),
        ),
      ),
    );
  }
}

