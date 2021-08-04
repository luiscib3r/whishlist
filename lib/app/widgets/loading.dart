import 'package:flutter/material.dart';
import 'package:whishlist/app/theme/constants.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(
          primaryColor,
        ),
      ),
    );
  }
}
