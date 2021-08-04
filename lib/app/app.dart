// Copyright (c) 2021, Luis Ciber
// https://luisciber.com
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:whishlist/home/home.dart';
import 'package:whishlist/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: const Color(0xFF2094AD),
        appBarTheme: const AppBarTheme(color: Color(0xFF2094AD)),
        primaryColor: const Color(0xFF2094AD),
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
