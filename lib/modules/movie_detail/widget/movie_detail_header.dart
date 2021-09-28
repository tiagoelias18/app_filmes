import 'package:app_filmes/models/movie_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transparent_image/transparent_image.dart';

class MovieDetailHeader extends StatelessWidget {
  final MovieDetailModel? movie;

  const MovieDetailHeader({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var movieData = movie;
    return movieData != null
        ? SizedBox(
            height: Get.height * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movieData.urlImages.length,
              itemBuilder: (context, index) {
                final image = movieData.urlImages[index];
                return Padding(
                  padding: EdgeInsets.all(2),
                  child: FadeInImage.memoryNetwork(
                    width: 148,
                    height: 184,
                    placeholder: kTransparentImage,
                    image: image,
                    fit: BoxFit.cover,
                    imageErrorBuilder: (context, error, stackTrace) {
                      return Image.asset('assets/images/error.png',
                          fit: BoxFit.fitWidth);
                    },
                  ),
                );
              },
            ),
          )
        : SizedBox.shrink();
  }
}
