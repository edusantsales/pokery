enum PokeError {
  clear(title: '', message: ''),
  internalServerError(
    title: '',
    message: 'Falha ao comunicar com o servidor.',
  ),
  notFound(
    title: '',
    message: 'Requisição não encontrada.',
  ),
  forbidden(
    title: '',
    message: 'Acesso negado ao servidor.',
  ),
  findAll(
    title: '',
    message: 'Falha ao listar os pokemon no servidor.',
  ),
  findOne(
    title: '',
    message: 'Falha ao consultar um pokemon no servidor.',
  ),
  getPokemons(
    title: '',
    message: 'Falha ao tentar carregar a lista de pokemons.',
  ),
  search(
    title: 'Nenhum pokemon encontrado.',
    message:
        'Tente uma nova busca pelo inicial do nome ou o número do pokemon.',
  );

  const PokeError({required this.title, required this.message});

  final String title;
  final String message;
}
