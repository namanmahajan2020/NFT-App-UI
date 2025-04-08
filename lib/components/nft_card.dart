import 'package:flutter/material.dart';

class NftCard extends StatelessWidget {
  final String imagePath;
  const NftCard({super.key,required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(imagePath, fit: BoxFit.fill);
  }
}
