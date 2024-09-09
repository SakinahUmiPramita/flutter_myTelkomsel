import 'package:flutter/material.dart';
import 'dart:async';

import 'package:magang/belipaket.dart';
import 'package:magang/beranda.dart';
import 'package:magang/lifestyle.dart'; // Replace with the correct imports

void main() {
  runApp(reward());
}

class reward extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RewardScreen(),
    );
  }
}

class RewardScreen extends StatefulWidget {
  @override
  _RewardScreenState createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  int _selectedIndex = 0; // Default to 'Tukar Point'
  final PageController _pageController = PageController();
  Timer? _autoPlayTimer;

  @override
  void initState() {
    super.initState();
    _startAutoPlay();
  }

  void _startAutoPlay() {
    _autoPlayTimer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_pageController.hasClients) {
        final nextPage = (_pageController.page! + 1).toInt() % 2;
        _pageController.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _autoPlayTimer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    if (index == 1 || index == 3) {
      setState(() {
        _selectedIndex = index;
      });

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
  }

  @override
  Widget build(BuildContext context) {
    Color activeColor = Colors.red;
    Color inactiveColor = Colors.grey;

    return Scaffold(
      body: Column(
        children: [
          // Top promotional section with banner
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red.shade600, Colors.red.shade400],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 10),
                Container(
                  height: 120, // Increase height for better image display
                  child: PageView(
                    controller: _pageController,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'images/makanan.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/images/ads.png', // Replace with the second image path
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '38 Point',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Kadaluarsa 31 Des 2024',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            'Tambah Point',
                            style: TextStyle(color: activeColor),
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            'Riwayat',
                            style: TextStyle(color: activeColor),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Tabs Section (Tukar Point / Reward Saya)
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            color: Colors.grey.shade200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildTabItem(context, 'Tukar Point', _selectedIndex == 0,
                    activeColor, inactiveColor),
                _buildTabItem(context, 'Reward Saya', _selectedIndex == 1,
                    activeColor, inactiveColor),
              ],
            ),
          ),

          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Ketik katamu dan temukan rewardmu',
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          // Reward Sections like in the image
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                _buildRewardSection('Airport Lounge Prestige', [
                  _buildRewardItem(
                    'Airport Lounge Telkomsel Prestige',
                    'assets/images/airport(2).png',
                    '',
                    '',
                  ),
                ]),
                SizedBox(height: 16),
                _buildRewardSection('Spesial Buat Kamu', [
                  _buildRewardItem(
                    'Diskon Potongan 40%',
                    'images/makanan.jpeg',
                    '5 Poin',
                    'Maks. 9.000',
                  ),
                  _buildRewardItem(
                    'Voucher Diskon Rp 100.000 Semua Kursus',
                    'assets/images/image_26.png',
                    '10 Poin',
                    'Semua Kursus',
                  ),
                  _buildRewardItem(
                    'Akses 7 Hari Gratis',
                    'assets/images/akses7.png',
                    '7 Poin',
                    'Semua Outlet',
                  ),
                ]),
                SizedBox(height: 16),
                _buildRewardSection('Undi-Undi Hepi', [
                  _buildRewardItem(
                    'Cek Pemenang Undi-Undi Hepi',
                    'assets/images/undiundihepi.png',
                    '1 Poin',
                    '',
                  ),
                  _buildRewardItem(
                    'UUH - Honda WRV',
                    'assets/images/hondawrv.png',
                    '10 Poin',
                    '',
                  ),
                  _buildRewardItem(
                    'UUH Yamaha NMax',
                    'assets/images/nmax.png',
                    '7 Poin',
                    '',
                  ),
                ]),
                _buildRewardSection('Tambah Hepi', [
                  _buildRewardItem(
                    'Tambah Hepi 15 GB Khusus Pengguna Pak...',
                    'assets/images/hepi.png',
                    '10 poin',
                    '',
                  ),
                ]),
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
            Icon(icon,
                size: 24,
                color: _selectedIndex == index ? Colors.red : Colors.black),
            Text(
              label,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 10,
                color: _selectedIndex == index ? Colors.red : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

 Widget _buildRewardSection(String title, List<Widget> rewardItems) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: rewardItems,
        ),
      ],
    );
  }

  Widget _buildRewardItem(String title, String imagePath, String points, String description) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(fontSize: 12),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 4),
            Text(
              points,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            Text(
              description,
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem(
      BuildContext context, String label, bool isActive, Color activeColor, Color inactiveColor) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = label == 'Tukar Point' ? 0 : 1;
        });
      },
      child: Text(
        label,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: isActive ? activeColor : inactiveColor,
        ),
      ),
    );
  }
}
