import 'package:result_dart/result_dart.dart';

import '../exceptions/poke_error_enum.dart';
import '../exceptions/poke_exception.dart';
import '../interfaces/repositories/pokemon_repository_interface.dart';
import '../interfaces/usecases/get_pokemons_interface.dart';
import '../models/pokemon_model.dart';

class GetPokemons implements IGetPokemons {
  GetPokemons(this._repository);

  final IPokemonRepository _repository;

  @override
  Future<Result<List<PokemonModel>, PokeException>> call(
    int page,
  ) async {
    const exception = PokeException(PokeError.getPokemons);
    final List<PokemonModel> pokemons = [];
    final findAll = await _repository.findAll(page);
    if (findAll.isError()) {
      return const Failure(exception);
    } else {
      for (final element in findAll.getOrDefault([])) {
        final findOne = await _repository.findOne(pokemonName: element.name);
        if (findOne.isError()) {
          return const Failure(exception);
        } else {
          final pokemon = findOne.getOrNull();
          if (pokemon != null) {
            pokemons.add(pokemon);
          }
        }
      }
    }
    return Success(pokemons);
  }
}
