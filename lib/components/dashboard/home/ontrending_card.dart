import 'package:flutter/material.dart';
import 'package:joball/components/custom_elevatedbutton.dart';

class OnTrendingCard extends StatelessWidget {
  final EdgeInsets? margin;

  const OnTrendingCard({super.key, this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      margin: margin,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 235, 235, 235),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 20,
                    backgroundColor: Color.fromARGB(255, 232, 232, 232),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 6),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Tokopedia",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text(
                          "Indonesia",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.bookmark_border_outlined,
                size: 30,
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  child: const CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.green,
                  ),
                ),
                const Text(
                  "Actively recruiting",
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 3),
            child: const Row(
              children: [
                Icon(Icons.work_outline),
                Text(
                  "12 Open Position",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          const Row(
            children: [
              Icon(Icons.access_time),
              Text(
                "Full time - Internship",
                style: TextStyle(
                    color: Color.fromRGBO(100, 100, 100, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          Container(
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              child: CustomElevatedButton(onPressed: () {}, label: "Show All"))
        ],
      ),
    );
  }
}
