import 'dart:async';

import 'package:flutter/material.dart';
import 'package:magang/main.dart'; // Import for Timer

void main() {
  runApp(MyApp());
}

class LifestylePage extends StatelessWidget {
  const LifestylePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFF6F4F2),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                gradient: LinearGradient(
                  colors: [Color(0xFFFF0000), Color(0xFF970215)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              padding: EdgeInsets.only(
                top: 40,
                bottom: 116,
                left: 14,
                right: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          _buildProfileIcon(),
                          SizedBox(width: 6),
                          Text(
                            "Arief",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                        size: 18,
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    "2 Layanan terhubung",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 8,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSectionButton("Commerce"),
                      SizedBox(width: 20),
                      _buildSectionButton("Entertainment"),
                    ],
                  ),
                  const SizedBox(height: 2),
                  const SizedBox(height: 2),
                  // Line Separator
                  Container(
                    margin: EdgeInsets.only(left: 110),
                    width: 58,
                    height: 2,
                    color: Colors.white,
                  ),
                  SizedBox(height: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Butuh apa hari ini?",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 14),
                      _buildSearchBox(),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rekomendasi Untuk Kamu",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GridView.count(
                      crossAxisCount: 4,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        _buildCard("Voucher Belanja",
                            'assets/images/voucherbelanja.png'),
                        _buildCard("Traveloka Flight",
                            'assets/images/travelokaflight.jpg'),
                        _buildCard("Traveloka Hotel",
                            'assets/images/travelokahotel.jpg'),
                        _buildCard("Pantau Pesawat",
                            'assets/images/pantaupesawat.jpg'),
                        _buildCard("Gaya Hidup Sehat",
                            'assets/images/gayahidupsehat.png'),
                        _buildCard("Solusi Kesehatan",
                            'assets/images/solusikesehatan.png'),
                        _buildCard("Lari", 'assets/images/lari.jpg'),
                        _buildCard("Semua", 'assets/images/semua.jpg'),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Pantau jadwal pesawat di sini",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  _buildLargeCard([
                    'assets/images/ppdm.png',
                    'assets/images/ppdm.png',
                    'assets/images/ppdm.png',
                  ], "Pantau Penerbanganmu dengan Mudah!"),
                  SizedBox(height: 24),
                  Text(
                    "Lihat Lebih Banyak",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 24),
                  _buildPromotionCard(
                    "Voucher Belanja",
                    "Voucher Diskon ACE Hardware",
                    "Rp 97.500",
                    "Rp 150.000",
                    'assets/images/ace.png',
                  ),
                  SizedBox(height: 24),
                  Text(
                    "Produk Pilihan",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  _buildProductList(),
                  SizedBox(height: 24),
                ],
              ),
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
            _buildBottomNavItem(Icons.home, "Beranda"),
            _buildBottomNavItem(Icons.card_giftcard, "Bell Paket"),
            _buildBottomNavItem(Icons.star, "Reward"),
            _buildBottomNavItem(Icons.settings, "Lifestyle"),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileIcon() {
    return CircleAvatar(
      backgroundColor: Colors.white,
      child: Icon(
        Icons.person,
        color: Colors.grey[700],
      ),
    );
  }

  Widget _buildSectionButton(String title) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 10,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildSearchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.redAccent,
            Colors.red
          ], // Gradient colors for background
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(
            50), // Increased border radius for rounded edges
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Cari layanan atau aplikasi",
                hintStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  color: Colors.white, // White text color to match the design
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(
                  0.2), // Semi-transparent circle background for the icon
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.search,
              color: Colors.white, // White icon color to match the design
              size: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String title, String imagePath) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 10,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildLargeCard(List<String> imagePaths, String text) {
    final PageController _pageController = PageController();
    Timer? _timer;

    // Set up automatic page change
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_pageController.hasClients) {
        int nextPage = _pageController.page!.round() + 1;
        if (nextPage == imagePaths.length) {
          nextPage = 0; // Loop back to the first page
        }
        _pageController.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            child: PageView.builder(
              controller: _pageController, // Attach the controller
              itemCount: imagePaths.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  imagePaths[index],
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPromotionCard(String title, String description, String newPrice,
      String oldPrice, String imagePath) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left Section - Icon with title
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40, // Smaller size for the icon container
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green, // Background color for the icon
                  ),
                  child: Center(
                    child: Icon(Icons.shopping_cart,
                        color: Colors.white, size: 20),
                    // Replace with your desired icon or logo
                  ),
                ),
                SizedBox(height: 8),
                Image.asset(
                  imagePath,
                  width: 80, // Adjusted size to be smaller
                  height: 40,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            SizedBox(width: 16),
            // Center Section - Product Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  // Price Section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        newPrice,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 4), // Adjusted spacing between prices
                      Text(
                        oldPrice,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Right Section - Arrow Icon
            Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.arrow_forward_ios, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Allow horizontal scrolling
      child: Row(
        children: [
          Container(
            width: 160, // Set a fixed width for each product card
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300]!,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/ip15.png',
                  height: 80,
                ),
                SizedBox(height: 8),
                Text(
                  "Iphone 15 PRO",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 10, // Font size for "Mulai dari"
                      color: Colors.black, // Color for "Mulai dari"
                    ),
                    children: [
                      TextSpan(
                        text: "Mulai dari ",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Rp 18.000.000",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14, // Increased font size for price
                          color: Colors.red, // Color for price
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      "Sisa 1",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(
                            colors: [Colors.red, Colors.orange],
                          ),
                        ),
                        child: FractionallySizedBox(
                          alignment: Alignment.centerLeft,
                          widthFactor: 0.7,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 16),
          // Product Card 5
          Container(
            width: 160, // Set a fixed width for each product card
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300]!,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/samsung.png',
                  height: 80,
                ),
                SizedBox(height: 8),
                Text(
                  "Samsung Galaxy A54 5G",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 10, // Font size for "Mulai dari"
                      color: Colors.black, // Color for "Mulai dari"
                    ),
                    children: [
                      TextSpan(
                        text: "Mulai dari ",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Rp 5.849.000",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14, // Increased font size for price
                          color: Colors.red, // Color for price
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      "Sisa 1",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(
                            colors: [Colors.red, Colors.orange],
                          ),
                        ),
                        child: FractionallySizedBox(
                          alignment: Alignment.centerLeft,
                          widthFactor: 0.7,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 16),
          // Product Card 5
          Container(
            width: 160, // Set a fixed width for each product card
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300]!,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/oppo.jpg',
                  height: 80,
                ),
                SizedBox(height: 8),
                Text(
                  "OPPO A58",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 10, // Font size for "Mulai dari"
                      color: Colors.black, // Color for "Mulai dari"
                    ),
                    children: [
                      TextSpan(
                        text: "Mulai dari ",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Rp 2.799.000",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14, // Increased font size for price
                          color: Colors.red, // Color for price
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      "Sisa 1",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(
                            colors: [Colors.red, Colors.orange],
                          ),
                        ),
                        child: FractionallySizedBox(
                          alignment: Alignment.centerLeft,
                          widthFactor: 0.7,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 16),
          // Product Card 2
          Container(
            width: 160, // Set a fixed width for each product card
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300]!,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/vivo.png',
                  height: 80,
                ),
                SizedBox(height: 8),
                Text(
                  "vivo V29e",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 10, // Font size for "Mulai dari"
                      color: Colors.black, // Color for "Mulai dari"
                    ),
                    children: [
                      TextSpan(
                        text: "Mulai dari ",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Rp 4.399.000",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14, // Increased font size for price
                          color: Colors.red, // Color for price
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      "Sisa 1",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(
                            colors: [Colors.red, Colors.orange],
                          ),
                        ),
                        child: FractionallySizedBox(
                          alignment: Alignment.centerLeft,
                          widthFactor: 0.7,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(String title, String imagePath) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: 100,
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavItem(IconData icon, String label) {
    return Expanded(
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
    );
  }
}
