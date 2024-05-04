# hamzallc_task

A code challenge task for Hamzallc

---

## Overview

This Flutter application is designed to showcase proficiency in advanced networking and data
handling,
as well as robust database integration and offline support.
The app consists of two main tasks, each focusing on different aspects of mobile development.

### Task 1: Advanced Networking and Data Handling

In this task, the focus is on building a robust network layer for the application, emphasizing error
handling, exception management, and request interception/synchronization.
I utilize Dart as the programming language and Flutter framework. Key features include:

- Implementation of error handling mechanisms to gracefully handle network errors and exceptions.
- Request interception and synchronization for enhanced control over network requests.
- Comprehensive documentation and unit tests to ensure code quality and reliability.
- Bonus features include caching, reactive programming, and authentication/token management for
  additional points.

### Task 2: Robust Database Integration and Offline Support

For this task, located in the `modules/articles` folder,
I develop a mobile app that interacts with the New York Times (NYT) API to display a list of
articles.
The app adopts an offline-first approach, storing articles locally for offline viewing. Key features
include:

- Integration with the NYT API to fetch articles and display them in the app.
- Implementation of offline support to enable users to access stored articles even without an
  internet connection.
- Background synchronization to update locally stored articles when the device is online.
- Conflict resolution mechanism to handle differences between local and remote data.
- User-friendly interface displaying article headlines, summaries, and images, with full article
  access both online and offline.

## Repository Structure

The app is organized into separate modules to address each task efficiently:

### Core Module

- Task 1: Advanced Networking and Data Handling
    - Contains code related to building the network layer, error handling, and request
      synchronization.
    - Documentation and unit tests are provided for thorough evaluation.
    - Offline-first approach with caching and token management

### Articles Module

- Task 2: Robust Database Integration and Offline Support
    - Implements functionalities related to database integration, offline support, and
      synchronization with the NYT API.
    - User interface components for displaying articles and managing offline access are included.

## Testing

- Unit tests are implemented to ensure the functionality and reliability of individual
  components of the application.
- Unit testing helps identify and fix potential issues early in the development process,
  ensuring a robust and stable application.

## Documentation

- The project maintains comprehensive documentation for classes and methods to ensure code
  readability, maintainability, and understanding.
- Each class and method is extensively documented with detailed explanations of their
  functionalities, parameters, return types, and usage.
- The documentation follows a consistent format, making it easier for developers to navigate and
  comprehend the codebase effectively.
- By adhering to best practices in code documentation, the project promotes collaboration,
  reduces bugs, and facilitates future enhancements.

## Getting Started

To set up and evaluate the app, follow these steps:

1. Clone the repository to your local machine.
2. Navigate to the respective task folders within the core and articles modules.
3. Run the Flutter app on an emulator or physical device to explore its features.
4. Review the codebase, documentation, and unit tests to assess the implementation quality.

## API Keys & Security

This project is using [NYT] api for fetching articles data.
API Keys are stored in a .env file for security
To make the app work properly please create a .env file and add the following key with the API key
value that you will get from the [NYT] API
[API_KEY] This is the name inside the .env file that corresponds to the [NYT]

## Working with Translations 🌐

This project relies on [flutter_localizations][flutter_localizations_link] and follows
the [official internationalization guide for Flutter][internationalization_link].

### Adding Strings

1. To add a new localizable string, open the `app_en.arb` file at `lib/l10n/arb/app_en.arb`.

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```

2. Then add a new key/value and description

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    },
    "helloWorld": "Hello World",
    "@helloWorld": {
        "description": "Hello World Text"
    }
}
```

3. Use the new string

```dart
import 'package:movies_app/l10n/l10n.dart';

@override
Widget build(BuildContext context) {
  final l10n = context.l10n;
  return Text(l10n.helloWorld);
}
```

### Adding Supported Locales

Update the `CFBundleLocalizations` array in the `Info.plist` at `ios/Runner/Info.plist` to include
the new locale.

```xml
    ...

<key>CFBundleLocalizations</key>    <array>
<string>en</string>
<string>es</string>
</array>

    ...
```

### Adding Translations

1. For each supported locale, add a new ARB file in `lib/l10n/arb`.

```
├── l10n
│   ├── arb
│   │   ├── app_en.arb
│   │   └── app_es.arb
```

2. Add the translated strings to each `.arb` file:

`app_en.arb`

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```

`app_es.arb`

```arb
{
    "@@locale": "es",
    "counterAppBarTitle": "Contador",
    "@counterAppBarTitle": {
        "description": "Texto mostrado en la AppBar de la página del contador"
    }
}
```

