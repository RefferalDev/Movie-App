import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant.dart';
import '../../core/view_model/movie_view_model.dart';
import '../widgets/category.dart' as widget;
import '../widgets/dot_indicator.dart' as widget;
import '../widgets/popular_carousel.dart' as widget;
import '../widgets/upcoming.dart' as widget;
import 'now_play.dart' as widget;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MovieViewModel>(
      init: MovieViewModel(),
      builder: (movie) => SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              widget.Category(),
              widget.NowPlay(),
              widget.DotIndicator(),
              widget.Upcoming(),
              _buildLabel(),
              widget.PopularCarousel(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLabel() {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Popular',
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
          Text(
            'More',
            style: TextStyle(
              color: navbarIconColor,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
