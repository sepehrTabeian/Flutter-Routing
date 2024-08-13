import 'package:flutter/material.dart';

import 'package:go_router_bottom_navigation/models/tour_model.dart';


class TourDetailItem extends StatelessWidget {
  final Tour tour;

  const TourDetailItem({super.key, required this.tour});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScrollView(

        slivers: [
          SliverAppBar(
            expandedHeight: 250.0,
            iconTheme: const IconThemeData(color: Colors.white),
            stretch: true,

            stretchTriggerOffset: 40,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.all(8),
              title: Text(tour.name,style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              background: Image.network(
                tour.image,
                fit: BoxFit.cover,
              ),
              stretchModes: const [
                StretchMode.zoomBackground,
                StretchMode.fadeTitle,
                StretchMode.blurBackground,
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [

                  Text(
                    'Price: \$${tour.price}',
                    style: const TextStyle(fontSize: 20, color: Colors.green),
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    tour.description,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
