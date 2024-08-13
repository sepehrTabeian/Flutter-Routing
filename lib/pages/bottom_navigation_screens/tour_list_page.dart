import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_bottom_navigation/routing/router.dart';
import 'package:go_router_bottom_navigation/models/tour_model.dart';


class TourListScreen extends StatelessWidget {
  const TourListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tours'),
      ),
      body: ListView.builder(
        itemCount: fakeTourList.length,
        itemBuilder: (context, index) {
          final tour = fakeTourList[index];
          return ListTile(
            leading: Image.network(tour.image, width: 50, height: 50, fit: BoxFit.cover,),
            title: Text(tour.name),
            subtitle: Text('Price: \$${tour.price}'),
            onTap: () {

              /// Navigate to the tour detail page with Go router
          context.push(RoutePath.tourDetail.path, extra: tour);
            },
          );
        },
      ),
    );
  }
}

