import 'package:flutter/material.dart';

class Fondo extends StatelessWidget {
  const Fondo({
    Key? key,
    required this.image,    
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,),
    ),
    );
  }
}
