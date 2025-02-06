# WeatherApp

## My Approach

### 1. **Research & API Selection**

- Explored different weather APIs provided by [OpenWeatherMap](https://openweathermap.org/api).
- Identified the API that allows fetching weather data using a **city name**.
- Created an OpenWeatherMap account and generated an **API key**.
- Tested API responses using **Postman** to verify data format and parameters.

### 2. **Gathering Resources**

- Sourced animated weather icons from [Lottie](https://lottiefiles.com/) for a better UI experience.
- Researched suitable **Flutter packages** to handle API calls, state management, and animations.

### 3. **Project Setup & Development**

- Created a new **Flutter project**.
- Set up a clean project structure with separate folders for UI, services, and models.
- Implemented API integration to fetch and display weather data.
- Integrated Lottie animations for weather conditions.
- Designed a minimal and user-friendly UI.
- Optimized performance and handled errors gracefully.

### 4. **Testing & Deployment**

- Tested the app on both Android and iOS devices/emulators.
- Fixed API-related issues, UI glitches, and ensured smooth performance.
- Prepared the app for release and deployment.

## Features

- **Real-Time Weather Data**: Fetch weather details like temperature, humidity, and wind speed.
- **City Search**: Enter a city name to get instant weather updates.
- **Animated Weather Icons**: Dynamic icons using Lottie animations for a visually appealing interface.
- **User-Friendly Interface**: Simple and intuitive UI for easy navigation.

## Tech Stack

- **Flutter Version**: 3.27.3
- **State Management**: flutter_bloc
- **Networking**: dio, awesome_dio_interceptor
- **Dependency Injection**: get_it
- **Animations**: lottie, flutter_animate
- **Connectivity**: connectivity_plus
- **Utilities**: equatable

## Packages Used

- [awesome_dio_interceptor](https://pub.dev/packages/awesome_dio_interceptor) - Logging and debugging network requests.
- [connectivity_plus](https://pub.dev/packages/connectivity_plus) - Check network connectivity status.
- [dio](https://pub.dev/packages/dio) - HTTP client for making API requests.
- [equatable](https://pub.dev/packages/equatable) - Simplify value comparisons in Dart.
- [flutter_animate](https://pub.dev/packages/flutter_animate) - Animation package for Flutter.
- [flutter_bloc](https://pub.dev/packages/flutter_bloc) - State management using BLoC pattern.
- [get_it](https://pub.dev/packages/get_it) - Dependency injection.
- [lottie](https://pub.dev/packages/lottie) - Use Lottie animations in Flutter.

> **Note**: If the app appears stuck on the splash screen, run it using the following command:
>
> ```bash
> flutter run --no-enable-impeller
> ```
>
> If you are using VS Code, this will not be a problem as the launch configuration already contains this setting.
