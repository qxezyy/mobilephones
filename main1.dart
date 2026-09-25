import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class CardItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final String sessions;
  final String numberOf;
  final bool big;
  final double titleSize;

  const CardItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.numberOf,
    required this.titleSize,
    this.sessions = 'Sessions',
    this.big = false
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: big ? 360 : 180,
          height: big ? 210 : 130,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
            ),
          ),
        ),
        SizedBox(height: 2),
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            title,
            style: TextStyle(
              fontSize: titleSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 2),
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            subtitle,
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF757575),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Row(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 9),
                  child: Icon(Icons.favorite_border, size: 15),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 8),
                  child: Text(
                    numberOf,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF757575),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2, top: 8),
                  child: Text(
                    sessions,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF757575),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: big ? 200 : 50),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    'Start',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF757575),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 9),
                  child: Icon(
                    Icons.chevron_right,
                    size: 16,
                    color: Color(0xFF757575),
                  ),
                ),
                SizedBox(width: big ? 65 : 8),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Meditate',
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Container(
              padding: const EdgeInsets.only(right: 23),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF039EA2),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      minimumSize: const Size(0, 40),
                    ),
                    child: const Text("All"),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    'Bible in a year',
                    style: TextStyle(
                      color: Color(0xFF039EA2),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 27),
                  const Text(
                    'Dailies',
                    style: TextStyle(
                      color: Color(0xFF039EA2),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 25),
                  const Text(
                    'Minutes',
                    style: TextStyle(
                      color: Color(0xFF039EA2),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 25),
                  const Text(
                    'November',
                    style: TextStyle(
                      color: Color(0xFF039EA2),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const CardItem(
                  title: 'A Song of Moon',
                  subtitle: 'Start with the basics',
                  numberOf: '9',
                  image: 'assets/moon.jpg',
                  titleSize: 22,
                  big: true
                ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Column(
                    children: [
                      CardItem(
                        title: 'The Sleep Hour',
                        subtitle: 'Ashna Mukherjee',
                        numberOf: '3',
                        titleSize: 17,
                        image: 'assets/thesleephour.jpg'
                      ), CardItem(
                        title: 'Relax with Me',
                        subtitle: 'Amanda James',
                        numberOf: '3',
                        titleSize: 17,
                        image: 'assets/relaxwithme.jpg'
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CardItem(
                        title: 'Easy on the Mission',
                        subtitle: 'Peter Mach',
                        numberOf: '5',
                        titleSize: 17,
                        image: 'assets/easyonthemission.jpg',
                        sessions: 'minutes',
                      ), CardItem(
                        title: 'Sun and Energy',
                        subtitle: 'Michael Hiu',
                        numberOf: '5',
                        titleSize: 17,
                        image: 'assets/sunandenergy.jpg',
                        sessions: 'minutes',
                      ),
                    ],
                  ),
              ],)
            ],
          ),
        ),     
      ),
    );
  }
}