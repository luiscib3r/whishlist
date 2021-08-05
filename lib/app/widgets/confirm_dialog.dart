import 'package:flutter/material.dart';

class ConfirmDialog {
  const ConfirmDialog({
    required this.message,
    required this.onConfirm,
  });

  final String message;
  final VoidCallback onConfirm;

  void show(BuildContext context) {
    final cancelButton = TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Text('NO'),
    );

    final continueButton = TextButton(
      onPressed: () {
        onConfirm();
        Navigator.pop(context);
      },
      child: const Text('OK'),
    );

    final alert = AlertDialog(
      content: Text(
        message,
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
