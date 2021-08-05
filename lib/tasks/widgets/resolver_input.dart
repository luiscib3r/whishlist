import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:whishlist/app/theme/constants.dart';

class ResolverInput extends StatefulWidget {
  const ResolverInput({
    Key? key,
    required this.onChange,
  }) : super(key: key);

  final Function(String) onChange;

  @override
  _ResolverInputState createState() => _ResolverInputState();
}

class _ResolverInputState extends State<ResolverInput> {
  String dropdownValue = faker.person.name();

  late List<String> names;

  @override
  Widget build(BuildContext context) {
    names = List.generate(
      5,
      (index) => index == 0 ? dropdownValue : faker.person.name(),
    );

    return Row(
      children: [
        const Icon(Icons.person, color: primaryColor),
        const SizedBox(width: 8),
        DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.arrow_downward),
          underline: Container(
            height: 2,
            color: primaryColor,
          ),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });

            widget.onChange(newValue!);
          },
          items: names.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }
}
