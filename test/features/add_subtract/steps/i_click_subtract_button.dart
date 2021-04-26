import 'package:bdd_app/home_page.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iClickSubtractButton(WidgetTester tester) async {
  final button = find.byKey(MyHomePage.subtractButtonKey);
  await tester.tap(button);
  await tester.pumpAndSettle();
}
