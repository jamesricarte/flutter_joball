import 'package:flutter/material.dart';
import 'package:joball/components/custom_elevatedbutton.dart';

class RecomendationCard extends StatelessWidget {
  const RecomendationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
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
                        Text("Data Scientist",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text(
                          "Google",
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
            margin: const EdgeInsets.only(top: 12, bottom: 3),
            child: const Row(
              children: [
                Icon(Icons.location_on_outlined),
                Text(
                  "Singapore",
                  style: TextStyle(
                      color: Color.fromRGBO(100, 100, 100, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          const Row(
            children: [
              Icon(Icons.attach_money),
              Text(
                "\$1200 - \$1900",
                style: TextStyle(
                    color: Color.fromRGBO(100, 100, 100, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 241, 241, 241),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.videocam_sharp,
                          color: Color.fromARGB(255, 109, 109, 109),
                        ),
                        Text(
                          "Remote",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 99, 99, 99)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 241, 241, 241),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.access_time_filled,
                          color: Color.fromARGB(255, 109, 109, 109),
                        ),
                        Text(
                          "Internship",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 99, 99, 99)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 241, 241, 241),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.work,
                          color: Color.fromARGB(255, 109, 109, 109),
                        ),
                        Text(
                          "2 Year Exp",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 99, 99, 99)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              child: CustomElevatedButton(onPressed: () {}, label: "Show All")),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: const Text(
                "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dicta id assumenda accusantium eligendi repudiandae non modi ullam error facere, unde voluptate. Quasi, accusamus earum! repudiandae non modi ullam error facere."),
          )
        ],
      ),
    );
  }
}
