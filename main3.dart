import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class CardItem extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String price;
  

  const CardItem({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
    
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(width: 12),
          Padding(
          padding: EdgeInsets.only(bottom: 1),
          child: Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          )),
        Padding(
          padding: EdgeInsets.only(bottom: 1),
          child: Text(
          subtitle,
          style: TextStyle(
            fontSize: 11,
            color: Color(0xFFBDBDBD)
          ),
          )),
          ],
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsetsGeometry.only(left: 2),
          child: Text(
            price,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFFF43F5E)
            ),
          )
          ),
          const SizedBox(width: 75)
        
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
          leading: IconButton(
            onPressed: () {},
             icon: const Icon(
              Icons.chevron_left,
              size: 20,
              color: Color(0xFFF43F5E)),
          ),
          title: const Text(
            'Popular Menu',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),  
        ),
        body: Column(
          children: [
              Row(
          children: [
          SizedBox(
            width: 380,
            child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(
                fontSize: 12
              ),
              suffixIcon: const Icon(
                Icons.search,
                color: Color(0xFFBDBDBD)),

              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              contentPadding: const EdgeInsets.only(
                left: 40,
                top: 17,
              )

            ),
          ),
          ),
          SizedBox(width: 30),
          IconButton(
            onPressed: () {},
             icon: const Icon(
              Icons.filter_list,
              size: 20,
              color: Color(0xFFF43F5E)),
          ),
          SizedBox(width: 30),
          ],
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(top: 20, left: 30),
                child: CardItem(
                  image: 'assets/salad1.png', 
                  title: 'Original Salad', 
                  subtitle: 'Lovy Food', 
                  price: '\$8', )),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsetsGeometry.only(top: 20, left: 30),
                    child: CardItem(
                  image: 'assets/salad2.png', 
                  title: 'Fresh Salad', 
                  subtitle: 'Cloudy Resto', 
                  price: '\$10', )
                    ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsetsGeometry.only(top: 20, left: 30),
                    child: CardItem(
                  image: 'assets/icecream.png', 
                  title: 'Yummie Ice Cream', 
                  subtitle: 'Circlo Resto', 
                  price: '\$6', )
                    ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsetsGeometry.only(top: 20, left: 30),
                    child: CardItem(
                  image: 'assets/vegan.png', 
                  title: 'Vegan Special', 
                  subtitle: 'Haty Food', 
                  price: '\$11', )
                    ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsetsGeometry.only(top: 20, left: 30),
                    child: CardItem(
                  image: 'assets/pasta.png', 
                  title: 'Mixed Pasta', 
                  subtitle: 'Recto Food', 
                  price: '\$13', )
                    ),  
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      IconButton(
                        padding: EdgeInsets.only(top: 20, left: 50),
                        onPressed: () {},
                        icon: Icon(Icons.home),
                        color: Color(0xFFF43F5E),
                        iconSize: 25),
                        const SizedBox(width: 20),
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 5),
                          child: Text(
                          'Home',
                          style: TextStyle(
                          color: Color(0xFFF43F5E),
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                          ),
                        ),
                          ),
                        IconButton(
                        padding: EdgeInsets.only(top: 20, left: 50),
                        onPressed: () {},
                        icon: Icon(Icons.shopping_basket),
                        color: Color(0xFFF43F5E),
                        iconSize: 25),
                        const SizedBox(width: 20),
                        IconButton(
                        padding: EdgeInsets.only(top: 20, left: 50),
                        onPressed: () {},
                        icon: Icon(Icons.chat),
                        color: Color(0xFFF43F5E),
                        iconSize: 25),
                        const SizedBox(width: 20),
                        IconButton(
                        padding: EdgeInsets.only(top: 20, left: 50),
                        onPressed: () {},
                        icon: Icon(Icons.person),
                        color: Color(0xFFF43F5E),
                        iconSize: 25),
                  
                  ],) 
          ],
        ),
      ),
    );
  }
}
