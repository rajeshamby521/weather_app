
# Weather App

## Description

The Weather App is a Flutter application that provides a 5-day weather forecast for the user's current location. It utilizes the OpenWeatherMap API to fetch weather data and displays it in a clean, user-friendly interface. The app supports offline usage by storing the last fetched weather data using `HydratedBloc`.

## Features

- Displays 5-day weather forecast based on current location
- Offline support using `HydratedBloc`
- Clean architecture and state management using BLoC
- Customizable UI components
- Error handling and geolocation services

## Languages & Libraries

- **Language:** Dart
- **Framework:** Flutter
- **State Management:** BLoC (Business Logic Component) with `hydrated_bloc`
- **Network Requests:** `dio`
- **JSON Serialization:** `built_value`
- **Geolocation:** `geolocator`

### Plugins Used

1. **dio**: For making HTTP requests with interceptors for API keys.
2. **bloc**: State management solution.
3. **hydrated_bloc**: A variant of `bloc` that persists state locally.
4. **built_value**: For JSON serialization and deserialization.
5. **geolocator**: To retrieve the user's current location.

## Code Structure

The project is organized into the following directories:

```plaintext
lib/
│
├── core/
│   ├── geolocation_service.dart  # Service to fetch user's location
│   └── constants.dart            # Constants for the app
│
├── data/
│   ├── models/                   # Model classes for deserializing API responses
│   └── repositories/             # Weather repository implementation
│
├── domain/
│   ├── entities/                 # Weather entities representing core data models
│   └── repositories/             # Weather repository interface
│
├── presentation/
│   ├── bloc/                     # BLoC classes for managing state
│   ├── pages/                    # Flutter pages for different screens
│   └── widgets/                  # Reusable UI components
│
└── main.dart                     # Entry point of the application
```

## State Management

The app uses `BLoC` for state management. The key state management components include:

- **WeatherBloc**: Manages the weather data state, including fetching, loading, and error states.
- **HydratedBloc**: Extends `WeatherBloc` to persist state locally, enabling offline support.
- **WeatherEvent**: Defines the events that trigger state changes, such as fetching weather data.
- **WeatherState**: Represents the different states (initial, loading, loaded, error).



## Screenshots

### Home Screen

<img src="https://github.com/user-attachments/assets/4a3317aa-f8db-43f1-aa7d-e977bbd81ec4" width="195" height="422">

## Running the App

### Prerequisites

- Flutter SDK installed
- Dart installed
- A valid API key from [OpenWeatherMap](https://openweathermap.org/api)

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/rajeshamby521/weather_app.git
    ```

2. Navigate to the project directory:

    ```bash
    cd weather_app
    ```

3. Install dependencies:

    ```bash
    flutter pub get
    ```


4. Run the app:

    ```bash
    flutter run
    ```

## Testing

### Unit Tests

The app includes unit tests for core business logic. To run the tests:

```bash
flutter test
```

### Widget Tests

Widget tests are also included to verify the UI components. Run them using:

```bash
flutter test test/widget_tests/weather_widget_test.dart
```
