
import 'package:go_router/go_router.dart';
import 'package:go_router_bottom_navigation/routing/router.dart';
import 'package:go_router_bottom_navigation/models/tour_model.dart';

import '../pages/tour_detail_item.dart';

GoRoute tourDetailRouting() {
  return GoRoute(
    path: RoutePath.tourDetail.path,
    builder: (context, state) {
      final tour = state.extra! as Tour;
      return   TourDetailItem(tour: tour);
    },
  );
}