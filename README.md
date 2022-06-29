# Reminder

[![reminder][github_workflow_badge]][github_workflow_link]
[![codecov][codecov_badge]][codecov_link]
[![style: flutter_lints][flutter_lints_badge]][flutter_lints_link]
[![License: MIT][license_badge]][license_link]

Generated by the [Very Good CLI][very_good_cli_link] 🤖

My new reminder app

---

## Getting Started 🚀

This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

_\*Reminder works on iOS, Android, and Web._

---

## Running Tests 🧪

To run all unit and widget tests use the following command:

```sh
$ flutter test --coverage --test-randomize-ordering-seed random
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov) or click [this][codecov_link].

```sh
# Generate Coverage Report
$ genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
$ open coverage/index.html
```

---

## Working with Translations 🌐

This project relies on [flutter_localizations][flutter_localizations_link] and follows the [official internationalization guide for Flutter][internationalization_link].

### Adding Strings

1. To add a new localizable string, open the `en_US.arb` file at `assets/lang`.

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
import 'package:reminder/l10n/l10n.dart';

@override
Widget build(BuildContext context) {
  final l10n = context.tr;
  return Text(l10n.helloWorld);
}
```

### Adding Supported Locales

Update the `CFBundleLocalizations` array in the `Info.plist` at `ios/Runner/Info.plist` to include the new locale.

```xml
    ...

    <key>CFBundleLocalizations</key>
	<array>
		<string>en</string>
		<string>id</string>
	</array>

    ...
```

### Adding Translations

1. For each supported locale, add a new ARB file in `assets/lang`.

```
├── assets
│   ├── lang
│   │   ├── en_US.arb
│   │   └── id_ID.arb
```

2. Add the translated strings to each `.arb` file:

`en_US.arb`

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```

`id_ID.arb`

```arb
{
    "@@locale": "id",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text yang muncul pada AppBar pada Counter Page"
    }
}
```

[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli
[codecov_badge]:https://codecov.io/gh/MRAlifR/reminder/branch/master/graph/badge.svg?token=SILIPVGCEJ
[codecov_link]:https://codecov.io/gh/MRAlifR/reminder
[flutter_lints_badge]:https://img.shields.io/badge/style-flutter__lints-blue
[flutter_lints_link]:https://pub.dev/packages/flutter_lints
[github_workflow_badge]:https://github.com/MRAlifR/reminder/actions/workflows/main.yaml/badge.svg?branch=master
[github_workflow_link]:https://github.com/MRAlifR/reminder/actions/workflows/main.yaml