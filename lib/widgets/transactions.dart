import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  const Transaction({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
                // scroll
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(10),
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: Colors.white24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Transactions",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              const Expanded(
                                child: Text(
                                  "Spent in november",
                                  style: TextStyle(color: Colors.white38),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Card(
                                    color: Colors.blue,
                                    child: Container(
                                      width: 40,
                                      height: 15,
                                    ),
                                  ),
                                  Card(
                                    color: Colors.lightGreenAccent,
                                    child: Container(
                                      width: 18,
                                      height: 15,
                                    ),
                                  ),
                                  Card(
                                    color: Colors.amber,
                                    child: Container(
                                      width: 10,
                                      height: 18,
                                    ),
                                  ),
                                  Card(
                                    color: Colors.pink,
                                    child: Container(
                                      width: 18,
                                      height: 15,
                                    ),
                                  ),
                                  Card(
                                    color: Colors.amber,
                                    child: Container(
                                      width: 20,
                                      height: 10,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(10),
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: Colors.white24),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  "Subscriptions",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-1, 0),
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThEj3kDB4im1yxBQVjIINQwk0xrXfpo9IxAg&usqp=CAU'),
                                      backgroundColor: Colors.indigo,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment(-0.6, 0),
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRljPZAo_WetnC7v3HpCrABnNccHTCxb0ab_g&usqp=CAU"),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment(-0.2, 0),
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://img.freepik.com/free-vector/basketball-ball-isolated_1284-42545.jpg?size=338&ext=jpg&ga=GA1.1.2116175301.1700784000&semt=sph'),
                                      backgroundColor: Colors.black,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              );
  }
}