import 'package:rxdart/rxdart.dart';
import 'package:turbo_movie/bloc/movie_repository.dart';
import 'package:turbo_movie/model/movie.dart';

class MovieBloc {
  Repository _repository = Repository();

  final _moviesFetcher = PublishSubject<MovieList>();

  Observable<MovieList> get movies => _moviesFetcher.stream;

  fetchMovies() async {
    MovieList moviesResponse = await _repository.fetMovieList();
    _moviesFetcher.sink.add(moviesResponse);
  }

  dispose() {
    _moviesFetcher.close();
  }
}

final movieBloc = MovieBloc();
