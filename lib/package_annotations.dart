library package_annotations;

import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:package_annotations/src/lint/package_lint.dart';

export 'package:package_annotations/src/annotations/annotations.dart';

PluginBase createPlugin() => PackageLinter();
