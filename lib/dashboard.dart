import 'package:flutter/material.dart';
import 'package:joball/components/dashboard/app_bar.dart';
import 'package:joball/components/dashboard/drawer.dart';
import 'package:joball/components/dashboard/bottom_navigation.dart';

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
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: TextField(
                controller: searchController,
                style: const TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 113, 113, 113),
                    fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                    prefixIcon: Container(
                        margin: const EdgeInsets.only(left: 20, right: 4),
                        child: const Icon(Icons.search, size: 32)),
                    prefixIconColor: const Color.fromARGB(255, 113, 113, 113),
                    hintText: 'Search Job, Company & Role',
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 113, 113, 113),
                        fontSize: 18),
                    contentPadding: EdgeInsets.symmetric(vertical: 14),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 225, 225, 225),
                            width: 2),
                        borderRadius: BorderRadius.circular(14)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 190, 190, 190), width: 2),
                      borderRadius: BorderRadius.circular(14),
                    )),
              ),
            ),
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 260,
                    margin: const EdgeInsets.only(left: 20),
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
                                  backgroundColor:
                                      Color.fromARGB(255, 232, 232, 232),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 6),
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Tokopedia",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
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
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                elevation: 0),
                            child: const Text("Show All"),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    width: 260,
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(right: 20),
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
                                  backgroundColor:
                                      Color.fromARGB(255, 232, 232, 232),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 6),
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Tokopedia",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
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
                                margin: const EdgeInsets.only(right: 4),
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
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                elevation: 0),
                            child: const Text("Show All"),
                          ),
                        )
                      ],
                    ),
                  ),
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
            Container(
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
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
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
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4, vertical: 2),
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
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4, vertical: 2),
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
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4, vertical: 2),
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
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 0),
                      child: const Text("Show All"),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                        "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dicta id assumenda accusantium eligendi repudiandae non modi ullam error facere, unde voluptate. Quasi, accusamus earum! repudiandae non modi ullam error facere."),
                  )
                ],
              ),
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
