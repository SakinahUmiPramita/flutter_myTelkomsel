import 'package:flutter/material.dart';
import 'package:magang/beranda.dart';
import 'package:magang/lifestyle.dart';
import 'package:magang/reward.dart';

void main() {
  runApp(belipaket());
}

class belipaket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BeliPaketScreen(),
    );
  }
}

class BeliPaketScreen extends StatefulWidget {
  @override
  _BeliPaketScreenState createState() => _BeliPaketScreenState();
}

class _BeliPaketScreenState extends State<BeliPaketScreen> {
  int _selectedIndex = 1; // Default selected index (Beli Paket page)

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
      body: Column(
        children: [
          // Top section with gradient background
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.orange.shade600, Colors.red.shade400],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 40),
                // Beli untuk section
                Column(
                  children: [
                    Text(
                      'Beli untuk',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                        color: Color(0xFFD98955),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              'PraBayar',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '081 23997 2181',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildTopButton(
                        context, Icons.search, 'Cari Paket', SearchScreen()),
                    buildTopButton(
                        context, Icons.add, 'Isi Pulsa', TopUpScreen()),
                    buildTopButton(context, Icons.card_giftcard, 'Kirim hadiah',
                        GiftScreen()),
                  ],
                ),
              ],
            ),
          ),

          // Category tabs
          SizedBox(height: 26),
          Container(
            height: 55,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 10),
              children: [
                buildCategoryTab('For You', Icons.card_giftcard, true),
                buildCategoryTab('Internet', Icons.public, false),
                buildCategoryTab('Video', Icons.play_circle_filled, false),
                buildCategoryTab('Roaming', Icons.language, false),
                buildCategoryTab('Digital Hub', Icons.hub, false),
                buildCategoryTab('Games', Icons.videogame_asset, false),
                buildCategoryTab('Musik', Icons.music_note, false),
                buildCategoryTab('Kesehatan', Icons.local_hospital, false),
                buildCategoryTab('Belajar / Kerja', Icons.work, false),
                buildCategoryTab('Telepon & Sms', Icons.phone, false),
              ],
            ),
          ),

          // Scrollable offers section
          SizedBox(height: 10),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              children: [
                // Add the special text widget
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    'Spesial Untuk Kamu',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                buildOfferCard(
                    'Eksklusif MyTelkomsel 5GB + 30 Days', 'Rp 50.000', true),
                buildOfferCard(
                    'Surprise Deal Nelpon Harian 80 menit Rp 1.500 + 1 Days',
                    'Rp 1.500',
                    false),
                buildOfferCard(
                    'Combo Spesial 17 GB + 30 Days', 'Rp 83.000', false),
                buildOfferCard(
                    'Super Seru 2.5 GB + 28 GB Days', 'Rp 50.000', false),
                buildOfferCard(
                    'Super Seru 25 GB + 28 Days', 'Rp 83.000', false),
                buildTopUpGames(),
                SizedBox(height: 20),
                buildTelkomselServices(),
                buildMyAdsBanner(),
              ],
            ),
          ),
        ],
      ),
      // Bottom Navigation Bar
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
}

Widget buildTopButton(
    BuildContext context, IconData icon, String label, Widget destination) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => destination),
      );
    },
    child: Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(icon, color: Colors.red),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
  );
}

Widget buildCategoryTab(String label, IconData icon, bool isActive) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
    margin: EdgeInsets.symmetric(horizontal: 5),
    decoration: BoxDecoration(
      color: isActive ? Colors.red : Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Row(
      children: [
        Icon(icon, color: isActive ? Colors.white : Colors.red),
        SizedBox(width: 8),
        Text(
          label,
          style: TextStyle(
            color: isActive ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}

Widget buildOfferCard(String title, String price, bool isSoldOut) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 8),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: isSoldOut
                          ? Colors.blue.withOpacity(0.1)
                          : Colors.blue.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          isSoldOut ? Icons.lock : Icons.thumb_up,
                          color: Colors.blue,
                          size: 16,
                        ),
                        SizedBox(width: 4),
                        Text(
                          isSoldOut ? 'Produk telah diperbarui' : 'Best Deal',
                          style: TextStyle(color: Colors.blue, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                price,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget buildTopUpGames() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Top Up Games',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Tunggu apa yuk top up games favoritmu!',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 10),
      Container(
        height: 180,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 16),
          children: [
            buildGameCard('assets/images/ml.jpg', 'Mobile Legends', 'MLBB'),
            buildGameCard('assets/images/ff.jpg', 'Free Fire', 'FREE FIRE'),
            buildGameCard('assets/images/codm.jpg', 'Call Of Duty', 'CODM'),
            buildGameCard('assets/images/revelation.jpg', 'Revelation Mobile', 'RV'),
            buildGameCard('assets/images/unipin.jpg', 'Unipin', 'UNIPIN'),
          ],
        ),
      ),
    ],
  );
}

Widget buildGameCard(String imagePath, String gameName, [String tag = '']) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 8),
    width: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      gradient: LinearGradient(
        colors: [Colors.orange.shade400, Colors.deepOrange.shade700],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 5,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                if (tag.isNotEmpty)
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        tag,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              gameName,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildTelkomselServices() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildServiceCard('One', Icons.dashboard, Colors.red),
        buildServiceCard('PraBayar', Icons.home, Colors.blue),
        buildServiceCard('Halo', Icons.phone, Colors.orange),
      ],
    ),
  );
}

Widget buildServiceCard(String serviceName, IconData icon, Color color) {
  return Expanded(
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(height: 8),
          Text(
            serviceName,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    ),
  );
}

Widget buildMyAdsBanner() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
    child: Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/ads.png', // Make sure this path is correct
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget SearchScreen() => Scaffold(body: Center(child: Text('Search Screen')));
Widget TopUpScreen() => Scaffold(body: Center(child: Text('Top Up Screen')));
Widget GiftScreen() => Scaffold(body: Center(child: Text('Gift Screen')));
Widget MailScreen() => Scaffold(body: Center(child: Text('Mail Screen')));
Widget LifestyleScreen() =>
    Scaffold(body: Center(child: Text('Lifestyle Screen')));
