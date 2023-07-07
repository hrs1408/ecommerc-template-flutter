import 'package:flutter/material.dart';

typedef RatingChangeCallback = void Function(double rating);

class RatingStar extends StatelessWidget {
  final int starCount;
  final double rating;
  final Color? color;
  final RatingChangeCallback? onRatingChanged;

  const RatingStar({super.key,
    this.starCount = 5,
    this.rating = .0,
    this.color,
    this.onRatingChanged});

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
      onTap: () {
        if (onRatingChanged != null) {
          onRatingChanged == null ? null : () => onRatingChanged!(index + 1.0);
        } else {
          null;
        }
      },
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
