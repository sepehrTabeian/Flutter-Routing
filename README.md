

# Go router With BottomNavigation

A brief description of the project.

## Introduction

This project is built using Flutter and utilizes the Go Router library for routing and navigation. The project structure is organized into several directories and files, which are described below.

## Project Layout

Below is the hierarchy and description of the key directories and files in the project:

```plaintext
lib/
├── models/
│   ├── chat_model.dart
│   └── tour_model.dart
├── pages/
│   ├── bottom_navigation_screens/
│   │   ├── base_screen.dart
│   │   ├── home_screen.dart
│   │   ├── no_transition_page.dart
│   │   ├── setting_screen.dart
│   │   ├── tour_list_page.dart
│   │   ├── chat_screen.dart
│   │   ├── login.dart
│   │   └── tour_detail_item.dart
│   └── routing/
│       ├── bottom_navigation_routing.dart
│       ├── chat_routing.dart
│       ├── initial_routing.dart
│       ├── router.dart
│       └── tour_detail_routing.dart
└── main.dart
```

## File Descriptions

### `main.dart`
This is the entry point of the application. It initializes the app by running `MyApp`, which is a `StatelessWidget`. The `MyApp` widget sets up the `MaterialApp` with a custom router configuration defined in `routerConfig`.

### `router.dart`
This file contains the routing configuration for the application using `GoRouter`. It defines the possible routes in the app, including the initial route, home, tour, settings, tour details, and chat screens. The routes are managed by the `GoRouter` object named `routerConfig`.

### `initial_routing.dart`
This file defines the initial route of the application, which is the login screen. The route uses a custom `NoTransitionPage` to avoid flickers during page transitions.

### `chat_routing.dart`
This file defines the route for the chat screen. It retrieves a `Chat` object from the route's state and passes it to the `ChatScreen` widget.

### `tour_detail_routing.dart`
This file handles the routing for the tour detail screen. It retrieves a `Tour` object from the route's state and passes it to the `TourDetailItem` widget for display.

### `bottom_navigation_routing.dart`
This file sets up a `ShellRoute` to manage the bottom navigation bar within the app. It includes routes for home, tour list, and settings screens, each rendered within a `BaseScreen` that serves as a container for the bottom navigation bar.

### `BaseScreen.dart`
This widget acts as the base screen for the app's bottom navigation. Depending on the selected index in the bottom navigation bar, it navigates to the respective screen: home, tour list, or settings. Two versions are provided: one using Flutter Hooks and one using traditional `StatefulWidget`.

### `HomeScreen.dart`
A simple stateless widget that displays the text "Home Screen". It serves as the main screen in the bottom navigation.

### `LoginPage.dart`
This stateful widget provides a login form with fields for a username and password. On successful validation, it displays a message and navigates to the home screen.

### `ChatScreen.dart`
A stateless widget that displays a chat message. It receives a `Chat` object with a name and message and displays them on the screen.

### `TourDetailItem.dart`
This widget is used to display detailed information about a selected tour. It includes a `SliverAppBar` with a background image, title, and scrolling content that shows the tour's price and description.

### `TourListScreen.dart`
A stateless widget that displays a list of tours using a `ListView.builder`. Each list item shows the tour's image, name, and price. Tapping on a tour navigates to the `TourDetailItem` screen, passing the selected tour as an extra.

### `SettingsScreen.dart`
A stateless widget that displays a settings screen with a button that navigates to the chat screen. The button is pre-configured to pass a `Chat` object with specific data.

### `NoTransitionPage.dart`
A custom page transition that removes animations and transitions to prevent flickers. This is used in routing to provide a smooth user experience.

### `Chat.dart`
This is a simple data model class representing a chat message. It has two properties: `name` and `message`, both required.

### `Tour.dart`
This is a data model class representing a tour with four properties: `name`, `description`, `image`, and `price`. It also includes a list of fake tour data used for demonstration purposes.

## Dependencies

This project uses the following dependencies:

* `flutter`
* `flutter_hooks`
* `go_router`

## Getting Started

To get started with the project:

1. Clone the repository to your local machine.
2. Run `flutter pub get` to install dependencies.
3. Launch the app using `flutter run`.
