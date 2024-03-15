import 'package:flutter/material.dart';

class ArtWorkImage extends StatelessWidget {
  const ArtWorkImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 23,right: 23),
      child: Container(
        width: double.maxFinite,
        height: MediaQuery.of(context).size.height * .45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image))),
      ),
    );
  }
}
