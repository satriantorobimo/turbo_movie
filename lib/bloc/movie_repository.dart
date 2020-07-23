import 'package:turbo_movie/model/movie.dart';

import 'api_provider.dart';

class Repository {
  ApiProvider appApiProvider = ApiProvider();

  Future<MovieList> fetMovieList() => appApiProvider.fetMovieList();
}
