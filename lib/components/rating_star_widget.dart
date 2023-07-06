import 'package:flutter/material.dart';

typedef RatingChangeCallback = void Function(double rating);

class RatingStar extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback onRatingChanged;
  final Color? color;

  RatingStar(
      {this.starCount = 5,
      this.rating = .0,
      required this.onRatingChanged,
      this.color});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = const Icon(
        Icons.star_border,
        color: Colors.black26,
      );
    } else if (index > rating - 1 && index < rating) {
      icon = Icon(
        Icons.star_half,
        color: color ?? const Color(0XFFFFBA49),
      );
    } else {
      icon = Icon(
        Icons.star,
        color: color ?? const Color(0XFFFFBA49),
      );
    }
    return InkResponse(
      onTap:
          onRatingChanged == null ? null : () => onRatingChanged(index + 1.0),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        children:
            List.generate(starCount, (index) => buildStar(context, index)));
  }
}
