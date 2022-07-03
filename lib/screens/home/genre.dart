import 'package:flutter/material.dart';

class GeneCard extends StatelessWidget {
  final String genre;
  const GeneCard({Key? key, required this.genre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 16),
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(genre),
    );
  }
}
