import 'package:result_dart/result_dart.dart';

import '../../exceptions/poke_exception.dart';
import '../../models/pokemon_model.dart';
import '../../models/pokemons_model.dart';

abstract class IPokemonRepository {
  Future<Result<List<PokemonsModel>, PokeException>> findAll(int page);
  Future<Result<PokemonModel, PokeException>> findOne({
    String? pokemonId,
    String? pokemonName,
  });
}
