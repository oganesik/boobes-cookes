// ignore_for_file: unnecessary_const

import 'package:boobescookes/core/themes/theme.dart';
import 'package:boobescookes/features/near_you/ui/components/app_button.dart';
import 'package:flutter/material.dart';

class NearYouPage extends StatefulWidget {
  const NearYouPage({super.key});

  @override
  State<NearYouPage> createState() => _NearYouPageState();
}

class _NearYouPageState extends State<NearYouPage> {
  late OverlayEntry overlayEntry;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(24, 24, 24, 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppButton(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      buttonSize: 48,
                      iconColor: AppColors.lightDark,
                      icon: Icons.arrow_back_rounded,
                      offset: Offset(2, 3)),
                  Text(
                    "Near You",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(31, 31, 33, 1),
                    ),
                  ),
                  AppButton(
                      backgroundColor: Color.fromRGBO(220, 255, 162, 1),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      buttonSize: 48,
                      iconColor: AppColors.lightDark,
                      icon: Icons.notes_rounded,
                      offset: Offset(2, 3)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 18, 0),
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
                                const AppButton(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  borderWidth: 2,
                                  buttonSize: 80,
                                  iconColor: AppColors.lightDark,
                                  icon: Icons.close_rounded,
                                  iconSize: 40,
                                  offset: Offset(4, 4),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                GestureDetector(
                                  onLongPress: () {
                                    overlayEntry = createOverlayEntry(context);
                                    Overlay.of(context)!.insert(overlayEntry);
                                  },
                                  child: const AppButton(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    borderWidth: 2,
                                    buttonSize: 80,
                                    backgroundColor:
                                        Color.fromRGBO(255, 178, 233, 1),
                                    iconColor: Color.fromRGBO(238, 5, 173, 1),
                                    icon: Icons.favorite_rounded,
                                    iconSize: 35,
                                    offset: Offset(4, 4),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
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
                            AppButton(
                              shape: BoxShape.circle,
                              spreadRadius: 0.5,
                              borderWidth: 2,
                              buttonSize: 50,
                              iconColor: AppColors.lightDark,
                              icon: Icons.arrow_downward_rounded,
                              iconSize: 23,
                              offset: Offset(1.5, 1.5),
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
                children: [],
              ),
            ),
          ],
        ),
      )),
    );
  }

  OverlayEntry createOverlayEntry(BuildContext context) {
    overlayEntry = OverlayEntry(
      builder: (context) => Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.25),
              child: GestureDetector(
                onTap: () {
                  overlayEntry.remove();
                },
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.54,
            left: MediaQuery.of(context).size.height * 0.275,
            child: Column(
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
                      width: 2,
                    ),
                  ),
                  child: const Icon(
                    color: Color.fromRGBO(255, 33, 33, 1),
                    Icons.bolt_rounded,
                    size: 35,
                  ),
                ),
                SizedBox(height: 120.0),
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
              ],
            ),
          ),
        ],
      ),
    );
    return overlayEntry;
  }
}
