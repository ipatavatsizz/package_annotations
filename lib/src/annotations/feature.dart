import 'package:package_annotations/src/annotations/since.dart';

class Feature {
  final String name;
  final String? desc;
  final Since? since;

  const Feature(this.name, [this.desc, this.since]);
}
