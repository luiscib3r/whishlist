import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:whishlist/app/data/models/project.dart';
import 'package:whishlist/app/theme/constants.dart';
import 'package:whishlist/l10n/l10n.dart';

class ProjectInput extends StatefulWidget {
  const ProjectInput({
    Key? key,
    required this.onChange,
    required this.projects,
  }) : super(key: key);

  final List<Project> projects;
  final Function(Project) onChange;

  @override
  _ProjectInputState createState() => _ProjectInputState();
}

class _ProjectInputState extends State<ProjectInput> {
  int? selectedValue;

  @override
  Widget build(BuildContext context) {
    if (widget.projects.isEmpty) {
      return Row(
        children: [
          const Icon(Icons.folder_open_outlined, color: primaryColor),
          const SizedBox(width: 8),
          Text('Projects: ${context.l10n.noData}'),
        ],
      );
    }

    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            widget.projects.length,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedValue = index;
                });

                widget.onChange(widget.projects[index]);
              },
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Container(
                  decoration: BoxDecoration(
                    color: index == selectedValue ? Colors.green : primaryColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      widget.projects[index].name,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
