import 'package:flutter/material.dart';
import 'package:turbo_movie/bloc/movie_bloc.dart';
import 'package:turbo_movie/model/movie.dart';
import 'package:turbo_movie/widget/card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    movieBloc.fetchMovies();
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          title: Text('Movie Turbo', style: TextStyle(color: Colors.blue[600])),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: StreamBuilder(
            stream: movieBloc.movies,
            builder: (context, AsyncSnapshot<MovieList> snapshot) {
              if (snapshot.hasData) {
                return _cardMovies(snapshot.data);
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }
              return Center(child: CircularProgressIndicator());
            }));
  }

  Widget _cardMovies(MovieList data) {
    return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.all(8.0),
            child: CardWidget(movieList: data.data.movies[index]),
          );
        },
        itemCount: data.data.movies.length);
  }
}
