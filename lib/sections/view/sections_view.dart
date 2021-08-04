import 'package:flutter/material.dart';
import 'package:whishlist/app/widgets/widgets.dart';
import 'package:whishlist/l10n/l10n.dart';

class SectionsView extends StatelessWidget {
  const SectionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(l10n.sections),
      ),
      body: Center(
        child: Text(l10n.sections),
      ),
    );
  }
}
