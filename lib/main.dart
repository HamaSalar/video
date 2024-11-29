import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          title: const Text('Lab10'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            fixedColor: Colors.black,
            currentIndex: 1,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.info), label: "")
            ]),
        body: ListPage(),
      ),
    );
  }
}

class ListPage extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'name': 'TCI',
      'image': 'assets/images/TCI.png',
      'price': '\$1000',
      'icon': Icons.castle,
    },
    {
      'name': 'IT',
      'image': 'assets/images/TCI.png',
      'price': '\$700',
      'icon': Icons.settings,
    },
    {
      'name': 'Network',
      'image': 'assets/images/TCI.png',
      'price': '\$500',
      'icon': Icons.wifi,
    },
  ];

  ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: items.map((item) {
              return Container(
                padding: const EdgeInsets.all(20),
                margin:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 13, 85, 144),
                  border: Border.all(color: Colors.blue, width: 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      item['image']!,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            item['name']!,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            item['price']!,
                            style: const TextStyle(
                                fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Icon(item['icon'], color: Colors.white, size: 40),
                  ],
                ),
              );
            }).toList(),
          ),
          const Text(
            "Create  by:  \n 1- Muhammed Abubakr rasul \n 2- Muhammed Salar muhammed \n 3- Karmad jasm sadraden \n 4- balen muhammed ali \n 5- Dyako kamaran ali ",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
