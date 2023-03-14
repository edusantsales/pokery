import 'package:flutter/material.dart';

import 'settings/app.dart';
import 'settings/dependency_injection/dependency_injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DependencyInjection.init();
  runApp(const App());
}
