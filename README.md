# boxicons_flutter

Use [Boxicons](https://boxicons.com/) in Flutter.

## Installation

In the `dependencies:` section of your `pubspec.yaml`, add the following line:

```yaml
  boxicons_flutter: <latest_version>
```

## Usage

```dart
import 'package:boxicons_flutter/boxicons_flutter.dart';

class MyWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return new IconButton(
      // Use the Boxicons class for the IconData
      icon: new Icon(Boxicons.bxBolt),
      onPressed: () { print("Pressed"); }
     );
  }
}
```