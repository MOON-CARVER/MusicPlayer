import 'package:flutter/material.dart';

class ArtWorkImage extends StatelessWidget {
  const ArtWorkImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height * .4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image:
              DecorationImage(fit: BoxFit.cover, image: NetworkImage(image))),
    );
  }
}
