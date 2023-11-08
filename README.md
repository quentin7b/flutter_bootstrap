# flutter_bootstrap_app

A Flutter Bootstrap Project

## Getting Started

This project is a starting point for a Flutter application.
It has built in dependencies pre configured to handle multiple things

## Start using it

1. Git clone this project
2. Run `dart reinit.dart` and follow instructions to configure package name
3. Run `flutter pub get`
4. You're good to go

## Structure & Dependencies

Here is the list of all dependencies that are preconfigures for the project and the architecture of its folders

### Dependencies

- **State Management** by [Riverpod](https://pub.dev/packages/riverpod)
- **Data classes** by [Freezed](https://pub.dev/packages/freezed)
- **Routing** by [GoRouter](https://pub.dev/packages/go_router)
- **Translations** by [Slang](https://pub.dev/packages/slang)
- **Network by** [Dio](https://pub.dev/packages/dio)

In a majority of those dependencies, code generation is used, so your best friend will be `dart run build_runner watch -d` which will run in background during all the dev phase of the project

> At some points, _slang_ should use it to, but it is not working sometimes, so you might need to use _dart run slang_

### Structure

There are two main folders that are pre-structures, [assets](./assets/) and [lib](./lib/)

#### Assets

[**assets**](./assets/) stores some translations, as we are using [**Slang**](https://pub.dev/packages/slang), our translations are stored in JSON files.

By default the app is configures to handle english and thats all, the base translation file is in [assets/i18n/](./assets/i18n/).

To add translations or to know more about translations, please refere to the [official documentation](https://pub.dev/packages/slang)

#### Lib

[**lib**](./lib/) has all our code. It has 5 folders and two files.

Let's start with files.

- [lib/main.dart](./lib/main.dart) is the main file everyone knows, it init the app with the device's locale and init the router with go router
- [lib/router.dart](./lib/router.dart) contains the routes for our screens, it is provided so it can be accessed without any context ! By default, the app will run the [SplashScreen](./lib/views/splash/splash.screen.dart) at startup

And the folders

- [**extensions**](./lib/extensions) contains extensions classes that are usefull. In flutter extensions are a very powerful system that makes it easy to add method to classes without breaking their contracts, so use them as much as you can
- [**gen**](./lib/gen/) contains generated translations from [Slang](https://pub.dev/packages/slang)
- [**models**](./lib/models/) contains data classes, almost all of them are [Freezed](https://pub.dev/packages/freezed) classes (or enums)
- [**providers**](./lib/providers/) contains app wide providers, like current user or theme data, all of them are [Riverpod](https://pub.dev/packages/riverpod) providers.
- [**views**](./lib/views/) contains widgets and screens ! Folders are screens splited elements and widget are atomic elements that can be used anywhere in the app


## Conventions

The app follows certain conventions 

### File naming

File naaming is structued like this : `[snake_case_name].[file_type].dart`.

For example:
- `user.model.dart` contains the user model class
- `current_user.provider.dart` contains the provider for the current user
- `splash.screen.dart` contains the splash screen
- `user_card.widget.dart` contains a UI widget that displays a card with a user
- ...

#### Specifics

For routes that needs to be shown, this file must be named `[X]Route` and expose a static field named `routeName`.

In this way, when you need to add a route in [`lib/router.dart`](./lib/router.dart) you can do this

```dart
GoRoute(
    path: [X]Route.routeName,
    pageBuilder: (context, state) => const MaterialPage(
        child: [X]Route(),
    ),
),
```

### Analysis

By default, the app is configured to follow and ignore some lint rules.

See [analysis_options.yaml](./analysis_options.yaml) for the details