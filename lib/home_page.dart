import 'dart:math';

import 'package:boobescookes/core/constants/color_constatins.dart';
import 'package:boobescookes/core/l10n/all_locale.dart';
import 'package:boobescookes/core/themes/theme.dart';
import 'package:boobescookes/features/discover/ui/components/your_dates.dart';
import 'package:boobescookes/features/discover/ui/discover.dart';
import 'package:boobescookes/features/near_you/ui/near_you_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: AllLocale.all,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: createLightTheme(),
      title: 'Flutter Demo',
      home: const NearYouPage(),
    );
  }
}
