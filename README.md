# ABIMS Chat App

ABIMS Chat App is a Flutter mobile application with a support-first home screen and an integrated support chat experience powered by `gtateth_flutter_sdk`.

## Overview

The app currently includes:

- A simple home page that directs users to contact support
- A primary "Speak with Support" call-to-action
- A floating action button that opens an in-app support chat screen

## Features

- **Support-first home screen**
  - Clear help message for users
  - Dedicated button to start support chat
- **Support chat integration**
  - Opens a dedicated support page
  - Loads `GtatethChatWidget` with tenant and customer configuration
- **Widget tests**
  - Verifies key home UI elements render correctly
  - Verifies support chat entry button is visible

## Tech Stack

- Flutter (Material 3)
- Dart
- [`gtateth_flutter_sdk`](https://pub.dev/packages/gtateth_flutter_sdk)
- `flutter_test` for widget testing

## Project Structure

```text
lib/
  main.dart            # App entrypoint, chat home UI, support page
test/
  widget_test.dart     # Widget tests for home screen rendering
```

## Getting Started

### Prerequisites

- Flutter SDK installed
- Dart SDK (bundled with Flutter)
- Android Studio / Xcode (for emulator or physical device runs)

### Add chat SDK package (required)

Make sure the chat SDK is present in `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  gtateth_flutter_sdk: ^0.1.0
```

You can also add it with command line:

```bash
flutter pub add gtateth_flutter_sdk
```

### Install dependencies

```bash
flutter pub get
```

### Run the app

```bash
flutter run
```

### Run tests

```bash
flutter test
```

## Support Chat Configuration

Support chat is configured in `lib/main.dart` inside `SupportPage`:

- `baseUrl`: `https://api.g-tateth.com`
- `tenantDomain`: `g-tateth-solutions`
- `customer`: basic identity fields (`firstName`, `lastName`, `email`)

If you need environment-specific values (dev/staging/prod), consider moving these constants to a dedicated config layer (for example using `--dart-define` values).

## Known Notes

- The home page is intentionally minimal and focused on directing users to support.
- Chat SDK configuration currently lives in `lib/main.dart`.

## Next Improvements

- Move SDK and customer config to environment variables or a config service
- Add authentication and customer profile management
- Add screenshot assets for documentation
- Add analytics for support chat click-through rate
