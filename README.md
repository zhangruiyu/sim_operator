# saver_gallery[]()

[![pub package](https://img.shields.io/pub/v/saver_gallery.svg)](https://pub.dartlang.org/packages/saver_gallery)
[![license](https://img.shields.io/github/license/mashape/apistatus.svg)](https://choosealicense.com/licenses/mit/)

We use the `sim_operator` plugin to getSimOperator and getSimOperatorName

## Usage

To use this plugin, add `sim_operator` as a dependency in your pubspec.yaml file. For example:
```yaml
dependencies:
  sim_operator: ^1.0.0
```

## Example
``` dart
    String? name = await SimOperator().getSimOperatorName();
    if(name?.isNotEmpty == true){
       ///xxxx
    }
```

