// Copyright (c) 2021, Luis Ciber
// https://luisciber.com
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:injectable/injectable.dart';
import 'package:whishlist/app/dependencies/dependencies.dart';
import 'package:whishlist/app/theme/theme.dart';
import 'package:whishlist/app/widgets/loading.dart';
import 'package:whishlist/home/home.dart';
import 'package:whishlist/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    this.environment = Environment.prod,
  }) : super(key: key);

  final String environment;

  Future<void> _onInit() async {
    await setupDependencies(environment);
  }

  @override
  Widget build(BuildContext context) {
    final init = _onInit();
    return FutureBuilder(
      future: init,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return app(const HomePage());
        }

        return app(
          const Scaffold(
            body: Loading(),
          ),
        );
      },
    );
  }

  Widget app(Widget home) => MaterialApp(
        title: 'Whishlist',
        theme: appTheme,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        home: home,
        debugShowCheckedModeBanner: false,
      );
}
