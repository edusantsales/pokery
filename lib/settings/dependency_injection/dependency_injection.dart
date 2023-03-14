import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

extension DependencyInjection on GetIt {
  static void init() {
    _configureData();
    _configureServices();
    _configureUseCases();
    _configurePresentation();
  }

  static void _configureData() {}

  static void _configureServices() {}

  static void _configureUseCases() {}

  static void _configurePresentation() {}
}
