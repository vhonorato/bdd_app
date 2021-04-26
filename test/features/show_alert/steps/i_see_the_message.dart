import 'package:flutter_test/flutter_test.dart';

Future<void> iSeeTheMessage(WidgetTester tester) async {
  expect(find.text('The result of the sum is 1'), findsOneWidget);
}
