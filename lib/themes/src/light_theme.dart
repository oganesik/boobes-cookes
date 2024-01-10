part of '../theme.dart';

ThemeData createLightTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: 'Poppins',
    primaryColor: Colors.blueAccent,
    scaffoldBackgroundColor: Colors.white,
    textTheme: BubblesCoocesTextTheme.lightTextTheme,
  );
}
