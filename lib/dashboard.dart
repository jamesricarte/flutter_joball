import 'package:flutter/material.dart';
import 'package:joball/components/dashboard/app_bar.dart';
import 'package:joball/components/dashboard/drawer.dart';
import 'package:joball/components/dashboard/bottom_navigation.dart';
import 'package:joball/components/dashboard/category_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Featured Categories Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Explore Categories",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                buildCategoryCard(
                    "ITtttt & Software", Icons.computer, Colors.blue),
                buildCategoryCard(
                    "Design", Icons.design_services, Colors.purple),
                buildCategoryCard("Marketing", Icons.campaign, Colors.orange),
                buildCategoryCard("Finance", Icons.money, Colors.green),
              ],
            ),
            const SizedBox(height: 20),

            // Recent Jobs Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Recent Jobs",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.work_outline, color: Colors.green),
                  title: Text("Job Title ${index + 1}"),
                  subtitle:
                      Text("Company ${index + 1} • Location ${index + 1}"),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {},
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        onTap: (index) {},
      ),
    );
  }
}
