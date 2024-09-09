import 'package:flutter/material.dart';
import 'package:magang/belipaket.dart';
import 'package:magang/lifestyle.dart';
import 'package:magang/reward.dart';

void main() {
  runApp(berandascreen());
}

class berandascreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BerandaScreen(),
    );
  }
}

class BerandaScreen extends StatefulWidget {
  @override
  _BerandaScreenState createState() => _BerandaScreenState();
}

class _BerandaScreenState extends State<BerandaScreen> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigate to the appropriate screen
    switch (index) {
      case 0:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => BerandaScreen()));
        break;
      case 1:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => belipaket()));
        break;
      case 2:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => reward()));
        break;
      case 3:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LifestylePage()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF970215), Color(0xFFFF0000)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Icon(Icons.person, color: Colors.black),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Arief',
                    style: TextStyle(fontSize: 16, color: Colors.white)),
                Text('Regular 38 Point',
                    style: TextStyle(fontSize: 12, color: Colors.white70)),
              ],
            ),
            Spacer(),
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 10),
            Icon(Icons.notifications, color: Colors.white),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 340,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF970215), Color(0xFFFF0000)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(40),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(115, 184, 178, 178),
                              Color.fromARGB(115, 184, 178, 178),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 6),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 255, 17, 0),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    'Prabayar',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Text('0812 3997 2181 • Akun utama',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                            Divider(
                              color: Colors.white,
                              thickness: 1,
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Pulsa',
                                        style:
                                            TextStyle(color: Colors.white70)),
                                    Row(
                                      children: [
                                        Text('Rp16.505',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22)),
                                        SizedBox(
                                            width:
                                                8), // Add some spacing between the text and the icon\
                                        Container(
                                          padding: EdgeInsets.all(
                                              4), //Adjust padding as needed
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255,
                                                255,
                                                17,
                                                0), //background color of the circle
                                            shape: BoxShape
                                                .circle, //make the container circular
                                          ),
                                          child: Icon(Icons.add,
                                              color: Colors.white,
                                              size:
                                                  22), // Adjust the icon size and color as needed
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('Kuota Internet',
                                        style:
                                            TextStyle(color: Colors.white70)),
                                    Row(
                                      children: [
                                        Text('4.1 GB',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22)),
                                        SizedBox(
                                            width:
                                                8), // Add some spacing between the text and the icon
                                        Container(
                                          padding: EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                            color:
                                                Color.fromARGB(255, 255, 17, 0),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(Icons.add,
                                              color: Colors.white,
                                              size:
                                                  22), // Adjust the icon size and color as needed
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 14),
                      Container(
                        padding: EdgeInsets.all(12),
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(115, 184, 178, 178),
                              Color.fromARGB(115, 184, 178, 178),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 255, 17, 0),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Text(
                                      'Indihome',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Text('Tagihan',
                                      style: TextStyle(color: Colors.white)),
                                  Text('Internet',
                                      style: TextStyle(color: Colors.white)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('1464 5710 4238',
                                      style: TextStyle(color: Colors.white)),
                                  Text('Rp0',
                                      style: TextStyle(color: Colors.white)),
                                  Text('62.7 GB',
                                      style: TextStyle(color: Colors.white)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 0.0),
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                          // border: Border.all(
                          //   color: Colors.blueGrey, // Warna border
                          //   width: 1.0, // Ketebalan border
                          // ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(
                                  0.2), // Warna bayangan dengan transparansi
                              spreadRadius: 2, // Jarak bayangan dari container
                              blurRadius: 5, // Efek kabur pada bayangan
                              offset: Offset(0,
                                  2), // Posisi bayangan (horizontal, vertical)
                            ),
                          ],
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildIconContainer(
                                  Icons.shopping_bag, 'Beli Paket'),
                              _buildIconContainer(
                                  Icons.map, 'Jelajah Nusantara'),
                              _buildIconContainer(
                                  Icons.payment, 'Bayar Sekaligus'),
                              _buildIconContainer(
                                  Icons.directions_car, 'Auto Gate'),
                              _buildIconContainer(Icons.explore, 'travell'),
                              _buildIconContainer(Icons.payment, 'transaksi'),
                              _buildIconContainer(Icons.lock, 'jaga pulsa'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Rekomendasi Untukmu',
                                style: TextStyle(fontSize: 16)),
                            SizedBox(height: 10),
                            _buildRecommendationCard('PraBayar 6281 2399 7218',
                                '5 GB', '30 Days Internet', 'Rp50.000'),
                            SizedBox(height: 10),
                            _buildRecommendationCard(
                                'PraBayar 6281 2399 7218',
                                '80 Minute',
                                '1 Days Suprise Nelpon Harian',
                                'Rp50.000'),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Container(
                          width: 350,
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Text('Promo Corner', style: TextStyle(fontSize: 16)),
                              SizedBox(height: 10),
                              Center(
                                child: Column(
                                  children: [
                                    Text('Promo corner',
                                        style: TextStyle(fontSize: 16)),
                                    SizedBox(height: 10),
                                    _buildPromoImage(
                                        'assets/images/Rectangle 21.png'),
                                    SizedBox(height: 10),
                                    _buildPromoImage(
                                        'assets/images/Rectangle 22.png'),
                                    SizedBox(height: 10),
                                    _buildPromoImage(
                                        'assets/images/Rectangle 23.png'),
                                    SizedBox(height: 10),
                                    _buildPromoImage(
                                        'assets/images/Rectangle 24.png'),
                                    SizedBox(height: 10),
                                    _buildPromoImage(
                                        'assets/images/Rectangle 25.png'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                'Lagi bosen? Beragam film yang bisa kamu tonton!',
                                style: TextStyle(fontSize: 16)),
                            SizedBox(height: 10),
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 191, 218, 245),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              padding: EdgeInsets.all(
                                  16), //optional:adjust padding as needed
                              child: Row(
                                children: [
                                  Expanded(
                                    child: _buildFilmCard(
                                        'assets/images/Rectangle 36.png'),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: _buildFilmCard(
                                        'assets/images/Rectangle 38.png'),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: _buildFilmCard(
                                        'assets/images/Rectangle 38.png'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFEC0426),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildBottomNavItem(Icons.home, "Beranda", 0),
            _buildBottomNavItem(Icons.card_giftcard, "Beli Paket", 1),
            _buildBottomNavItem(Icons.star, "Reward", 2),
            _buildBottomNavItem(Icons.settings, "Lifestyle", 3),
          ],
          // selectedItemColor: Colors.red[700],
        ),
      ),
    );
  }

  Widget _buildBottomNavItem(IconData icon, String label, int index) {
    return Expanded(
      child: GestureDetector(
        onTap: () => _onItemTapped(index),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 24),
            Text(
              label,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 10,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconContainer(IconData icon, String label) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(right: 10.0), // Margin di sisi kanan
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 20, color: Color.fromARGB(255, 235, 24, 24)),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 10),
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendationCard(
      String title, String data1, String data2, String price) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontSize: 16)),
              SizedBox(height: 5),
              Text(data1,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text(data2, style: TextStyle(fontSize: 16)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(price,
                  style: TextStyle(fontSize: 16, color: Colors.red[700])),
              SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.red[700], // Set the button color to red
                ),
                child: Text(
                  'Beli',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPromoImage(String assetPath) {
    return Image.asset(assetPath, fit: BoxFit.cover);
  }

  Widget _buildFilmCard(String assetPath) {
    return Image.asset(assetPath, fit: BoxFit.cover);
  }
}
