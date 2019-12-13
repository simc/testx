# testx

[![Dart CI](https://github.com/leisim/testx/workflows/Dart%20CI/badge.svg)](https://github.com/leisim/testx/actions) [![Codecov](https://img.shields.io/codecov/c/github/leisim/testx.svg)](https://codecov.io/gh/leisim/testx) [![testx](https://img.shields.io/pub/v/testx?label=testx)](https://pub.dev/packages/flutterx) [![dartx](https://img.shields.io/pub/v/dartx?label=dartx)](https://pub.dev/packages/dartx) 

*If you miss an extension, please open an issue or pull request*

### Resources:
- [Documentation](https://pub.dev/documentation/dartx/latest/testx/testx-library.html)
- [Pub Package](https://pub.dev/packages/testx)
- [GitHub Repository](https://github.com/leisim/testx)

On this page you can find some of the extensions. Take a look at the docs to see all of them.

## Getting started 🎉

Add the following to you `pubspec.yaml` and replace `[version]` with the latest version:

```dart
dev_dependencies:
  testx: ^[version]
```

After you import the library, you can use the extensions.

```dart
import 'package:testx/testx.dart';

test('some test', () {
  'i am a sample'.shouldBeLowerCase(); // ok
  'hello'.shouldHaveLength(10); // error
});
```

## License
```
Copyright 2019 Simon Leier

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```