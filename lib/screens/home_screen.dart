import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:flutter_local_trial/l10n/l10n.dart';
import 'package:flutter_local_trial/provider/localeProvider.dart';
import 'package:flutter_local_trial/screens/widgets/custom_drop_down.dart';
import 'package:provider/provider.dart';

class HomeScreen  extends StatelessWidget {
   HomeScreen ({Key? key}) : super(key: key);
   Locale? initialValue;

  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<LocaleProvider>(context);

    return  Scaffold(
      appBar: AppBar(
        title: Text("Flutter Localization"),
        centerTitle: true,
        actions: [
          CustomDropDownWidget(provider: provider)

        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(AppLocalizations.of(context)?.helloWorld ?? "value becomes null"))
        ],
      ),
    );
  }
}



