import 'package:boobescookes/core/l10n/all_locale.dart';
import 'package:boobescookes/core/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: AllLocale.all,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: createLightTheme(),
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(locale.discover),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 12),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: SizedBox(
                height: 100,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 30,
                      height: 0,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              spreadRadius: 0,
                              blurRadius: 0,
                              offset:
                                  Offset(8, 8), // changes position of shadow
                            ),
                          ],
                          border: Border.all(color: Colors.black, width: 1),
                          color: Colors.amber,
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      width: 80,
                      height: 100,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
