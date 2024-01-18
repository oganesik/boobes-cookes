import 'package:boobescookes/core/constants/color_constatins.dart';
import 'package:boobescookes/core/themes/theme.dart';
import 'package:boobescookes/features/discover/ui/components/your_dates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Discover extends StatefulWidget {
  const Discover({
    super.key,
  });

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                locale.newMatches,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 0),
                height: 100,
                child: Row(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 80,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.lightDark,
                                      width: 2,
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: AppColors.lightDark,
                                        spreadRadius: 1,
                                        offset: Offset(2,
                                            1.5), // changes position of shadow
                                      ),
                                    ],
                                    color: AppColors.lightDark,
                                    shape: BoxShape.circle,
                                    image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://sun9-78.userapi.com/impg/vQCPUkwA5Zwu336zUs_odUukGEf3Y1W8mb_6BA/Lz3aE3UyKkY.jpg?size=1620x2160&quality=95&sign=aa857c3cd916351c152ce3fabf3c6a1d&type=album"),
                                    ),
                                  ),
                                ),
                                Text("Саркис А.")
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Your dates
              Text(
                locale.yourDates,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 130,
                child: Row(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return YourDates(
                            city: "Краснодар",
                            age: 22,
                            name: "Sky",
                            secondName: "Carolin",
                            imageUrl:
                                "https://sun9-78.userapi.com/impg/vQCPUkwA5Zwu336zUs_odUukGEf3Y1W8mb_6BA/Lz3aE3UyKkY.jpg?size=1620x2160&quality=95&sign=aa857c3cd916351c152ce3fabf3c6a1d&type=album",
                            text: "$index",
                            backgroungColor: ColorConstants.backgroundColors[
                                index % ColorConstants.backgroundColors.length],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
