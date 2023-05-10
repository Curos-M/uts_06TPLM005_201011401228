import 'package:flutter/material.dart';

void main() {
  runApp(const uts_06tplm005_201011401228());
}

class uts_06tplm005_201011401228 extends StatefulWidget {
  const uts_06tplm005_201011401228({Key? key}) : super(key: key);

  @override
  State<uts_06tplm005_201011401228> createState() => _MyAppState();
}

class _MyAppState extends State<uts_06tplm005_201011401228> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
          titleSpacing: 25,
          title: Row(
            children: [
              Text(
                "Shoes",
                style: TextStyle(
                  color: Color.fromRGBO(101, 101, 101, 1),
                  fontSize: 45,
                  fontFamily: 'Kanit',
                ),
              ),
              const SizedBox(width: 160),
              CircleAvatar(
                backgroundColor: Colors.deepPurpleAccent,
                radius: 30,
                child: Icon(
                  Icons.person_outline_outlined,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          RoundedBox(
            color: const Color.fromRGBO(210, 198, 230, 1),
            text1: 'Nike Flyknit',
            text2: "Men's Training Shoes",
            text3: '',
            text4: 'Rp 1,729,000',
            imageUrl:
            'https://i.postimg.cc/wjwWy9G4/pngegg.png',
          ),
          const SizedBox(height: 23),
          RoundedBox(
            color: const Color.fromRGBO(213, 249, 242, 1),
            text1: 'Nike Air Zoom Pegasus',
            text2: "Men's Rood Runing Shoes",
            text3: '',
            text4: 'Rp 1,399,000',
            imageUrl:
            'https://i.postimg.cc/T3PKSGJQ/44-440309-nike-shoes-png-transparent-background-nike-shoes-png-removebg-preview.png',
          ),
          const SizedBox(height: 23),
          RoundedBox(
            color: const Color.fromRGBO(251, 233, 233, 1),
            text1: 'Mehoto Air',
            text2: "Mens Running Sneakers",
            text3: '',
            text4: 'Rp 3,399,000',
            imageUrl:
            'https://i.postimg.cc/8zNgGk27/61-Ox4-GXFVUL-AC-UY535.jpg',
          ),
          const SizedBox(height: 23),
          RoundedBox(
            color: const Color.fromRGBO(234, 232, 234, 1),
            text1: 'Nike Free Run 2',
            text2: "Women's Shoes",
            text3: '',
            text4: 'Rp 1,219,000',
            imageUrl:
            'https://i.postimg.cc/jjvsmnCq/27428-5-nike-shoes-transparent-background.png',
          ),
          const SizedBox(height: 23),
          RoundedBox(
            color: const Color.fromRGBO(252, 242, 178, 1),
            text1: 'Nike Waffle One',
            text2: "Men's Shoes",
            text3: '',
            text4: 'Rp 1,729,000',
            imageUrl:
            'https://i.postimg.cc/d1DTSBW9/1635221496shoes-png-image.webp',
          ),
        ],
      ),
    );
  }
}

class RoundedBox extends StatelessWidget {
  final Color color;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String imageUrl;

  const RoundedBox({
    required this.color,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 125,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: -17,
            right: -2,
            child: Image.network(
              imageUrl,
              width: 160,
              height: 160,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 1),
                Text(
                  text2,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  text3,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  text4,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}