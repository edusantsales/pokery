import 'dart:io';

import 'package:result_dart/result_dart.dart';

import '../../domain/exceptions/poke_error_enum.dart';
import '../../domain/exceptions/poke_exception.dart';
import '../../domain/interfaces/repositories/pokemon_repository_interface.dart';
import '../../domain/interfaces/services/http_service_interface.dart';
import '../../domain/models/pokemon_model.dart';
import '../../domain/models/pokemons_model.dart';

class PokemonRepository implements IPokemonRepository {
  PokemonRepository(this._http);

  final IHttpService _http;

  @override
  Future<Result<List<PokemonsModel>, PokeException>> findAll(int page) async {
    List<PokemonsModel> result = [];
    try {
      final response = await _http.get('/pokemon/?offset=$page&limit=20');
      if (response.statusCode == HttpStatus.ok ||
          response.statusCode == HttpStatus.partialContent) {
        final json = response.body as Map;
        result = (json['results'] as List)
            .map((e) => PokemonsModel.fromJson(e as Map<String, dynamic>))
            .toList();
      }
    } on HttpResponse catch (e) {
      if (e.statusCode != HttpStatus.ok ||
          e.statusCode != HttpStatus.partialContent) {
        return Failure(
          PokeException.verifyError(
            PokeError.findAll,
            e.statusCode,
            e.reasonPhrase,
          ),
        );
      }
    }
    return Success(result);
  }

  @override
  Future<Result<PokemonModel, PokeException>> findOne({
    String? pokemonId,
    String? pokemonName,
  }) async {
    PokemonModel? result;
    try {
      final response = await _http.get('/pokemon/${pokemonId ?? pokemonName}');
      if (response.statusCode == HttpStatus.ok) {
        result = PokemonModel.fromJson(
          response.body as Map<String, dynamic>,
        );
      }
    } on HttpResponse catch (e) {
      if (e.statusCode != HttpStatus.ok) {
        return Failure(
          PokeException.verifyError(
            PokeError.findOne,
            e.statusCode,
            e.reasonPhrase,
          ),
        );
      }
    }
    return Success(result ?? const PokemonModel());
  }
}
