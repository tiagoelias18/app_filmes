import 'package:app_filmes/modules/movies/movies_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoviesHeader extends GetView<MoviesController> {
  const MoviesHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height*0.2,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            width: Get.width,
            child: Image.asset(
              "assets/images/header.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20),
            width: Get.width * 0.9,
            child: TextField(
              onChanged: (value) => controller.filterMoviesByName(value),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                fillColor: Colors.white,
                filled: true,
                labelText: 'Procurar filmes',
                labelStyle: TextStyle(fontSize: 15, color: Colors.grey),
                prefixIcon: Icon(Icons.search), 
                contentPadding: EdgeInsets.zero,
                floatingLabelBehavior: FloatingLabelBehavior.never
              ),
            ),
          )
        ],
      ),
    );
  }
}
