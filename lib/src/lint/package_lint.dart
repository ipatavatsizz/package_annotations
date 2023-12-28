import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

class PackageLinter extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) => [
        const PackageLintRule(),
      ];
}

class PackageLintRule extends DartLintRule {
  const PackageLintRule() : super(code: _code);

  static const _code =
      LintCode(name: 'disable_annotations', problemMessage: 'Description');

  @override
  void run(CustomLintResolver resolver, ErrorReporter reporter,
      CustomLintContext context) {
    context.registry.addAnnotation((node) {
      reporter.reportErrorForNode(_code, node, []);
    });
  }
}
