
# Converter uz

[![platform](https://img.shields.io/badge/Platform-Dart-02569B?logo=dart)](https://dart.dev)
[![pub package](https://img.shields.io/pub/v/converter_uz.svg)](https://pub.dev/packages/converter_uz)
[![Dart CI](https://github.com/MirrikhSoftware/converter-uz/actions/workflows/test_package.yaml/badge.svg)](https://github.com/MirrikhSoftware/converter-uz/actions/workflows/test_package.yaml)
[![mit lisense](https://img.shields.io/github/license/aagarwal1012/animated-text-kit?color=red)](https://opensource.org/licenses/MIT)
[![version](https://img.shields.io/badge/version-1.0.1-blue)](https://github.com/MirrikhSoftware/converter_uz)
[![contributors](https://img.shields.io/github/contributors/MirrikhSoftware/converter-uz)](https://github.com/MirrikhSoftware/converter-uz/contributors)
[![commits](https://img.shields.io/github/commit-activity/m/MirrikhSoftware/converter-uz)](https://github.com/MirrikhSoftware/converter-uz/pulse)

## Usage

import package

```dart
import 'package:converter_uz/converter_uz.dart';
```

Get instance

```dart
ConverterUz converter = ConverterUz.instance;


void main() {
  ConverterUz converter = ConverterUz.instance;
  print('Ассалому Алайкум!'.convert());
  converter.setConvertType = ConvertType.ltToCr;
  print('Assalomu Alaykum!'.convert());
}

```
