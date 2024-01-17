import 'package:boobescookes/core/constants/color_constatins.dart';
import 'package:boobescookes/features/discover/ui/components/your_dates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Discover extends StatelessWidget {
  const Discover({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(locale.discover),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              locale.yourDates,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            // Your dates
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              height: 130,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
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
    );
  }
}
