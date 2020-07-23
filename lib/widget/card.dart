import 'package:flutter/material.dart';
import 'package:turbo_movie/model/movie.dart';

class CardWidget extends StatelessWidget {
  final Movies movieList;

  const CardWidget({Key key, this.movieList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          leading: Image.network(
            movieList.largeCoverImage,
            height: 200,
          ),
          title: Text(movieList.title),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[Text('Rating : ${movieList.rating.toString()}')],
          )),
    );
  }
}
