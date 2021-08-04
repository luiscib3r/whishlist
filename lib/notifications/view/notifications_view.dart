import 'package:flutter/material.dart';
import 'package:whishlist/app/widgets/widgets.dart';
import 'package:whishlist/l10n/l10n.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(l10n.notifications),
      ),
      body: Center(
        child: Text(l10n.notifications),
      ),
    );
  }
}
