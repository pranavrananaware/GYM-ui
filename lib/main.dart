import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Madison",
              style: TextStyle(
                color: Colors.purpleAccent,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "It's time to challenge your limits.",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
        actions: const [
          Icon(Icons.notifications, color: Colors.purpleAccent),
          SizedBox(width: 10),
          Icon(Icons.person, color: Colors.purpleAccent),
          SizedBox(width: 15),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.purpleAccent,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: ''),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Menu
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  menuItem(Icons.fitness_center, "Workout"),
                  menuItem(Icons.timeline, "Progress\nTracking"),
                  menuItem(Icons.restaurant, "Nutrition"),
                  menuItem(Icons.people, "Community"),
                ],
              ),
              const SizedBox(height: 20),

              // Recommendations
              const Text(
                "Recommendations",
                style: TextStyle(color: Colors.yellow, fontSize: 18),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  recommendationCard(
                    "Squat Exercise",
                    "12 Minutes",
                    "120 Kcal",
                    'assets/squat.jpg',
                  ),
                  recommendationCard(
                    "Full Body Stretching",
                    "12 Minutes",
                    "120 Kcal",
                    'assets/stretching.jpeg',
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Weekly Challenge
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.purpleAccent.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Image.asset('assets/plank.jpg', height: 60),
                    const SizedBox(width: 16),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Weekly Challenge",
                          style: TextStyle(
                              color: Colors.yellow, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Plank With Hip Twist",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Articles & Tips
              const Text(
                "Articles & Tips",
                style: TextStyle(color: Colors.yellow, fontSize: 18),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  articleCard(
                    "Supplement Guide",
                    'assets/supplement.jpg',
                  ),
                  articleCard(
                    "15 Quick & Effective Daily Routines",
                    'assets/routines.jpg',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget menuItem(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.yellow, size: 28),
        const SizedBox(height: 5),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
      ],
    );
  }

  Widget recommendationCard(String title, String time, String calories, String imagePath) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath, height: 100, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  time,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Text(
                  calories,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget articleCard(String title, String imagePath) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath, height: 100, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
