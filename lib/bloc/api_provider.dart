import 'dart:convert';
import 'package:http/http.dart' show Client;
import 'package:turbo_movie/model/movie.dart';

class ApiProvider {
  Client client = Client();
  final _baseUrl = "https://yts.mx/api/v2/list_movies.json?quality=3D";

  Future<MovieList> fetMovieList() async {
    final response = await client.get("$_baseUrl");
    print(response.body.toString());

    if (response.statusCode == 200) {
      return MovieList.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load weather');
    }
  }
}
