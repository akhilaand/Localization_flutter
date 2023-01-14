import 'package:flutter/material.dart';
import 'package:flutter_local_trial/provider/localeProvider.dart';
import 'package:flutter_local_trial/screens/home_screen.dart';
import 'package:provider/provider.dart';

//localization imports
import 'l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>LocaleProvider(),
      builder: (context, state) {
        final provider=Provider.of<LocaleProvider>(context);
        return MaterialApp(
          title: 'Flutter Localization',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          supportedLocales: L10n.all,
          locale: provider.locale,
          localizationsDelegates: [
            AppLocalizations.delegate,
            AppLocalizations.localizationsDelegates[1],
            AppLocalizations.localizationsDelegates[2],
            AppLocalizations.localizationsDelegates[3],
          ],
          home: HomeScreen(),
        );
      },
    );
  }
}
