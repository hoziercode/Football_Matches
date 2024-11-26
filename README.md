# Real-Time Football Match Details App
Overview
The Real-Time Football Match Details App is designed to provide users with live scores, match statistics, player performance data, and detailed team insights. Whether you're a casual fan or a football enthusiast, this app keeps you updated with real-time match events, player stats, team line-ups, and key actions like goals and red cards. With push notifications for key events, you’ll never miss a moment of the match!

## Features
Live Match Scores: Get real-time updates on match scores.
Match Stats: View detailed match statistics such as possession, shots, corners, and more.
Player Performance: Detailed performance metrics for each player, including goals, assists, and other key stats.
Team Insights: Check line-ups, formations, and other essential team data.
Key Events Notifications: Receive push notifications for goals, red cards, and important match events.
Match Timeline: Track live updates on the match timeline (e.g., goals, substitutions, fouls).
## Tech Stack
Flutter: Cross-platform framework for building high-performance mobile apps.
BLoC: State management solution for scalable, maintainable applications.
GoRouter: Declarative routing solution for Flutter.
Flutter ScreenUtil: For responsive UI design to accommodate multiple screen sizes.
Firebase: For real-time data sync and push notifications.
Equatable: For value-based comparison of objects in BLoC.
Google Fonts: To enhance the typography with stylish font choices.
Hydrated BLoC: For persisting BLoC states across app restarts.

## Folder Structure

```plaintext
lib/
├── core/
│   ├── config/
│   │   ├── app_theme.dart
│   │   ├── app_text_styles.dart
│   │   ├── app_colors.dart
│   ├── utils/
│   │   ├── screen_utils.dart
│   │   ├── extensions/
│   │   │   ├── context_extensions.dart
│   │   │   ├── string_extensions.dart
├── features/
│   ├── match/
│   │   ├── data/
│   │   │   ├── models/
│   │   │   ├── repositories/
│   │   ├── presentation/
│   │   │   ├── bloc/
│   │   │   ├── screens/
│   │   │   ├── widgets/
│   │   ├── domain/
│   │   │   ├── usecases/
│   │   │   ├── entities/
├── navigation/
│   ├── app_router.dart
├── main.dart
```

# Core
**config**: Contains global configuration files for app themes, text styles, and colors.
**utils**: Includes utility files such as screen utilities and context extensions.
## Features
**match**: Contains the features related to football matches, including:
**data**: Handles data fetching, models, and repositories.
**presentation**: Includes BLoC, screens, and UI components.
domain: Contains business logic, use cases, and entities.
Navigation
app_router.dart: Manages routing across the app, using the GoRouter package for declarative navigation.
# App Architecture
This app follows clean architecture principles to ensure a maintainable and scalable codebase:

Data Layer: Responsible for fetching match data and player stats (models, repositories).
Domain Layer: Contains the business logic, including use cases and entities that interact with data.
Presentation Layer: Handles UI elements, user interactions, and state management (using BLoC).
Core Layer: Shared components such as theme settings, utilities, and extensions.

# Getting Started
git clone https://github.com/hoziercode/Football_Matches.git

## Install Dependencies
flutter pub get

# Running the App
For Android:
    flutter run --release
For iOS:
    flutter run --release --target lib/main.dart



