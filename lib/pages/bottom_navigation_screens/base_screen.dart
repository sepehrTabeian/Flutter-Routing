import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_bottom_navigation/routing/router.dart';

/// With Flutter Hooks package
class BaseScreen extends HookWidget {
  final Widget child;

  const BaseScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(0);

    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex.value,
        onTap: (index) {
          currentIndex.value = index;
          switch (index) {
            case 0:

              /// When you use `go`, it will replace the current location
              /// with the new location.
              /// When you use `push`, it will push the new location to the stack and
              /// you can use `pop` to go back to previous location.
              ///
              /// Example:
              ///context.go(RoutePath.home.path)
              ///context.push(RoutePath.home.path)
              ///

              context.go(RoutePath.home.path);
              break;
            case 1:
              context.go(RoutePath.tour.path);
              break;
            case 2:
              context.go(RoutePath.settings.path);
              break;
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: RoutePath.home.name,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.tour),
            label: RoutePath.tour.name,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: RoutePath.settings.name,
          ),
        ],
      ),
    );
  }
}

/// Without Flutter Hooks package
//import 'package:flutter/material.dart';
// class BaseScreen extends StatefulWidget {
//   final Widget child;
//   const BaseScreen({super.key, required this.child});
//
//   @override
//   _BaseScreenState createState() => _BaseScreenState();
// }
//
// class _BaseScreenState extends State<BaseScreen> {
//   int _currentIndex = 0;
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//
//     switch (index) {
//       case 0:
//         context.go(RoutePath.home.path);
//         break;
//       case 1:
//         context.go(RoutePath.tour.path);
//         break;
//       case 2:
//         context.go(RoutePath.settings.path);
//         break;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: widget.child,
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: _onItemTapped,
//         items: [
//           BottomNavigationBarItem(
//             icon: const Icon(Icons.home),
//             label: RoutePath.home.name,
//           ),
//           BottomNavigationBarItem(
//             icon: const Icon(Icons.tour),
//             label: RoutePath.tour.name,
//           ),
//           BottomNavigationBarItem(
//             icon: const Icon(Icons.settings),
//             label: RoutePath.settings.name,
//           ),
//         ],
//       ),
//     );
//   }
// }
