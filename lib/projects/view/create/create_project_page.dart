import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whishlist/app/app_page_route.dart';
import 'package:whishlist/app/dependencies/dependencies.dart';
import 'package:whishlist/projects/bloc/create_project_bloc.dart';
import 'package:whishlist/projects/view/create/create_project_view.dart';

class CreateProjectPage extends StatelessWidget {
  const CreateProjectPage({Key? key}) : super(key: key);

  static Route route() {
    return AppPageRoute(builder: (_) => const CreateProjectPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateProjectBloc>(
      create: (_) => getIt(),
      child: const CreateProjectView(),
    );
  }
}
