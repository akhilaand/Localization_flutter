import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../l10n/l10n.dart';
import '../../provider/localeProvider.dart';

class CustomDropDownWidget extends StatelessWidget {
  const CustomDropDownWidget({
    Key? key,
    required this.provider,
  }) : super(key: key);

  final LocaleProvider provider;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<Locale>(
          iconEnabledColor: Colors.white,
          dropdownColor: Colors.blue,
          onChanged: (d){},

          // value: const Locale("en"),

          value: provider.locale?? const Locale("en"),

          items:L10n.all.map<DropdownMenuItem<Locale>>((value) {
            return DropdownMenuItem<Locale>(
              value: value,
              child: Text(value.toString(),
                style: TextStyle(color: Colors.white),
              ),
              onTap: (){
                final provider =
                Provider.of<LocaleProvider>(context, listen: false);
                provider.setLocale(value);
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}