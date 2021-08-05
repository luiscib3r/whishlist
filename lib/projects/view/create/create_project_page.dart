import 'package:flutter/material.dart';
import 'package:whishlist/app/app_page_route.dart';
import 'package:whishlist/projects/view/create/create_project_view.dart';

class CreateProjectPage extends StatelessWidget {
  const CreateProjectPage({Key? key}) : super(key: key);

  static Route route() {
    return AppPageRoute(builder: (_) => const CreateProjectPage());
  }

  @override
  Widget build(BuildContext context) {
    return const CreateProjectView();
  }
}
