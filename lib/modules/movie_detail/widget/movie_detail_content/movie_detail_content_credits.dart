import 'package:app_filmes/models/movie_detail_model.dart';
import 'package:flutter/material.dart';

class MovieDetailContentCredits extends StatelessWidget {
  final MovieDetailModel? movie;

  const MovieDetailContentCredits({Key? key, required this.movie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 50),
        child: Text(
          movie?.overview ?? "",
          style:
              TextStyle(fontSize: 14, fontWeight: FontWeight.w500, height: 1.3),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
