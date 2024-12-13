import 'package:flutter/material.dart';
import 'package:joball/components/dashboard/app_bar.dart';
import 'package:joball/components/dashboard/drawer.dart';
import 'package:joball/components/dashboard/bottom_navigation.dart';
import 'package:joball/components/dashboard/home/ontrending_card.dart';
import 'package:joball/components/dashboard/home/recomendation_card.dart';
import 'package:joball/components/custom_textfield.dart';
import 'package:joball/components/custom_elevatedbutton.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(searchController: searchController),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              margin: const EdgeInsets.only(bottom: 10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "On Trending",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Show All",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  OnTrendingCard(
                    margin: EdgeInsets.only(left: 20),
                  ),
                  SizedBox(width: 20),
                  OnTrendingCard(
                    margin: EdgeInsets.only(right: 20),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              margin: const EdgeInsets.only(top: 40, bottom: 10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Recommendation",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Show All",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ),
            RecomendationCard()
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        onTap: (index) {},
      ),
    );
  }
}
