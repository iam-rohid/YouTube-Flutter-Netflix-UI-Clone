import 'package:flutter/material.dart';

class CWMovieCard extends StatelessWidget {
  final ImageProvider image;
  const CWMovieCard({
    Key key,
    @required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white10,
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Container(
            width: 110,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: image,
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(.2), BlendMode.darken)),
            ),
            child: Center(
              child: Icon(
                Icons.play_circle_outline,
                size: 74,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            width: 110,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.info_outline),
                Icon(Icons.more_vert),
              ],
            ),
          )
        ],
      ),
    );
  }
}
