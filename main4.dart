import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
             icon: const Icon(
              Icons.arrow_back,
              size: 20,
              color: Color(0xFF5265FF)),
          ),
          title: const Text(
            'Organizer',
              style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              padding: EdgeInsets.only(right: 40),
              icon: const Icon(Icons.more_vert),
              color: Color(0xFF5265FF))
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image(
              width: 200,
              height: 200,
              image: AssetImage('assets/albertik.jpg'),),   
        ),
        SizedBox(height: 10),
        const Align(
          alignment: Alignment.center,
          child: Text(
          'Albert Flores',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '2.368',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2),
              Text(
                'Followers',
                style: TextStyle(
                  fontSize: 12,
              )
            )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '346',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2),
              Text(
                'Following',
                style: TextStyle(
                  fontSize: 12,
              )
            )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '13',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2),
              Text(
                'Events',
                style: TextStyle(
                  fontSize: 12,
              )
            )
            ],
          )
        ],
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF5265FF),
                foregroundColor: Colors.white,
                fixedSize: const Size(170, 40)
              ),
               child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.person_add_alt_1,
                  size: 15),
                  SizedBox(width: 5),
                  Text('Follow')
                ],
               )),
              const SizedBox(width: 20),
              ElevatedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                fixedSize: const Size(170, 40),
                backgroundColor: Colors.white,
                foregroundColor: Color(0xFF5265FF),
                side: const BorderSide(
                  color: Color(0xFF5265FF),
                  width: 2
                )
              ),
               child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.message,
                  size: 15),
                  SizedBox(width: 5),
                  Text('Messages')
                ],
               )
            ),
          
          ], 
        ),
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF5265FF),
                foregroundColor: Colors.white,
                fixedSize: const Size(120, 40),
              ),
              child: Text(
                'About',
                style: TextStyle(
                  fontWeight: FontWeight.w700
                ),
              ),
            ),
            const SizedBox(width: 15),
            ElevatedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                fixedSize: const Size(120, 40),
                backgroundColor: Colors.white,
                foregroundColor: Color(0xFF5265FF),
                side: const BorderSide(
                  color: Color(0xFF5265FF),
                  width: 2
                )
              ),
               child: Text(
                'Events',
                style: TextStyle(
                  fontWeight: FontWeight.w700
                ),
              ),
            ),
            const SizedBox(width: 15),
            ElevatedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                fixedSize: const Size(120, 40),
                backgroundColor: Colors.white,
                foregroundColor: Color(0xFF5265FF),
                side: const BorderSide(
                  color: Color(0xFF5265FF),
                  width: 2
                )
              ),
               child: Text(
                'Reviews',
                style: TextStyle(
                  fontWeight: FontWeight.w700
                ),
              ),
            ),
        ],
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 5),
            Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
        'sed do eiusmod tempor incididunt ut labore et dolore '
        'magna aliqua. Ut enim ad minim veniam, quis nostrud '
        'exercitation ullamco laboris nisi ut Lorem ipsum dolor sit '
        'amet, consectetur adipiscing elit, sed do eiusmod '
        'tempor incididunt ut labore et dolore magna aliqua.',
              style: TextStyle(
                fontSize: 12,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 2),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              child: const Text(
                'Read more...',
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xFF5265FF),
                  fontWeight: FontWeight.bold
                ),
              ))
          ],
        ),
          ),
        
      ]  
      )
      )
    );
  }
}
