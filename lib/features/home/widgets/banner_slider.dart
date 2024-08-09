import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glasses/domain/entities/banner_entity.dart';
import 'package:glasses/features/home/bloc/home_bloc.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final carouselOptions = CarouselOptions(
      height: 200,
      aspectRatio: 16 / 9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: const Duration(seconds: 3),
      autoPlayAnimationDuration: const Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      enlargeFactor: 0.3,
      scrollDirection: Axis.horizontal,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: BlocSelector<HomeBloc, HomeState, List<BannerEntity>>(
        selector: (state) => state.banners,
        builder: (_, banners) {
          return CarouselSlider.builder(
            options: carouselOptions,
            itemCount: 15,
            itemBuilder: (_, int itemIndex, int pageViewIndex) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
