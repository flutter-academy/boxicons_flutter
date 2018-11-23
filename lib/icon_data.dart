library boxicons_flutter;

import 'package:flutter/widgets.dart';

class BoxiconsIconData extends IconData {
  const BoxiconsIconData(int codePoint)
      : super(
          codePoint,
          fontFamily: 'Boxicons',
          fontPackage: 'boxicons_flutter',
        );
}
