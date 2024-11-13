import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About Me',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 16, color: Colors.black),
          bodyMedium: TextStyle(fontSize: 18, color: Colors.grey[700]),
          headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      home: AboutPage(),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
      ),
      backgroundColor:
          const Color.fromRGBO(237, 231, 227, 1), // Background baru
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Foto Diri
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/your_photo.jpg'),
            ),
            SizedBox(height: 20),

            // Nama Lengkap dengan kotak latar belakang
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(
                    238, 215, 197, 1), // Background color for the name
                borderRadius: BorderRadius.circular(15), // Rounded corners
              ),
              child: Center(
                child: Text(
                  "Maureen Ghassani Fadhliphya",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: const Color.fromRGBO(162, 62, 72, 1),
                      ),
                  textAlign: TextAlign
                      .center, // Make sure the text is centered horizontally
                ),
              ),
            ),
            SizedBox(height: 10),

            // NRP dengan kotak latar belakang
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(
                    238, 215, 197, 1), // Light background for NRP
                borderRadius: BorderRadius.circular(15), // Rounded corners
              ),
              child: Text(
                "NRP: 5026221193",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: const Color.fromRGBO(162, 62, 72, 1),
                    ),
              ),
            ),
            SizedBox(height: 20),

            // Fun Fact dengan kotak latar belakang
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(
                    238, 215, 197, 1), // Fun Fact background color
                borderRadius: BorderRadius.circular(15), // Rounded corners
              ),
              child: Text(
                "Fun Fact: HUGE movie junkie",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: const Color.fromRGBO(162, 62, 72, 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
