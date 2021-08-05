import 'package:flutter/material.dart';
import 'package:whishlist/app/widgets/widgets.dart';
import 'package:whishlist/l10n/l10n.dart';

class CreateProjectView extends StatelessWidget {
  const CreateProjectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
        ),
        title: AppBarTitle(l10n.createProject),
      ),
      body: const Center(
        child: Text('Create Page'),
      ),
    );
  }
}
