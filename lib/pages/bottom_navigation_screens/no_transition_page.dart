import 'package:go_router/go_router.dart';


/// Custom page transition to remove the flicker
class NoTransitionPage<T> extends CustomTransitionPage<T> {
  NoTransitionPage({required super.child})
      : super(
    transitionDuration: Duration.zero,
    reverseTransitionDuration: Duration.zero,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}