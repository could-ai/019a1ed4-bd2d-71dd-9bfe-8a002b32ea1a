import 'package:flutter/material.dart';
import 'profile_screen.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> moreModules = [
      {'icon': Icons.account_balance, 'title': 'Government Services', 'target': null},
      {'icon': Icons.article, 'title': 'News', 'target': null},
      {'icon': Icons.work, 'title': 'Freelance Jobs', 'target': null},
      {'icon': Icons.people, 'title': 'Community', 'target': null},
      {'icon': Icons.movie, 'title': 'Entertainment', 'target': null},
      {'icon': Icons.directions_bus, 'title': 'Transportation', 'target': null},
      {'icon': Icons.fitness_center, 'title': 'Fitness', 'target': null},
      {'icon': Icons.cloud, 'title': 'Climate Alert', 'target': null},
      {'icon': Icons.person, 'title': 'Profile', 'target': const ProfileScreen()},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('More'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
        itemCount: moreModules.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: ListTile(
              leading: Icon(moreModules[index]['icon'], color: Theme.of(context).primaryColor),
              title: Text(moreModules[index]['title']),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                if (moreModules[index]['target'] != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => moreModules[index]['target']),
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}
