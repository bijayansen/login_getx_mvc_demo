import 'package:flutter_test/flutter_test.dart';
import 'package:login_getx_mvc_demo/src/main_common.dart';

void main() => _testSpecificWidget();

void _testSpecificWidget() {
  testWidgets('Counter increments', (WidgetTester tester) async {
    await tester.pumpWidget(const MainApplication());
  });
}
