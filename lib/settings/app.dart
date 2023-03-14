import 'package:flutter/material.dart';

import 'routes/routes.dart';
import 'themes/themes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: Routes.I.routerDelegate,
      routeInformationParser: Routes.I.routeInformationParser,
      routeInformationProvider: Routes.I.routeInformationProvider,
      title: 'Pokery',
      theme: Themes.light,
    );
  }
}
