import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wings_mobile/presentation/pages/login_page.dart';
import 'package:wings_mobile/presentation/pages/not_found_page.dart';

CustomTransitionPage buildPageTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage(
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation),
  );
}

GoRouter router = GoRouter(
  initialLocation: "/signin",
  debugLogDiagnostics: true,
  routerNeglect: true,
  errorPageBuilder: (context, state) => buildPageTransition(
    context: context,
    state: state,
    child: const NotFoundPage(),
  ),
  routes: [
    GoRoute(
      path: "/signin",
      name: "signin",
      builder: (context, state) => LoginPage(),
      // pageBuilder: (context, state) => buildPageTransition(
      //   context: context,
      //   state: state,
      //   child: Container(
      //     color: Colors.red,
      //   ),
      // ),
    ),
  ],
);
