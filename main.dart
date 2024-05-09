import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Shoes'),
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Rama Dinar Sayuto - 211011400501 - 06TLM003',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  ShoeCard(
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlZObU18EvblQvmpB_W4s-0CoQvfAMZX9Ajg&s",
                    shoeName: 'Converse',
                    shoePrice: 'US \$2.795',
                    backgroundColor: Color.fromARGB(255, 36, 36, 29)
                        .withOpacity(0.2), // Background ungu lembut
                  ),
                  ShoeCard(
                    imageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNDyuNXgDlWldoKGO76MNeBq5F1PBMhvOWsQBaru9mVmgBRTVPTfH0hoVQ_j26p6sc0Bk&usqp=CAU',
                    shoeName: 'Adidas',
                    shoePrice: 'US \$8.764',
                    backgroundColor: Color.fromARGB(255, 84, 50, 197)
                        .withOpacity(0.2), // Background cyan
                  ),
                  ShoeCard(
                    imageUrl:
                        'https://images.tokopedia.net/img/cache/700/VqbcmM/2022/10/2/3ff71ade-9b72-4e70-8e56-9580af4c2d2f.jpg',
                    shoeName: 'Reebok',
                    shoePrice: 'US \$3.790',
                    backgroundColor: Color.fromARGB(255, 66, 131, 64)
                        .withOpacity(0.2), // Background cyan
                  ),
                  ShoeCard(
                    imageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1zKz42MyD0y34IDQM511uCzgH3lck6OcyMual-QZCYG2exf0Jobw8FyExCG65A8CrqOs&usqp=CAU',
                    shoeName: 'New Balance',
                    shoePrice: 'US \$6.398',
                    backgroundColor: Color.fromARGB(255, 162, 120, 40)
                        .withOpacity(0.2), // Background cyan
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShoeCard extends StatelessWidget {
  final String imageUrl;
  final String shoeName;
  final String shoePrice;
  final Color backgroundColor;

  const ShoeCard({
    required this.imageUrl,
    required this.shoeName,
    required this.shoePrice,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // Column 1: Name and price
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shoeName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    shoePrice,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white, // Warna teks putih
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 16.0), // Spacer
            // Column 2: Image
            Container(
              width: 100,
              height: 100,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
