import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> moreModules = [
      {'icon': Icons.account_balance, 'title': 'Government Services'},
      {'icon': Icons.article, 'title': 'News'},
      {'icon': Icons.work, 'title': 'Freelance Jobs'},
      {'icon': Icons.people, 'title': 'Community'},
      {'icon': Icons.movie, 'title': 'Entertainment'},
      {'icon': Icons.directions_bus, 'title': 'Transportation'},
      {'icon': Icons.fitness_center, 'title': 'Fitness'},
      {'icon': Icons.cloud, 'title': 'Climate Alert'},
      {'icon': Icons.settings, 'title': 'Settings'},
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
                // Navigate to respective screen
              },
            ),
          );
        },
      ),
    );
  }
}
