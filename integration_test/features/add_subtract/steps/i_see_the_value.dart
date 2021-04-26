import 'package:flutter_test/flutter_test.dart';

Future<void> iSeeTheValue(WidgetTester tester) async {
  expect(find.text('0'), findsNothing);
  expect(find.text('1'), findsOneWidget);
}
