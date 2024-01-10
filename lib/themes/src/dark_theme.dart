part of '../theme.dart';

ThemeData createDarkTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    primaryColor: Colors.blueAccent,
    scaffoldBackgroundColor: Colors.black,
    textTheme: BubblesCoocesTextTheme.darkTextTheme,
  );
}
