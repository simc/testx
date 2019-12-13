library testx;

import 'package:dartx/dartx.dart';

part 'src/format.dart';
part 'src/object_matchers.dart';
part 'src/string_matchers.dart';

void _assert(bool okay, String error) {
  if (!okay) {
    throw '$error\n';
  }
}
