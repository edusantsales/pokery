import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constants/constants.dart';

extension Routes on GoRouter {
  static String get initial => '/';

  static GoRouter get I {
    return GoRouter(
      routes: [
        GoRoute(
          path: initial,
          builder: (context, state) {
            final textTheme = Theme.of(context).typography;
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  'Temporary Page',
                  style: textTheme.white.titleMedium,
                ),
              ),
              body: const Center(child: FlutterLogo(size: kPadding * 16)),
              floatingActionButton: FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.add, size: kPadding * 3),
              ),
            );
          },
        ),
      ],
    );
  }
}
