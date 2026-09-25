import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class CardItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;

  const CardItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
        padding: EdgeInsets.only(top: 20, left: 20),
        child: 
          ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: Colors.white,
            fixedSize: const Size (35, 35),
            padding: EdgeInsets.zero,
            minimumSize: const Size(35, 35),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            )
          ),
           child: Icon(
            Icons.play_arrow_outlined,
            size: 20
            )
        ),
        ),
        const SizedBox(height: 2),
        Column(
          children: [
            Padding(
          padding: EdgeInsets.only(right: 10,top: 18),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight:  FontWeight.bold,
            )
          ),
          ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            subtitle,
            style: TextStyle(
              fontSize: 11,
              color: Color(0xFF757575)
            )
          ),
          )  
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, left: 80),
          child: 
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_horiz),
              style: IconButton.styleFrom(
                foregroundColor: const Color(0xFFBDBDBD)
              )
          )
        )
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
        body: Padding(
          padding: EdgeInsets.only(top: 25, left: 75),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 330,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/krytoichel.jpg',
                    )
                  )
                ),
              ),
              const SizedBox(height: 2),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 27),
                child: Text(
                  'Peter Mach',
                  style: TextStyle(
                    fontSize: 11,
                    color: Color(0xFF757575)
                  ),
                ),
                ),
                const SizedBox(height: 2),
                const Padding(
                padding: EdgeInsets.only(left: 27),
                child: Text(
                  'Mind Deep Relax',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                ),
                const SizedBox(height: 2),
                const Padding(
                padding: EdgeInsets.only(left: 27),
                child: Text(
                  'Join the Community as we prepare over 33 days\n to relax and feel joy with the mind and happnies\n session across the World.',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                ),
                const SizedBox(height: 2),
                 Padding(
                  padding: EdgeInsets.only(left: 27, top: 20),
                  child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF039EA2),
                    foregroundColor: Colors.white,
                    minimumSize: const Size(300, 45)
                  ), 
                  child: Row (
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.play_arrow_outlined),
                      SizedBox(width: 6),
                      Text('Play Next Session')
                    ],)
                  )
                  ),
                  const SizedBox(height: 2),
                  CardItem(title: 'Sweet Memories', subtitle: 'December 29 Pre-Launch', color: Color(0xFF2F80ED),),
                  CardItem(title: 'A Day Dream', subtitle: 'December 29 Pre-Launch', color: Color(0xFF039EA2),),
                  CardItem(title: 'Mind Explore', subtitle: 'December 29 Pre-Launch', color: Color(0xFFF09235)),
            ],
          ),)
      )
    );
  }
}
