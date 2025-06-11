import 'package:carousel_slider/carousel_slider.dart';
import 'package:finly/theme/color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final String income = "1.000.000";
  final String expanse = "2.000.000";

  final transactions = const [
    {
      "title": "Gaji",
      "subtitle": "Pekerjaan",
      "amount": "2.000.000",
      "isIncome": true,
    },
    {
      "title": "Belanja",
      "subtitle": "Mall",
      "amount": "500.000",
      "isIncome": false,
    },
  ];

  final tips = const [
    {"title": "Cara mengatur keuangan", "image": "assets/gambar_carousel.png"},
    {"title": "Tips menabung cerdas", "image": "assets/gambar_carousel2.png"},
  ];

  void _logout(BuildContext context) {
    Navigator.pop(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = size.width * 0.04;
    final cardHeight = size.height * 0.25;
    final courselHeight = size.height * 0.25;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Hello,',
              style: TextStyle(
                fontSize: 20,
                color: AppColor.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              ' Riyan',
              style: TextStyle(
                fontSize: 20,
                color: AppColor.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/profile'),
            icon: Image.asset('assets/profile.png'),
          ),
        ],
      ),
      backgroundColor: AppColor.primary,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(padding),
              child: Container(
                height: cardHeight,
                padding: EdgeInsets.all(padding),
                decoration: BoxDecoration(
                  color: AppColor.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Balance : ",
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: padding / 2),
                    Text(
                      "Rp. 1.000.000",
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: padding / 2),
                    Row(
                      children: [
                        Icon(Icons.arrow_downward, color: AppColor.white),
                        Text(
                          "Income",
                          style: TextStyle(
                            color: AppColor.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_upward, color: AppColor.white),
                        Text(
                          "Exspanse",
                          style: TextStyle(
                            color: AppColor.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: padding / 2),
                    Row(
                      children: [
                        Text(
                          income,
                          style: TextStyle(
                            color: AppColor.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          expanse,
                          style: TextStyle(
                            color: AppColor.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Transaction List
            const Text(
              "Latest Transactions",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ...transactions.map((tx) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor:
                      (tx['isIncome'] as bool)
                          ? Colors.blue[100]
                          : Colors.red[100],
                  child: Icon(
                    (tx['isIncome'] as bool)
                        ? Icons.arrow_downward
                        : Icons.arrow_upward,
                    color: (tx['isIncome'] as bool) ? Colors.blue : Colors.red,
                  ),
                ),
                title: Text(tx['title'] as String),
                subtitle: Text(tx['subtitle'] as String),
                trailing: Text(
                  "${(tx['isIncome'] as bool) ? '+' : '-'}Rp ${(tx['amount'] as String)}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: (tx['isIncome'] as bool) ? Colors.green : Colors.red,
                  ),
                ),
              );
            }),

            SizedBox(height: size.height * 0.03),
            CarouselSlider(
              options: CarouselOptions(
                height: courselHeight,
                viewportFraction: 0.8,
                enableInfiniteScroll: false,
                enlargeCenterPage: true,
              ),
              items:
                  tips.map((tip) {
                    return Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(
                        horizontal: size.width * 0.01,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: AssetImage(tip['image']!),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.black45,
                          child: Text(
                            tip['title']!,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_outlined),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
