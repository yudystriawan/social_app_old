import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyCachedNetworkImage extends CachedNetworkImage {
  MyCachedNetworkImage({
    Key key,
    String imageUrl,
  }) : super(
          key: key,
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          placeholder: (context, url) => const Padding(
            padding: EdgeInsets.all(20.0),
            child: CircularProgressIndicator(),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.broken_image),
        );
}
