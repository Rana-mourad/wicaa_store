import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wiccaa',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Handle shopping cart action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBar(),
            SectionTitle(title: 'Categories'),
            CategoriesGrid(),
            SectionTitle(title: 'Best Sellers'),
            BestSellersGrid(),
            BottomNavigationBar(),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Search...',
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class CategoriesGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: categoryImages.length,
      itemBuilder: (context, index) {
        return Image.asset(
          categoryImages[index],
          fit: BoxFit.cover,
        );
      },
    );
  }
}

class BestSellersGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: bestSellerImages.length,
      itemBuilder: (context, index) {
        return Image.network(
          bestSellerImages[index],
          fit: BoxFit.cover,
        );
      },
    );
  }
}

class BottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0, color: Colors.grey),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(Icons.home_outlined),
            onPressed: () {
              // Handle home action
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              // Handle favorites action
            },
          ),
          IconButton(
            icon: Icon(Icons.sell),
            onPressed: () {
              // Handle selling action
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Handle notifications action
            },
          ),
          IconButton(
            icon: Icon(Icons.account_box),
            onPressed: () {
              // Handle user account action
            },
          ),
        ],
      ),
    );
  }
}

List<String> categoryImages = [
  'assets/images/1.jpg',
  'assets/images/2.jpg',
  'assets/images/3.jpg',
  'assets/images/4.jpg',
  // Add more category image paths as needed
];

List<String> bestSellerImages = [
  'assets/images/3.jpg',
  'assets/images/4.jpg',
];
