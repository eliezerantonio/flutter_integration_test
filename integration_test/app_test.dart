import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:integration_test_curso/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('Home Page E2E Test', () {
    testWidgets('Click 5x FAB Incrementar', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      for (int i = 0; i < 5; i++) {
        await tester.tap(find.byIcon(Icons.plus_one));
        await Future.delayed(const Duration(seconds: 5));
      }
      await tester.pumpAndSettle();

      expect(find.text("5"), findsOneWidget);
    });
  });
}
