import 'package:flutter/material.dart';

class AppPageRoute extends MaterialPageRoute<void> {
  /// {@macro app_page_route}
  AppPageRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) : super(
          builder: builder,
          maintainState: maintainState,
          settings: settings,
          fullscreenDialog: fullscreenDialog,
        );

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    const begin = Offset(0, 1);
    const end = Offset.zero;

    final tween = Tween(
      begin: begin,
      end: end,
    ).chain(
      CurveTween(
        curve: Curves.ease,
      ),
    );

    final offsetAnimation = animation.drive(tween);

    return SlideTransition(
      position: offsetAnimation,
      child: child,
    );
  }
}
