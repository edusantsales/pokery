import 'package:result_dart/result_dart.dart';

import '../../exceptions/poke_exception.dart';
import '../../models/pokemon_model.dart';

abstract class IGetPokemons {
  Future<Result<List<PokemonModel>, PokeException>> call(int page);
}
