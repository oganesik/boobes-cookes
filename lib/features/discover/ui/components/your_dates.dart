import 'package:flutter/material.dart';

class YourDates extends StatelessWidget {
  final String text;
  final String imageUrl;
  final int age;
  final String name;
  final String secondName;
  final String city;
  final Color backgroungColor;
  const YourDates({
    super.key,
    required this.text,
    required this.imageUrl,
    required this.age,
    required this.name,
    required this.secondName,
    required this.city,
    required this.backgroungColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, right: 20),
      child: Container(
        width: 100,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 0, 0, 0),
                spreadRadius: 0,
                blurRadius: 0,
                offset: Offset(8, 8), // changes position of shadow
              ),
            ],
            border: Border.all(color: Colors.black, width: 1),
            color: backgroungColor,
            borderRadius: const BorderRadius.all(Radius.circular(6))),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 0, 0, 0),
                    spreadRadius: 0,
                    blurRadius: 0,
                    offset: Offset(2, 3), // changes position of shadow
                  ),
                ],
                color: Colors.black,
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageUrl),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "$name ${secondName.substring(0, 1)}, $age",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.location_on, size: 14),
                Text(
                  city,
                  style: TextStyle(
                    fontSize: 10,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
