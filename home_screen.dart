import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/logo.png'), 
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/bannerimage.png', 
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Our Brands',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  brandCard('assets/images/maxco.png', 'MAX&Co'), 
                  brandCard('assets/images/penny.png', 'PENNYBLACK'),
                  brandCard('assets/images/liujo.png', 'LIU JO'),
                ],
              ),
            ),
            
            sectionTitle('Suggested For You'),
            SizedBox(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  productCard('assets/images/pennybrown.png', 'Pennyblack Brown Black', '₹ 75.000'),
                  productCard('assets/images/maxblue.png', 'Max & Co Sporty', '₹ 75.000'),
                ],
              ),
            ),
            
           
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/summerpic.png', 
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            
            sectionTitle('Bestsellers'),
            SizedBox(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  productCard('assets/images/winter.png', 'Max & Co Winter', '₹ 75.000'),
                  productCard('assets/images/summer.png', 'Max & Co Summer', '₹ 75.000'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            'View All',
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }

  Widget brandCard(String imageUrl, String brandName) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imageUrl), 
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(brandName),
        ],
      ),
    );
  }

  Widget productCard(String imageUrl, String productName, String price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imageUrl), 
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(productName, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(price, style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}


