// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class NearYouPage extends StatelessWidget {
  const NearYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 12, 24, 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(31, 31, 33, 1),
                            offset: Offset(2, 3),
                          )
                        ],
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        border: Border.all(
                          color: const Color.fromRGBO(31, 31, 33, 1),
                          width: 1,
                        ),
                      ),
                      child: const Icon(Icons.arrow_back_rounded)),
                  const Text(
                    "Near You",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(31, 31, 33, 1),
                    ),
                  ),
                  Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(31, 31, 33, 1),
                            offset: Offset(2, 3),
                          )
                        ],
                        color: Color.fromRGBO(220, 255, 162, 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        border: Border.all(
                          color: const Color.fromRGBO(31, 31, 33, 1),
                          width: 1,
                        ),
                      ),
                      child: const Icon(
                        Icons.notes_rounded,
                        color: Color.fromRGBO(31, 31, 33, 1),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 18, 0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(31, 31, 33, 1),
                      offset: Offset(6, 8),
                    )
                  ],
                  color: const Color.fromRGBO(194, 193, 254, 1),
                  borderRadius: const BorderRadius.all(Radius.circular(22)),
                  border: Border.all(
                    color: const Color.fromRGBO(220, 255, 162, 1),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 20),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 440,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              border: Border.all(
                                color: const Color.fromRGBO(31, 31, 33, 1),
                                width: 2.5,
                              ),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://static.tildacdn.com/tild3733-3231-4265-b238-323434646461/_HydroFacial_3.jpg"),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 396),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color.fromRGBO(31, 31, 33, 1),
                                        offset: Offset(4, 4),
                                      )
                                    ],
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12)),
                                    border: Border.all(
                                      color:
                                          const Color.fromRGBO(31, 31, 33, 1),
                                      width: 1.5,
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.close_rounded,
                                    size: 40,
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color.fromRGBO(31, 31, 33, 1),
                                        offset: Offset(4, 4),
                                      )
                                    ],
                                    color:
                                        const Color.fromRGBO(255, 178, 233, 1),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12)),
                                    border: Border.all(
                                      color:
                                          const Color.fromRGBO(31, 31, 33, 1),
                                      width: 1.5,
                                    ),
                                  ),
                                  child: const Icon(
                                    color: Color.fromRGBO(238, 5, 173, 1),
                                    Icons.favorite_rounded,
                                    size: 35,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Carolin Sky, 29",
                                  style: TextStyle(
                                    fontSize: 28,
                                    color: Color.fromRGBO(31, 31, 33, 1),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.place_rounded,
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Tokyo, Japan",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(31, 31, 33, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromRGBO(31, 31, 33, 1),
                                    spreadRadius: 0.5,
                                    offset: Offset(1.5, 1.5),
                                  )
                                ],
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: const Color.fromRGBO(31, 31, 33, 1),
                                  width: 2,
                                ),
                              ),
                              child: const Icon(
                                Icons.arrow_downward_rounded,
                                size: 23,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(31, 31, 33, 1),
                          offset: Offset(4, 4),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      border: Border.all(
                        color: const Color.fromRGBO(31, 31, 33, 1),
                        width: 1.5,
                      ),
                    ),
                    child: const Icon(
                      color: Color.fromRGBO(255, 33, 33, 1),
                      Icons.bolt_rounded,
                      size: 35,
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(31, 31, 33, 1),
                          offset: Offset(4, 4),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      border: Border.all(
                        color: const Color.fromRGBO(31, 31, 33, 1),
                        width: 1.5,
                      ),
                    ),
                    child: const Icon(
                      color: Color.fromRGBO(254, 153, 1, 1),
                      Icons.star_rounded,
                      size: 35,
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(31, 31, 33, 1),
                          offset: Offset(4, 4),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      border: Border.all(
                        color: const Color.fromRGBO(31, 31, 33, 1),
                        width: 1.5,
                      ),
                    ),
                    child: const Icon(
                      color: Color.fromRGBO(86, 184, 255, 1),
                      Icons.forum_rounded,
                      size: 30,
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(31, 31, 33, 1),
                          offset: Offset(4, 4),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      border: Border.all(
                        color: const Color.fromRGBO(31, 31, 33, 1),
                        width: 1.5,
                      ),
                    ),
                    child: const Icon(
                      color: Color.fromRGBO(94, 194, 92, 1),
                      Icons.card_giftcard_rounded,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
