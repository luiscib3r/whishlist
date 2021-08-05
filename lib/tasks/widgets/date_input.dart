import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whishlist/app/theme/constants.dart';

class DateInput extends StatefulWidget {
  const DateInput({
    Key? key,
    required this.onChange,
  }) : super(key: key);

  final Function(DateTime) onChange;

  @override
  _DateInputState createState() => _DateInputState();
}

class _DateInputState extends State<DateInput> {
  DateTime date = DateTime.now().add(
    const Duration(days: 7),
  );

  String get value => DateFormat.yMMMd().format(date);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _showDatePicker,
      child: Row(
        children: [
          const Icon(Icons.calendar_today, color: primaryColor),
          const SizedBox(width: 8),
          Text(value),
        ],
      ),
    );
  }

  Future<void> _showDatePicker() async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(
        const Duration(days: 365 * 100),
      ),
    );

    if (pickedDate != null) {
      setState(() {
        date = pickedDate;
      });

      widget.onChange(date);
    }
  }
}
