import 'package:flutter/material.dart';
import 'package:whishlist/app/theme/constants.dart';

class TypeInput extends StatefulWidget {
  const TypeInput({
    Key? key,
    required this.onChange,
  }) : super(key: key);

  final Function(String) onChange;

  @override
  _TypeInputState createState() => _TypeInputState();
}

class _TypeInputState extends State<TypeInput> {
  String dropdownValue = 'ONAT';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.category, color: primaryColor),
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
          items: [
            'ONAT',
            'Inventario',
            'Alquiler',
            'Compra Producto',
            'Transporte',
          ].map<DropdownMenuItem<String>>((String value) {
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
