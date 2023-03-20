import 'package:get_it/get_it.dart';

import '../../data/repositories/pokemon_repository.dart';
import '../../data/services/assets_service.dart';
import '../../data/services/http_service.dart';
import '../../domain/interfaces/repositories/pokemon_repository_interface.dart';
import '../../domain/interfaces/services/assets_service_interface.dart';
import '../../domain/interfaces/services/http_service_interface.dart';
import '../../domain/interfaces/usecases/get_pokemons_interface.dart';
import '../../domain/usecases/get_pokemons.dart';

final getIt = GetIt.instance;

extension DependencyInjection on GetIt {
  static void init() {
    _configureData();
    _configureServices();
    _configureUseCases();
    _configurePresentation();
  }

  static void _configureData() {
    getIt.registerFactory<IPokemonRepository>(
      () => PokemonRepository(getIt<IHttpService>()),
    );
  }

  static void _configureServices() {
    getIt.registerSingleton<IHttpService>(HttpService());
    getIt.registerSingleton<IAssetsService>(AssetsService());
  }

  static void _configureUseCases() {
    getIt.registerFactory<IGetPokemons>(
      () => GetPokemons(getIt<IPokemonRepository>()),
    );
  }

  static void _configurePresentation() {}
}
