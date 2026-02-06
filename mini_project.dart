import 'package:flutter/material.dart';

void main() {
  runApp(const MindEaseApp());
}

class MindEaseApp extends StatelessWidget {
  const MindEaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MindEase',
      theme: ThemeData(
        primaryColor: Colors.teal,
        scaffoldBackgroundColor: const Color(0xFFF1F8F6),
      ),
      home: const HomePage(),
    );
  }
}

// HOME PAGE 
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MindEase 🌿'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      drawer: const AppDrawer(),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          wellnessCard(
            context,
            'Reduce Stress',
            'Simple techniques to calm your mind.',
            'https://picsum.photos/400/200?10',
          ),
          wellnessCard(
            context,
            'Better Sleep',
            'Improve your sleep quality naturally.',
            'https://picsum.photos/400/200?11',
          ),
          wellnessCard(
            context,
            'Positive Thinking',
            'Build a healthier mindset every day.',
            'https://picsum.photos/400/200?12',
          ),
        ],
      ),
    );
  }

  Widget wellnessCard(BuildContext context, String title, String desc, String img) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailPage(title: title, imageUrl: img),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.only(bottom: 16),
        elevation: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
              child: Image.network(img, height: 180, width: double.infinity, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 6),
                  Text(desc, style: const TextStyle(color: Colors.black54)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//  DETAIL PAGE 
class DetailPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  const DetailPage({super.key, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wellness Tip'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(imageUrl),
            ),
            const SizedBox(height: 16),
            Text(title, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text(
              'Mental wellness is important for a balanced life. This section provides simple and practical tips that help improve emotional health, reduce stress, and encourage positive thinking. The content is static and designed only to demonstrate Flutter UI design.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),),
    );
  }
}

//  CATEGORIES PAGE 
class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = ['Stress 🌊', 'Anxiety 🌸', 'Sleep 🌙', 'Mindfulness 🧘', 'Happiness 😊'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              title: Text(categories[index]),
            ),
          );
        },
      ),
    );
  }
}

//  ABOUT PAGE 
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About App'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.teal,
                child: Icon(Icons.self_improvement, size: 50, color: Colors.white),
              ),
              SizedBox(height: 16),
              Text('MindEase', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text(
                'MindEase is a Flutter UI mini project focused on mental wellness awareness. The app is designed for learning Flutter UI concepts using static content.',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//  DRAWER
class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.teal),
            child: Center(
              child: Text('MindEase 🌿', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
          ),
          drawerItem(context, 'Home', Icons.home, const HomePage()),
          drawerItem(context, 'Categories', Icons.category, const CategoriesPage()),
          drawerItem(context, 'About', Icons.info, const AboutPage()),
        ],
      ),
    );
  }

  Widget drawerItem(BuildContext context, String title, IconData icon, Widget page) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => page));
      },
    );
  }
}                    

